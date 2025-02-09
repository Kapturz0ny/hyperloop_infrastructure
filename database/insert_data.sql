INSERT INTO `COUNTRY` (`COUNTRY_ID`, `NAME`) VALUES
    (1, 'Poland'),
    (2, 'Germany'),
    (3, 'Czechia');

INSERT INTO `ADDRESS` (`ADDRESS_ID`, `ADDRESS`, `CITY`, `POSTCODE`, `COUNTRY_FK`)
VALUES
    (1, 'Address in Warszawa', 'Warszawa', '00-001', 1), -- Poland
    (2, 'Address in Łódź', 'Łódź', '90-001', 1), -- Poland
    (3, 'Address in Wrocław', 'Wrocław', '50-001', 1), -- Poland
    (4, 'Address in Praga', 'Praga', '100 00', 3), -- Czechia
    (5, 'Address in Kalisz', 'Kalisz', '62-800', 1), -- Poland
    (6, 'Address in Poznań', 'Poznań', '61-001', 1), -- Poland
    (7, 'Address in Gorzów Wielkopolski', 'Gorzów Wielkopolski', '66-400', 1), -- Poland
    (8, 'Address in Berlin', 'Berlin', '10115', 2), -- Germany
    (9, 'Address in Drezno', 'Drezno', '01067', 2), -- Germany
    (10, 'Address in Gdańsk', 'Gdańsk', '80-001', 1), -- Poland
    (11, 'Address in Grudziądz', 'Grudziądz', '86-300', 1), -- Poland
    (12, 'Address in Toruń', 'Toruń', '87-100', 1), -- Poland
    (13, 'Address in Płock', 'Płock', '09-401', 1), -- Poland
    (14, 'Address in Radom', 'Radom', '26-600', 1), -- Poland
    (15, 'Address in Kielce', 'Kielce', '25-001', 1), -- Poland
    (16, 'Address in Kraków', 'Kraków', '30-001', 1), -- Poland
    (17, 'Address in Szczecin', 'Szczecin', '70-001', 1), -- Poland
    (18, 'Address in Lublin', 'Lublin', '20-001', 1), -- Poland
    (19, 'Address in Rzeszów', 'Rzeszów', '35-001', 1); -- Poland

INSERT INTO `STATION` (`STATION_ID`, `NAME`, `ADDRESS_ID`)
VALUES
    (1, 'Warszawa', 1), -- Warszawa
    (2, 'Łódź', 2), -- Łódź
    (3, 'Wrocław', 3), -- Wrocław
    (4, 'Praga', 4), -- Praga
    (5, 'Kalisz', 5), -- Kalisz
    (6, 'Poznań', 6), -- Poznań
    (7, 'Gorzów Wielkopolski', 7), -- Gorzów Wielkopolski
    (8, 'Berlin', 8), -- Berlin
    (9, 'Drezno', 9), -- Drezno
    (10, 'Gdańsk', 10), -- Gdańsk
    (11, 'Grudziądz', 11), -- Grudziądz
    (12, 'Toruń', 12), -- Toruń
    (13, 'Płock', 13), -- Płock
    (14, 'Radom', 14), -- Radom
    (15, 'Kielce', 15), -- Kielce
    (16, 'Kraków', 16), -- Kraków
    (17, 'Szczecin', 17), -- Szczecin
    (18, 'Lublin', 18), -- Lublin
    (19, 'Rzeszów', 19); -- Rzeszów


INSERT INTO `ROUTE` (`NAME`) VALUES
    ('Mewa'),
    ('Orzeł'),
    ('Smok');

INSERT INTO `CAPSULE` (`CAPSULE_ID`, `NAME`, `TYPE`) VALUES
    (1, 'Galaxy', 'passenger'),
    (2, 'Voyager', 'passenger'),
    (3, 'Comet', 'passenger'),
    (4, 'Starliner', 'passenger'),
    (5, 'Titan', 'transport'),
    (6, 'Hercules', 'transport'),
    (7, 'Apollo', 'transport');

-- Route-Capsule Mapping
INSERT INTO `ROUTE_CAPSULE` (`ROUTE_ID`, `CAPSULE_ID`)
VALUES
    (1, 3),  -- Route 1 (Mewa) assigned to Comet
    (2, 4),  -- Route 2 (Orzeł) assigned to Starliner
    (3, 7);  -- Route 3 (Smok) assigned to Apollo


