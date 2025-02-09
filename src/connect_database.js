const mysql = require('mysql2');

function connect() {
    const db = mysql.createConnection({
        host: 'sql.freedb.tech',
        port: 3306,
        user: 'freedb_project',
        password: 'k659$?YCTBfCSUn',
        database: 'freedb_Hyperloop'
    });

    db.connect((err) => {
        if (err) console.error('Error connecting to MySQL database:', err);
        // else console.log('Connected to MySQL database');
    });
    return db;
}

function getAllRoutes(callback) {
    const db = connect();

    const query = 'SELECT r.*,\
                   CalculateRouteLength(r.ROUTE_ID) AS TOTAL_LENGTH,\
                   CalculateRouteTime(r.ROUTE_ID) AS TOTAL_TIME,\
                   IsFunctional(r.ROUTE_ID) AS IS_FUNCTIONAL\
                   FROM ROUTE AS r';

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error retrieving data from routes table:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }

        db.end();
    });
}

function getFilteredRoutes(minLength, maxLength, minTime, maxTime, ieSelectors, callback) {
    const db = connect();

    let query = 'SELECT r.*,\
                 CalculateRouteLength(r.ROUTE_ID) AS TOTAL_LENGTH,\
                 CalculateRouteTime(r.ROUTE_ID) AS TOTAL_TIME,\
                 IsFunctional(r.ROUTE_ID) AS IS_FUNCTIONAL\
                 FROM ROUTE AS r\
                 WHERE 1 ';

    const filters = []
    if (minLength !=="") {
        query = query.concat("AND CalculateRouteLength(r.ROUTE_ID) >= ? ");
        filters.push(parseInt(minLength, 10)) }
    if (maxLength !=="") {
        query = query.concat("AND CalculateRouteLength(r.ROUTE_ID) <= ? ");
        filters.push(parseInt(maxLength, 10)) }
    if (minTime !=="") {
        query = query.concat("AND CalculateRouteTime(r.ROUTE_ID) >= ? ");
        filters.push(parseInt(minTime, 10)) }
    if (maxTime !=="") {
        query = query.concat("AND CalculateRouteTime(r.ROUTE_ID) <= ? ");
        filters.push(parseInt(maxTime, 10)) }
    if (ieSelectors.length > 0) {
        query = query.concat("AND EXISTS(SELECT * FROM RouteIE rie WHERE rie.ROUTE_ID = r.ROUTE_ID AND rie.SELECTOR IN (?) AND rie.STATUS = 'O')");
        filters.push(ieSelectors) }

    db.query(query, filters, (err, results) => {
        if (err) {
            console.error('Error retrieving data from routes table:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }

        db.end();
    });
}

function getAllMalfunctions(callback) {
    const db = connect();

    const query = 'SELECT m.MALFUNCTION_ID AS mid, s.STRETCH_ID AS sid, ie.ELEMENT_ID AS eid,\
                   m.MALFUNCTION_DATE AS mdate, m.STATUS AS s, m.REPAIR_DATE AS rdate\
                   FROM MALFUNCTION m\
                   JOIN INFRASTRUCTURE_ELEMENT ie ON m.ELEMENT_FK = ie.ELEMENT_ID\
                   JOIN STRETCH s ON s.STRETCH_ID = ie.STRETCH_FK\
                   ORDER BY m.MALFUNCTION_DATE ASC';

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error retrieving data from malfunction, stretch, or infrastructure element table:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }

        db.end();
    });
}

function getMalfunctionsByRoute(callback){
    const db = connect();

    const query = "SELECT ROUTE_ID, NAME, COUNT(ELEMENT_ID) AS countedErrors\
                   FROM RouteIE\
                   WHERE STATUS = 'O'\
                   GROUP BY ROUTE_ID";

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error retrieving data from malfunction table or fetching malfunctioning routes:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }

        db.end();
    });
}

function getAllStretches(callback) {
    const db = connect();
    const query = `SELECT s.STRETCH_ID, s.LENGTH, s.MAX_SPEED, st1.NAME AS START_STATION, st2.NAME AS END_STATION
                   FROM STRETCH s
                   JOIN STATION st1 ON s.START_STATION_FK = st1.STATION_ID
                   JOIN STATION st2 ON s.END_STATION_FK = st2.STATION_ID`;

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error retrieving data from stretches table:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }

        db.end();
    });
}

