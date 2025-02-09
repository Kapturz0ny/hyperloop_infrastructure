DELIMITER //

-- Add route - build route from stretches
CREATE PROCEDURE IF NOT EXISTS AddRoute(IN name_route VARCHAR(20), IN ids_stretch VARCHAR(255))
BEGIN
    DECLARE id_route INT;
    DECLARE id_stretch INT;
    DECLARE order_stretch INT DEFAULT 1;
    DECLARE idx INT DEFAULT 1;
    DECLARE stretch_count INT;

    INSERT INTO ROUTE (ROUTE_ID, NAME) VALUES (id_route, name_route);
    SET id_route = LAST_INSERT_ID();

    SET stretch_count = LENGTH(ids_stretch) - LENGTH(REPLACE(ids_stretch, ',', '')) + 1;
    WHILE idx <= stretch_count DO
        SET id_stretch = CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(ids_stretch, ',', idx), ',', -1) AS UNSIGNED);

        INSERT INTO ROUTE_STRETCH (ROUTE_ID, STRETCH_ID, `ORDER`) VALUES (id_route, id_stretch, order_stretch);

        SET order_stretch = order_stretch + 1;
        SET idx = idx + 1;
    END WHILE;
END //

-- Delete route
CREATE PROCEDURE DeleteRoute(IN routeId INT)
BEGIN
    DELETE FROM ROUTE WHERE ROUTE_ID = routeId;
END //

-- Assign capsule to route
CREATE PROCEDURE AssignCapsuleToRoute(
    IN p_route_id INT,
    IN p_capsule_id INT)
BEGIN
    IF EXISTS(SELECT ROUTE_ID FROM ROUTE WHERE ROUTE_ID = p_route_id)
    AND EXISTS(SELECT CAPSULE_ID FROM CAPSULE WHERE CAPSULE_ID = p_capsule_id)
    AND NOT EXISTS(SELECT ROUTE_ID, CAPSULE_ID FROM ROUTE_CAPSULE WHERE ROUTE_ID = p_route_id AND CAPSULE_ID = p_capsule_id)
    THEN
        INSERT INTO ROUTE_CAPSULE (ROUTE_ID, CAPSULE_ID) VALUES (p_route_id, p_capsule_id);
    END IF;
END //

CREATE PROCEDURE UnassignCapsuleFromRoute(
    IN p_route_id INT,
    IN p_capsule_id INT
)
BEGIN
    DELETE FROM ROUTE_CAPSULE WHERE ROUTE_ID = p_route_id AND CAPSULE_ID = p_capsule_id;
END //


--update infrastructure element state
CREATE PROCEDURE UpdateInfrastructureState(IN elementId INT, IN newState VARCHAR(1))
BEGIN
    UPDATE INFRASTRUCTURE_ELEMENT
    SET STATUS = newState
    WHERE ELEMENT_ID = elementId;
END //

DELIMITER ;