INSERT INTO `PLATFORM` (`PLATFORM_ID`, `NUMBER`, `AVAILABILITY`, `LENGTH`, `STATION_FK`)
VALUES
    (1, 1, 'Y', 200, 1),   -- Station in Warszawa - Platform 1
    (2, 2, 'Y', 200, 1),   -- Station in Warszawa - Platform 2
    (3, 1, 'Y', 200, 2),   -- Station in Łódź - Platform 1
    (4, 2, 'Y', 200, 2),   -- Station in Łódź - Platform 2
    (5, 1, 'N', 200, 3),   -- Station in Wrocław
    (6, 1, 'N', 200, 4),   -- Station in Praga
    (7, 1, 'Y', 200, 5),   -- Station in Kalisz - Platform 1
    (8, 2, 'Y', 200, 5),   -- Station in Kalisz - Platform 2
    (9, 1, 'Y', 200, 6),   -- Station in Poznań - Platform 1
    (10, 2, 'Y', 200, 6),  -- Station in Poznań - Platform 2
    (11, 1, 'N', 200, 7),  -- Station in Gorzów Wielkopolski
    (12, 1, 'Y', 200, 8),  -- Station in Berlin - Platform 1
    (13, 2, 'Y', 200, 8),  -- Station in Berlin - Platform 2
    (14, 1, 'N', 200, 9),  -- Station in Drezno
    (15, 1, 'N', 200, 10), -- Station in Gdańsk
    (16, 1, 'N', 200, 11), -- Station in Grudziądz
    (17, 1, 'N', 200, 12), -- Station in Toruń
    (18, 1, 'N', 200, 13), -- Station in Płock
    (19, 1, 'N', 200, 14), -- Station in Radom
    (20, 1, 'N', 200, 15), -- Station in Kielce
    (21, 1, 'Y', 200, 16), -- Station in Kraków - Platform 1
    (22, 2, 'Y', 200, 16), -- Station in Kraków - Platform 2
    (23, 1, 'N', 200, 17), -- Station in Szczecin
    (24, 1, 'N', 200, 18), -- Station in Lublin
    (25, 1, 'N', 200, 19); -- Station in Rzeszów

-- Route 1: Warszawa-Łódź-Kalisz-Poznań-Gorzów Wielkopolski-Berlin-Drezno
INSERT INTO `STRETCH` (`STRETCH_ID`, `LENGTH`, `MAX_SPEED`, `START_STATION_FK`, `END_STATION_FK`)
VALUES
    (1, 120, 500, 1, 2),    -- Warszawa to Łódź
    (2, 150, 500, 2, 5),    -- Łódź to Kalisz
    (3, 150, 500, 5, 6),    -- Kalisz to Poznań
    (4, 150, 500, 6, 7),    -- Poznań to Gorzów Wielkopolski
    (5, 250, 600, 7, 8),    -- Gorzów Wielkopolski to Berlin
    (6, 200, 500, 8, 9),    -- Berlin to Drezno
    (7, 120, 500, 2, 1),    -- Łódź to Warszawa (return)
    (8, 150, 500, 5, 2),    -- Kalisz to Łódź (return)
    (9, 150, 500, 6, 5),    -- Poznań to Kalisz (return)
    (10, 150, 500, 7, 6),   -- Gorzów Wielkopolski to Poznań (return)
    (11, 250, 600, 8, 7),   -- Berlin to Gorzów Wielkopolski (return)
    (12, 200, 500, 9, 8);   -- Drezno to Berlin (return)

-- Route 2: Gdańsk-Grudziądz-Toruń-Płock-Warszawa-Radom-Kielce-Kraków-Rzeszów
INSERT INTO `STRETCH` (`STRETCH_ID`, `LENGTH`, `MAX_SPEED`, `START_STATION_FK`, `END_STATION_FK`)
VALUES
    (13, 120, 500, 10, 11),   -- Gdańsk to Grudziądz
    (14, 64, 500, 11, 12),    -- Grudziądz to Toruń
    (15, 90, 500, 12, 13),    -- Toruń to Płock
    (16, 120, 500, 13, 1),    -- Płock to Warszawa
    (17, 100, 500, 1, 14),    -- Warszawa to Radom
    (18, 100, 500, 14, 15),   -- Radom to Kielce
    (19, 150, 600, 15, 16),   -- Kielce to Kraków
    (20, 180, 600, 16, 19),   -- Kraków to Rzeszów
    (21, 120, 500, 11, 10),   -- Grudziądz to Gdańsk (return)
    (22, 64, 500, 12, 11),    -- Toruń to Grudziądz (return)
    (23, 90, 500, 13, 12),    -- Płock to Toruń (return)
    (24, 120, 500, 1, 13),    -- Warszawa to Płock (return)
    (25, 100, 500, 14, 1),    -- Radom to Warszawa (return)
    (26, 100, 500, 15, 14),   -- Kielce to Radom (return)
    (27, 150, 600, 16, 15),   -- Kraków to Kielce (return)
    (28, 180, 600, 19, 16);   -- Rzeszów to Kraków (return)

