function displayMalfunctions(malfunctions){
    const malfunctionCatalogue = document.getElementById("malfunctions-by-month");
    malfunctionCatalogue.innerHTML = '';

    malfunctions.forEach(malfunction => {
        const malfunctionElement = document.createElement('li');
        malfunctionElement.classList.add('malfunction');
        const isMalfunctionOngoing = !(malfunction.rdate);
        const malfunctionStatus = isMalfunctionOngoing ? "Ongoing" : "Fixed";

        malfunctionElement.innerHTML = '<div class="czemuniedziala"></div>';

        if (isMalfunctionOngoing){
            malfunctionElement.innerHTML = `
                <div class="malfunction-info">
                    <span>${malfunction.mid} | On Infrastructure Element ${malfunction.eid} | On Stretch ${malfunction.sid}</span>
                    <span>Current Status : ${malfunctionStatus}</span><br>
                    <span>Date Detected : ${malfunction.mdate}</span>
                </div>
            `;
        }else{
            malfunctionElement.innerHTML = `
                <div class="malfunction-info">
                    <span>${malfunction.mid} | On Infrastructure Element ${malfunction.eid} | On Stretch ${malfunction.sid}</span>
                    <span>Current Status : ${malfunctionStatus}</span><br>
                    <span>Date Detected : ${malfunction.mdate}<br>Date Fixed : ${malfunction.rdate}</span>
                </div>
            `;
        }

        malfunctionCatalogue.appendChild(malfunctionElement);
    });
}

function displayRoutesWithMalfunctions(malfunctioningRoutes){
    const routeCatalogue = document.getElementById("malfunctions-by-route");
    routeCatalogue.innerHTML = '';

    malfunctioningRoutes.forEach(route => {
        const routeElement = document.createElement('li');
        routeElement.classList.add('route');
        routeElement.innerHTML = `
                <div class="route-info">
                    <span>${route.ROUTE_ID} | ${route.NAME}</span>
                    <span>Detected Malfunctions : ${route.countedErrors}</span>
                </div>
            `;
        routeCatalogue.appendChild(routeElement)
    });
}

function filterMalfunctions(malfunctions, startDate, endDate, status) {
    const start = startDate ? new Date(startDate) : null;
    const end = endDate ? new Date(endDate) : null;

    return malfunctions.filter(malfunction => {
        const malfunctionDate = new Date(malfunction.mdate);
        const isWithinDateRange = (!start || malfunctionDate >= start) && (!end || malfunctionDate <= end);
        const isStatusMatch = (status === "all") ||
                              (status === "ongoing" && !malfunction.rdate) ||
                              (status === "finished" && malfunction.rdate);

        return isWithinDateRange && isStatusMatch;
    });
}

function fetchAndDisplayMalfunctions(startDate, endDate, status) {
    Promise.all([
        fetch('/malfunctions').then(response => response.json()),
        fetch('/malfunctions-by-routes').then(response => response.json())
    ]).then(([malfunctions, malfunctioningRoutes]) => {
        console.log('Fetched malfunctions:', malfunctions);
        console.log('Fetched malfunctioning routes:', malfunctioningRoutes);

        const filteredMalfunctions = filterMalfunctions(malfunctions, startDate, endDate, status);
        console.log('Filtered malfunctions:', filteredMalfunctions);

        displayMalfunctions(filteredMalfunctions);
        displayRoutesWithMalfunctions(malfunctioningRoutes);
    }).catch(error => {
        console.error('Error fetching/displaying malfunctions:', error);
    });
}

document.getElementById('filter-button').addEventListener('click', (event) => {
    event.preventDefault();
    const startDate = document.getElementById('start-date').value;
    const endDate = document.getElementById('end-date').value;
    const status = document.getElementById('status-filter').value;

    console.log('Filter parameters - Start Date:', startDate, 'End Date:', endDate, 'Status:', status);

    fetchAndDisplayMalfunctions(startDate, endDate, status);
});


document.getElementById('filters-form').addEventListener('reset', function(e) {
    fetchAndDisplayMalfunctions(null, null, "all");
});

fetchAndDisplayMalfunctions(null, null, "all");