function getCapsules(callback) {
    const db = connect();
    const query = `SELECT * FROM CAPSULE`;
    db.query(query, (err, results) => {
        if (err) {
            console.error('Error retrieving data from db:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }
        db.end();
    });
}



function addRoute(name, stretches, callback) {
    const db = connect();
    const query = 'CALL AddRoute(?,?)';
    db.query(query, [name, stretches], (err, results) => {
        if (err) {
            // console.error('Error adding route:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }

        db.end();
    });
}

function deleteRoute(routeId, callback) {
    const db = connect();
    const query = 'CALL DeleteRoute(?)';
    db.query(query, [routeId], (err, results) => {
        if (err) {
            callback(err, null);
        } else if (results.affectedRows == 0) {
            callback(new Error('Route does not exist'), null);
        } else {
            callback(null, results);
        }

        db.end();
    });
}


function assignCapsule(routeId, capsuleId, callback) {
    const db = connect();
    const query = 'CALL AssignCapsuleToRoute(?, ?)';
    db.query(query, [routeId, capsuleId], (err, results) => {
        if (err) {
            // console.error('Error assigning capsule:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }

        db.end();
    });
}

function unassignCapsule(routeId, capsuleId, callback) {
    const db = connect();
    const query = 'CALL UnassignCapsuleFromRoute(?, ?)';
    db.query(query, [routeId, capsuleId], (err, results) => {
        if (err) {
            // console.error('Error unassigning capsule:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }

        db.end();
    });
}

function updateInfrastructure(elementId, newState, callback) {
    const validStates = ['F', 'O'];
    if (!validStates.includes(newState)) {
        return callback(new Error('Invalid state'), null);
    }
    const db = connect();
    const query = 'CALL UpdateInfrastructureState(?, ?)';
    db.query(query, [elementId, newState], (err, results) => {
        if (err) {
            callback(err, null);
        } else if (results.affectedRows == 0) {
            callback(new Error('ElementID not found, try again'), null);
        } else {
            callback(null, results);
        }
        db.end();
    });
}


function getStretchElements(stretchId, callback) {
    const db = connect();

    const query = 'SELECT ELEMENT_ID, NAME, SELECTOR, STATUS\
                   FROM INFRASTRUCTURE_ELEMENT\
                   WHERE STRETCH_FK = ?';

    db.query(query, stretchId, (err, results) => {
        if (err) {
            console.error('Error changing status:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }
        db.end();
    });
}

function getRouteStations(routeId, callback) {
    const db = connect();
    const query = 'SELECT DISTINCT s.STATION_ID, s.NAME FROM STATION s\
    JOIN STRETCH st ON s.STATION_ID = st.START_STATION_FK OR s.STATION_ID = st.END_STATION_FK\
    JOIN ROUTE_STRETCH rs ON st.STRETCH_ID = rs.STRETCH_ID\
    WHERE rs.ROUTE_ID = ?';
    db.query(query, [routeId], (err, results) => {
        if (err) {
            console.error('Error selecting route:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }

        db.end();
    });
}

function getRouteCapsules(routeId, callback) {
    const db = connect();
    const query = 'SELECT c.CAPSULE_ID, c.NAME FROM CAPSULE c\
    JOIN ROUTE_CAPSULE rc ON c.CAPSULE_ID = rc.CAPSULE_ID WHERE rc.ROUTE_ID = ?';
    db.query(query, [routeId], (err, results) => {
        if (err) {
            console.error('Error selecting route:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }

        db.end();
    });
}


module.exports = {
    connect,
    getAllRoutes,
    getFilteredRoutes,
    getAllStretches,
    getCapsules,
    addRoute,
    getAllMalfunctions,
    getMalfunctionsByRoute,
    deleteRoute,
    assignCapsule,
    updateInfrastructure,
    getStretchElements,
    unassignCapsule,
    getRouteStations,
    getRouteCapsules
};