-- Route 3: Rzeszów-Lublin-Warszawa
INSERT INTO `STRETCH` (`STRETCH_ID`, `LENGTH`, `MAX_SPEED`, `START_STATION_FK`, `END_STATION_FK`)
VALUES
    (29, 180, 500, 19, 18),   -- Rzeszów to Lublin
    (30, 180, 500, 18, 1),    -- Lublin to Warszawa
    (31, 180, 500, 18, 19),   -- Lublin to Rzeszów (return)
    (32, 180, 500, 1, 18);    -- Warszawa to Lublin (return)

-- Route 4: Szczecin-Gorzów Wielkopolski-Poznań
INSERT INTO `STRETCH` (`STRETCH_ID`, `LENGTH`, `MAX_SPEED`, `START_STATION_FK`, `END_STATION_FK`)
VALUES
    (33, 100, 500, 17, 7),    -- Szczecin to Gorzów Wielkopolski
    (34, 100, 500, 7, 17);    -- Gorzów Wielkopolski to Szczecin

-- Route 5: Kalisz-Wrocław-Praga
INSERT INTO `STRETCH` (`STRETCH_ID`, `LENGTH`, `MAX_SPEED`, `START_STATION_FK`, `END_STATION_FK`)
VALUES
    (35, 120, 500, 5, 3),     -- Kalisz to Wrocław
    (36, 330, 500, 3, 4),     -- Wrocław to Praga
    (37, 120, 500, 3, 5),     -- Wrocław to Kalisz (return)
    (38, 330, 500, 4, 3);     -- Praga to Wrocław (return)

-- Route 1: Mewa
INSERT INTO `ROUTE_STRETCH` (`ROUTE_ID`, `STRETCH_ID`, `ORDER`)
VALUES
    (1, 1, 1),     -- Warszawa to Łódź
    (1, 2, 2),     -- Łódź to Kalisz
    (1, 3, 3),     -- Kalisz to Poznań
    (1, 4, 4),     -- Poznań to Gorzów Wielkopolski
    (1, 5, 5),     -- Gorzów Wielkopolski to Berlin
    (1, 6, 6);     -- Berlin to Drezno

-- Route 2: Orzeł
INSERT INTO `ROUTE_STRETCH` (`ROUTE_ID`, `STRETCH_ID`, `ORDER`)
VALUES
    (2, 13, 1),    -- Gdańsk to Grudziądz
    (2, 14, 2),    -- Grudziądz to Toruń
    (2, 15, 3),    -- Toruń to Płock
    (2, 16, 4),    -- Płock to Warszawa
    (2, 17, 5),    -- Warszawa to Radom
    (2, 18, 6),    -- Radom to Kielce
    (2, 19, 7),    -- Kielce to Kraków
    (2, 20, 8);    -- Kraków to Rzeszów

-- Route 3: Smok
INSERT INTO `ROUTE_STRETCH` (`ROUTE_ID`, `STRETCH_ID`, `ORDER`)
VALUES
    (3, 29, 1),    -- Rzeszów to Lublin
    (3, 30, 2);    -- Lublin to Warszawa


