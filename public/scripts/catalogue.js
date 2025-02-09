function displayRouteDetails(routeId, routeName) {
    Promise.all([
        fetch(`/route-stations/${routeId}`).then(response => response.json()),
        fetch(`/route-capsules/${routeId}`).then(response => response.json())
    ]).then(([stations, capsules]) => {
        const detailsPanel = document.querySelector('#details-panel');
        detailsPanel.innerHTML = '';

        const routeTitle = document.createElement('h3');
        routeTitle.textContent = `Route Details: ${routeName}`;
        detailsPanel.appendChild(routeTitle);

        // Create and append stations title
        const stationsTitle = document.createElement('h3');
        stationsTitle.textContent = 'Stations in order:';
        detailsPanel.appendChild(stationsTitle);

        // Create and append stations list
        const stationsList = document.createElement('div');
        stationsList.classList.add('inline-list');
        stations.forEach((station, index) => {
            const stationText = document.createElement('span');
            stationText.textContent = `${index + 1}. ID: ${station.STATION_ID}, Name: ${station.NAME}`;
            stationsList.appendChild(stationText);
        });
        detailsPanel.appendChild(stationsList);

        // Create and append capsules title
        const capsulesTitle = document.createElement('h3');
        capsulesTitle.textContent = 'Assigned Capsules:';
        detailsPanel.appendChild(capsulesTitle);

        // Create and append capsules list
        const capsulesList = document.createElement('div');
        capsulesList.classList.add('inline-list');
        capsules.forEach((capsule) => {
            const capsuleText = document.createElement('span');
            capsuleText.textContent = `ID: ${capsule.CAPSULE_ID}, Name: ${capsule.NAME}`;
            capsulesList.appendChild(capsuleText);
        });
        detailsPanel.appendChild(capsulesList);

    })
    .catch(error => {
        console.error('Error fetching/displaying route details:', error);
    });
}


function displayRoutes(routes) {
    const routeCatalogue = document.getElementById("route-catalogue");
    routeCatalogue.innerHTML = '';

    if (routes.length != 0) {
        routes.forEach(route => {
            const routeElement = document.createElement('li');
            routeElement.classList.add('route-info');
            const routeStatus = route.IS_FUNCTIONAL ? 'Functional' : 'Out-Of-Order';

            routeElement.innerHTML = `
                <span>${route.ROUTE_ID} | ${route.NAME}</span>
                <span>Length [km] | ${route.TOTAL_LENGTH}<br>Time   [min] | ${route.TOTAL_TIME}</span>
                <span id="route-status-${route.ROUTE_ID}" class="${routeStatus}">${routeStatus}</span>
            `;

            routeElement.addEventListener('click', function() {
                document.querySelectorAll('.route-info').forEach(element => {
                    element.style.color = '';
                });
                routeElement.style.color = 'red';
                document.querySelectorAll('.route-info.selected').forEach(element => {
                    element.classList.remove('selected');
                });
                routeElement.classList.add('selected');
                displayRouteDetails(route.ROUTE_ID, route.NAME);
            });

            routeCatalogue.appendChild(routeElement);
        })
    };
}

function fetchAndDisplayFilteredRoutes() {
    const minLength = document.getElementById("minLength").value;
    const maxLength = document.getElementById("maxLength").value;
    const minTime = document.getElementById("minTime").value;
    const maxTime = document.getElementById("maxTime").value;
    let ieSelectors = [];
    document.querySelectorAll("form input[type=checkbox]").forEach(function(checkbox) {
        if (checkbox.checked == true) {ieSelectors.push(checkbox.id)}
    })
    fetch('/routes-filtered', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ minLength, maxLength, minTime, maxTime, ieSelectors })
        })
    .then(response => response.json())
    .then(routes => { displayRoutes(routes); })
    .catch(error => { console.error('Error fetching/displaying routes:', error); });
}

function fetchAndDisplayRoutes() {
    fetch('/routes')
        .then(response => response.json())
        .then(routes => { displayRoutes(routes); })
        .catch(error => { console.error('Error fetching/displaying routes:', error); });
}

document.getElementById('filters-form').addEventListener('submit', function(e) {
    e.preventDefault();
    fetchAndDisplayFilteredRoutes();
});

document.getElementById('clear-button').addEventListener('click', function(e) {
    e.preventDefault();
    document.querySelectorAll("form input[type=number]").forEach(function(input) { input.value = "" });
    document.querySelectorAll("form input[type=checkbox]").forEach(function(checkbox) { checkbox.checked = false });
    fetchAndDisplayRoutes();
});

fetchAndDisplayRoutes();