-- Assigning services to stations
INSERT INTO `SERVICE` (`SERVICE_ID`, `SELECTOR`, `NAME`, `STATION_FK`, `MENU`, `RATING`, `PLACES_AVAILABLE`, `PARKING_FEE`, `TYPE`, `SURFACE`)
VALUES
    (1, 'RESTAURANT', 'Station Restaurant', 1, 'Station Menu', 4.0, NULL, NULL, NULL, NULL),          -- Warsaw Station Restaurant
    (2, 'MALL', 'Station Mall', 1, NULL, NULL, NULL, NULL, 'Mall', 3000),                             -- Warsaw Station Mall
    (3, 'PARKING', 'Warszawa Parking', 1, NULL, NULL, 150, 12.00, NULL, NULL),                         -- Warsaw Parking
    (4, 'RESTAURANT', 'Łódź Lounge', 2, 'Lounge Menu', 4.2, NULL, NULL, NULL, NULL),                   -- Łódź lounge
    (5, 'MALL', 'Łódź Plaza', 2, NULL, NULL, NULL, NULL, 'Mall', 2500),                                -- Łódź Plaza
    (6, 'PARKING', 'Łódź Parking', 2, NULL, NULL, 120, 10.00, NULL, NULL),                             -- Łódź Parking
    (7, 'RESTAURANT', 'Wrocław Bistro', 3, 'Bistro Menu', 4.3, NULL, NULL, NULL, NULL),                 -- Wrocław Bistro
    (8, 'MALL', 'Wrocław Plaza', 3, NULL, NULL, NULL, NULL, 'Mall', 2000),                             -- Wrocław Plaza
    (9, 'PARKING', 'Wrocław Parking', 3, NULL, NULL, 100, 8.50, NULL, NULL),                           -- Wrocław Parking
    (10, 'RESTAURANT', 'Praga Cafe', 4, 'Cafe Menu', 4.4, NULL, NULL, NULL, NULL),                        -- Praga Cafe
    (11, 'MALL', 'Praga Center', 4, NULL, NULL, NULL, NULL, 'Mall', 1500),                              -- Praga Center
    (12, 'PARKING', 'Praga Parking', 4, NULL, NULL, 80, 7.50, NULL, NULL),                               -- Praga Parking
    (13, 'RESTAURANT', 'Kalisz Kitchen', 5, 'Kitchen Menu', 4.2, NULL, NULL, NULL, NULL),                 -- Kalisz Kitchen
    (14, 'MALL', 'Kalisz Mall', 5, NULL, NULL, NULL, NULL, 'Mall', 1800),                                -- Kalisz Mall
    (15, 'PARKING', 'Kalisz Parking', 5, NULL, NULL, 100, 9.00, NULL, NULL),                             -- Kalisz Parking
    (16, 'RESTAURANT', 'Poznań Patio', 6, 'Patio Menu', 4.1, NULL, NULL, NULL, NULL),                     -- Poznań Patio
    (17, 'MALL', 'Poznań Plaza', 6, NULL, NULL, NULL, NULL, 'Mall', 2500),                               -- Poznań Plaza
    (18, 'PARKING', 'Poznań Parking', 6, NULL, NULL, 120, 10.00, NULL, NULL),                            -- Poznań Parking
    (19, 'RESTAURANT', 'Gorzów Wielkopolski Grill', 7, 'Grill Menu', 4.3, NULL, NULL, NULL, NULL),        -- Gorzów Wielkopolski Grill
    (20, 'MALL', 'Gorzów Wielkopolski Mall', 7, NULL, NULL, NULL, NULL, 'Mall', 1800),                  -- Gorzów Wielkopolski Mall
    (21, 'PARKING', 'Gorzów Wielkopolski Parking', 7, NULL, NULL, 100, 9.00, NULL, NULL),              -- Gorzów Wielkopolski Parking
    (22, 'RESTAURANT', 'Berlin Brasserie', 8, 'Brasserie Menu', 4.4, NULL, NULL, NULL, NULL),             -- Berlin Brasserie
    (23, 'MALL', 'Berlin Center', 8, NULL, NULL, NULL, NULL, 'Mall', 3500),                              -- Berlin Center
    (24, 'PARKING', 'Berlin Parking', 8, NULL, NULL, 150, 12.75, NULL, NULL),                            -- Berlin Parking
    (25, 'RESTAURANT', 'Drezno Diner', 9, 'Diner Menu', 4.0, NULL, NULL, NULL, NULL),                     -- Drezno Diner
    (26, 'MALL', 'Drezno Mall', 9, NULL, NULL, NULL, NULL, 'Mall', 2000),                                 -- Drezno Mall
    (27, 'PARKING', 'Drezno Parking', 9, NULL, NULL, 120, 11.25, NULL, NULL);                             -- Drezno Parking
