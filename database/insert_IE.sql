-- Stretch 1: Warszawa-Łódź
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (1, 'TUBING', 'Tubing 1', 'F', 52.114801, 20.468817, 1, NULL, 60, 3, 3),
    (2, 'TUBING', 'Tubing 2', 'F', 51.953348, 19.893389, 1, NULL, 60, 3, 3),
    (3, 'EXIT', 'Emergency Exit', 'F', 51.953348, 19.893389, 1, NULL, NULL, NULL, NULL),
    (4, 'PYLON', 'Pylon 1', 'F', 52.114801, 20.468817, 1, NULL, NULL, 5, NULL),
    (5, 'PYLON', 'Pylon 2', 'F', 51.953348, 19.893389, 1, NULL, NULL, 18, NULL),
    (6, 'SEMAPHORE', 'Semaphore 1', 'F', 52.0335, 19.893389, 1, 'G', NULL, NULL, NULL);

-- Stretch 2: Łódź-Kalisz
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (7, 'TUBING', 'Tubing 1', 'F', 51.697113, 19.036669, 2, NULL, 75, 3, 3),
    (8, 'TUBING', 'Tubing 2', 'F', 51.742347, 18.150891, 2, NULL, 75, 3, 3),
    (9, 'EXIT', 'Emergency Exit', 'F', 51.697113, 19.036669, 2, NULL, NULL, NULL, NULL),
    (10, 'PYLON', 'Pylon 1', 'F', 51.697113, 19.036669, 2, NULL, NULL, 8, NULL),
    (11, 'PYLON', 'Pylon 2', 'F', 51.742347, 18.150891, 2, NULL, NULL, 5, NULL);

-- Stretch 3: Kalisz-Poznań
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (12, 'TUBING', 'Tubing 1', 'F', 51.990046, 17.650704, 3, NULL, 75, 2.5, 2.5),
    (13, 'TUBING', 'Tubing 2', 'O', 52.4002, 16.9032, 3, NULL, 75, 2.5, 2.5),
    (14, 'EXIT', 'Emergency Exit', 'O', 51.990046, 17.650704, 3, NULL, NULL, NULL, NULL),
    (15, 'PYLON', 'Pylon 1', 'O', 51.990046, 17.650704, 3, NULL, NULL, 8, NULL),
    (16, 'PYLON', 'Pylon 2', 'O', 52.4002, 16.9032, 3, NULL, NULL, 5, NULL),
    (17, 'PORT', 'Port 1', 'O', 52.4002, 16.9032, 3, NULL, NULL, NULL, NULL);


-- Stretch 4: Poznań-Gorzów Wielkopolski
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (18, 'TUBING', 'Tubing 1', 'O', 52.4085, 16.9342, 4, NULL, 75, 3, 3),
    (19, 'TUBING', 'Tubing 2', 'O', 52.7357, 15.2411, 4, NULL, 75, 3, 3),
    (20, 'EXIT', 'Emergency Exit', 'O', 52.7357, 15.2411, 4, NULL, NULL, NULL, NULL),
    (21, 'PYLON', 'Pylon 1', 'O', 52.4085, 16.9342, 4, NULL, NULL, 8, NULL),
    (22, 'PYLON', 'Pylon 2', 'O', 52.7357, 15.2411, 4, NULL, NULL, 5, NULL),
    (23, 'PORT', 'Port 1', 'F', 52.7357, 15.2411, 4, NULL, NULL, NULL, NULL);

-- Stretch 5: Gorzów Wielkopolski-Berlin
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (24, 'TUBING', 'Tubing 1', 'F', 52.7357, 15.2411, 5, NULL, 125, 2.5, 2.5),
    (25, 'TUBING', 'Tubing 2', 'F', 52.5166, 13.4077, 5, NULL, 125, 2.5, 2.5),
    (26, 'EXIT', 'Emergency Exit', 'F', 52.5166, 13.4077, 5, NULL, NULL, NULL, NULL),
    (27, 'PYLON', 'Pylon 1', 'F', 52.7357, 15.2411, 5, NULL, NULL, 10, NULL),
    (28, 'PYLON', 'Pylon 2', 'F', 52.5166, 13.4077, 5, NULL, NULL, 8, NULL);


-- Stretch 6: Berlin-Drezno
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (29, 'TUBING', 'Tubing 1', 'F', 52.5166, 13.4077, 6, NULL, 100, 3, 2.5),
    (30, 'TUBING', 'Tubing 2', 'F', 51.0493, 13.7381, 6, NULL, 100, 3, 2.5),
    (31, 'EXIT', 'Emergency Exit', 'F', 51.0493, 13.7381, 6, NULL, NULL, NULL, NULL),
    (32, 'PYLON', 'Pylon 1', 'F', 52.5166, 13.4077, 6, NULL, NULL, 30, NULL),
    (33, 'PYLON', 'Pylon 2', 'F', 51.0493, 13.7381, 6, NULL, NULL, 8, NULL),
    (34, 'SEMAPHORE', 'Semaphore 1', 'F', 51.0493, 13.7381, 6, 'G', NULL, NULL, NULL);


-- Stretch 7: Łódź-Warszawa (return)
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (35, 'TUBING', 'Tubing 1', 'F', 51.7677, 19.459, 7, NULL, 75, 3, 2.5),
    (36, 'TUBING', 'Tubing 2', 'F', 52.114801, 20.468817, 7, NULL, 75, 3, 2.5),
    (37, 'EXIT', 'Emergency Exit', 'F', 52.114801, 20.468817, 7, NULL, NULL, NULL, NULL),
    (38, 'PYLON', 'Pylon 1', 'F', 51.7677, 19.459, 7, NULL, NULL, 8, NULL),
    (39, 'PYLON', 'Pylon 2', 'F', 52.114801, 20.468817, 7, NULL, NULL, 5, NULL);

-- Stretch 8: Kalisz-Łódź (return)
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (40, 'TUBING', 'Tubing 1', 'F', 51.7621, 18.0354, 8, NULL, 75, 3, 3),
    (41, 'TUBING', 'Tubing 2', 'F', 51.7677, 19.459, 8, NULL, 75, 3, 3),
    (42, 'EXIT', 'Emergency Exit', 'F', 51.7677, 19.459, 8, NULL, NULL, NULL, NULL),
    (43, 'PYLON', 'Pylon 1', 'F', 51.7621, 18.0354, 8, NULL, NULL, 8, NULL),
    (44, 'PYLON', 'Pylon 2', 'F', 51.7677, 19.459, 8, NULL, NULL, 5, NULL);


-- Stretch 9: Poznań-Gorzów Wielkopolski (return)
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (45, 'TUBING', 'Tubing 1', 'F', 52.4018, 16.9229, 9, NULL, 75, 3, 2.5),
    (46, 'TUBING', 'Tubing 2', 'F', 52.7357, 15.2411, 9, NULL, 75, 3, 2.5),
    (47, 'EXIT', 'Emergency Exit', 'F', 52.7357, 15.2411, 9, NULL, NULL, NULL, NULL),
    (48, 'PYLON', 'Pylon 1', 'F', 52.4018, 16.9229, 9, NULL, NULL, 8, NULL),
    (49, 'PYLON', 'Pylon 2', 'F', 52.7357, 15.2411, 9, NULL, NULL, 5, NULL);


-- Stretch 10: Gorzów Wielkopolski-Berlin (return)
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (50, 'TUBING', 'Tubing 1', 'F', 52.7357, 15.2411, 10, NULL, 125, 3, 2.5),
    (51, 'TUBING', 'Tubing 2', 'F', 52.5166, 13.4077, 10, NULL, 125, 3, 2.5),
    (52, 'EXIT', 'Emergency Exit', 'F', 52.5166, 13.4077, 10, NULL, NULL, NULL, NULL),
    (53, 'PYLON', 'Pylon 1', 'F', 52.7357, 15.2411, 10, NULL, NULL, 8, NULL),
    (54, 'PYLON', 'Pylon 2', 'F', 52.5166, 13.4077, 10, NULL, NULL, 5, NULL);


-- Stretch 11: Berlin-Drezno (return)
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (55, 'TUBING', 'Tubing 1', 'F', 52.5166, 13.4077, 11, NULL, 100, 10, 10),
    (56, 'TUBING', 'Tubing 2', 'F', 51.0493, 13.7381, 11, NULL, 100, 10, 10),
    (57, 'EXIT', 'Emergency Exit', 'F', 51.0493, 13.7381, 11, NULL, NULL, NULL, NULL),
    (58, 'PYLON', 'Pylon 1', 'F', 52.5166, 13.4077, 11, NULL, NULL, 8, NULL),
    (59, 'PYLON', 'Pylon 2', 'F', 51.0493, 13.7381, 11, NULL, NULL, 5, NULL);


-- Stretch 12: Łódź-Warszawa (return)
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (60, 'TUBING', 'Tubing 1', 'F', 51.7677, 19.459, 12, NULL, 75, 10, 2.5),
    (61, 'TUBING', 'Tubing 2', 'F', 52.114801, 20.468817, 12, NULL, 75, 10, 2.5),
    (62, 'EXIT', 'Emergency Exit', 'F', 52.114801, 20.468817, 12, NULL, NULL, NULL, NULL),
    (63, 'PYLON', 'Pylon 1', 'F', 51.7677, 19.459, 12, NULL, NULL, 8, NULL),
    (64, 'PYLON', 'Pylon 2', 'F', 52.114801, 20.468817, 12, NULL, NULL, 5, NULL);

-- stretch 13: Gdańsk - Grudziądz
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (65, 'TUBING', 'Tubing 1', 'F', 54.3520, 18.6466, 13, NULL, 60, 2.5, 2.5),
    (66, 'TUBING', 'Tubing 2', 'F', 53.4816, 18.7562, 13, NULL, 60, 2.5, 2.5),
    (67, 'EXIT', 'Emergency Exit', 'F', 53.4816, 18.7562, 13, NULL, NULL, NULL, NULL),
    (68, 'PYLON', 'Pylon 1', 'F', 54.3520, 18.6466, 13, NULL, NULL, 5, NULL),
    (69, 'PYLON', 'Pylon 2', 'F', 53.4816, 18.7562, 13, NULL, NULL, 5, NULL);

-- stretch 14: Grudziądz - Toruń
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (70, 'TUBING', 'Tubing 1', 'F', 53.4816, 18.7562, 14, NULL, 32, 2.5, 2.5),
    (71, 'TUBING', 'Tubing 2', 'F', 53.0138, 18.5984, 14, NULL, 32, 2.5, 2.5),
    (72, 'EXIT', 'Emergency Exit', 'F', 53.0138, 18.5984, 14, NULL, NULL, NULL, NULL),
    (73, 'PYLON', 'Pylon 1', 'F', 53.4816, 18.7562, 14, NULL, NULL, 6, NULL),
    (74, 'PYLON', 'Pylon 2', 'F', 53.0138, 18.5984, 14, NULL, NULL, 6, NULL);

-- stretch 15: Toruń-Płock
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (75, 'TUBING', 'Tubing 1', 'F', 53.0138, 18.5984, 15, NULL, 45, 2.5, 2.5),
    (76, 'TUBING', 'Tubing 2', 'F', 52.5561, 18.5459, 15, NULL, 45, 2.5, 2.5),
    (77, 'EXIT', 'Emergency Exit', 'F', 52.5561, 18.5459, 15, NULL, NULL, NULL, NULL),
    (78, 'PYLON', 'Pylon 1', 'F', 53.0138, 18.5984, 15, NULL, NULL, 5, NULL),
    (79, 'PYLON', 'Pylon 2', 'F', 52.5561, 18.5459, 15, NULL, NULL, 5, NULL);

-- stretch 16 Płock-Warszawa
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (80, 'TUBING', 'Tubing 1', 'F', 52.5561, 18.5459, 16, NULL, 60, 2.5, 2.5),
    (81, 'TUBING', 'Tubing 2', 'F', 52.2297, 20.984, 16, NULL, 60, 2.5, 2.5),
    (82, 'EXIT', 'Emergency Exit', 'F', 52.2297, 20.984, 16, NULL, NULL, NULL, NULL),
    (83, 'PYLON', 'Pylon 1', 'F', 52.5561, 18.5459, 16, NULL, NULL, 6, NULL),
    (84, 'PYLON', 'Pylon 2', 'F', 52.2297, 20.984, 16, NULL, NULL, 6, NULL);

-- stretch  17 Warszawa-Radom
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (85, 'TUBING', 'Tubing 1', 'F', 52.2297, 20.984, 17, NULL, 50, 2.5, 2.5),
    (86, 'TUBING', 'Tubing 2', 'F', 51.4028, 21.1471, 17, NULL, 50, 2.5, 2.5),
    (87, 'EXIT', 'Emergency Exit', 'F', 51.4028, 21.1471, 17, NULL, NULL, NULL, NULL),
    (88, 'PYLON', 'Pylon 1', 'F', 52.2297, 20.984, 17, NULL, NULL, 5, NULL),
    (89, 'PYLON', 'Pylon 2', 'F', 51.4028, 21.1471, 17, NULL, NULL, 6, NULL);

-- stretch 18 Radom - Kielce
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (90, 'TUBING', 'Tubing 1', 'F', 51.4028, 21.1471, 18, NULL, 50, 2.5, 2.5),
    (91, 'TUBING', 'Tubing 2', 'F', 50.8643, 20.6275, 18, NULL, 50, 2.5, 2.5),
    (92, 'EXIT', 'Emergency Exit', 'F', 50.8643, 20.6275, 18, NULL, NULL, NULL, NULL),
    (93, 'PYLON', 'Pylon 1', 'F', 51.4028, 21.1471, 18, NULL, NULL, 7, NULL),
    (94, 'PYLON', 'Pylon 2', 'F', 50.8643, 20.6275, 18, NULL, NULL, 6, NULL);

-- stretch 19 Kielce- Kraków
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (95, 'TUBING', 'Tubing 1', 'F', 50.8643, 20.6275, 19, NULL, 75, 2.5, 2.5),
    (96, 'TUBING', 'Tubing 2', 'F', 50.0469, 19.943, 19, NULL, 75, 2.5, 2.5),
    (97, 'EXIT', 'Emergency Exit', 'F', 50.0469, 19.943, 19, NULL, NULL, NULL, NULL),
    (98, 'PYLON', 'Pylon 1', 'F', 50.8643, 20.6275, 19, NULL, NULL, 5, NULL),
    (99, 'PYLON', 'Pylon 2', 'F', 50.0469, 19.943, 19, NULL, NULL, 6, NULL);

-- stretch 20 Kraków-Rzeszów
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (100, 'TUBING', 'Tubing 1', 'F', 50.0469, 19.943, 20, NULL, 90, 2.5, 2.5),
    (101, 'TUBING', 'Tubing 2', 'F', 50.0412, 21.999, 20, NULL, 90, 2.5, 2.5),
    (102, 'EXIT', 'Emergency Exit', 'F', 50.0412, 21.999, 20, NULL, NULL, NULL, NULL),
    (103, 'PYLON', 'Pylon 1', 'F', 50.0469, 19.943, 20, NULL, NULL, 6, NULL),
    (104, 'PYLON', 'Pylon 2', 'F', 50.0412, 21.999, 20, NULL, NULL, 7, NULL),
    (105, 'SEMAPHORE', 'Sem 1', 'F', 50.0412, 21.999, 20, 'G', NULL, NULL, NULL);

-- Stretch 21: Grudziądz to Gdańsk
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (106, 'TUBING', 'Tubing 1', 'F', 53.4816, 18.7562, 21, NULL, 60, 2.5, 2.5),
    (107, 'TUBING', 'Tubing 2', 'F', 54.352, 18.6466, 21, NULL, 60, 2.5, 2.5),
    (108, 'EXIT', 'Emergency Exit', 'F', 54.352, 18.6466, 21, NULL, NULL, NULL, NULL),
    (109, 'PYLON', 'Pylon 1', 'F', 53.4816, 18.7562, 21, NULL, NULL, 8, NULL),
    (110, 'PYLON', 'Pylon 2', 'F', 54.352, 18.6466, 21, NULL, NULL, 7, NULL);

-- Stretch 22: Toruń to Grudziądz
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (111, 'TUBING', 'Tubing 1', 'F', 53.0138, 18.5984, 22, NULL, 50, 2.5, 2.5),
    (112, 'TUBING', 'Tubing 2', 'F', 53.4816, 18.7562, 22, NULL, 50, 2.5, 2.5),
    (113, 'EXIT', 'Emergency Exit', 'F', 53.4816, 18.7562, 22, NULL, NULL, NULL, NULL),
    (114, 'PYLON', 'Pylon 1', 'F', 53.0138, 18.5984, 22, NULL, NULL, 5, NULL),
    (115, 'PYLON', 'Pylon 2', 'F', 53.4816, 18.7562, 22, NULL, NULL, 5, NULL),
    (116, 'PORT', 'Port 1', 'F', 53.4816, 18.7562, 22, NULL, NULL, NULL, NULL);

-- Stretch 23: Płock to Toruń
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (117, 'TUBING', 'Tubing 1', 'F', 52.5468, 19.7065, 23, NULL, 45, 2.5, 2.5),
    (118, 'TUBING', 'Tubing 2', 'F', 53.0138, 18.5984, 23, NULL, 45, 2.5, 2.5),
    (119, 'EXIT', 'Emergency Exit', 'F', 53.0138, 18.5984, 23, NULL, NULL, NULL, NULL),
    (120, 'PYLON', 'Pylon 1', 'F', 52.5468, 19.7065, 23, NULL, NULL, 6, NULL),
    (121, 'PYLON', 'Pylon 2', 'F', 53.0138, 18.5984, 23, NULL, NULL, 7, NULL);

-- Stretch 24: Warszawa to Płock
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (122, 'TUBING', 'Tubing 1', 'F', 52.2297, 21.0122, 24, NULL, 60, 2.5, 2.5),
    (123, 'TUBING', 'Tubing 2', 'F', 52.5468, 19.7065, 24, NULL, 60, 2.5, 2.5),
    (124, 'EXIT', 'Emergency Exit', 'F', 52.5468, 19.7065, 24, NULL, NULL, NULL, NULL),
    (125, 'PYLON', 'Pylon 1', 'F', 52.2297, 21.0122, 24, NULL, NULL, 8, NULL),
    (126, 'PYLON', 'Pylon 2', 'F', 52.5468, 19.7065, 24, NULL, NULL, 9, NULL),
    (127, 'PORT', 'Port 1', 'F', 52.2297, 21.0122, 24, NULL, NULL, NULL, NULL);

-- Stretch 25: Radom to Warszawa
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (128, 'TUBING', 'Tubing 1', 'F', 51.4027, 21.1472, 25, NULL, 50, 2.5, 2.5),
    (129, 'TUBING', 'Tubing 2', 'F', 52.2297, 21.0122, 25, NULL, 50, 2.5, 2.5),
    (130, 'EXIT', 'Emergency Exit', 'F', 52.2297, 21.0122, 25, NULL, NULL, NULL, NULL),
    (131, 'PYLON', 'Pylon 1', 'F', 51.4027, 21.1472, 25, NULL, NULL, 6, NULL),
    (132, 'PYLON', 'Pylon 2', 'F', 52.2297, 21.0122, 25, NULL, NULL, 7, NULL);

-- Stretch 26: Kielce to Radom
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (133, 'TUBING', 'Tubing 1', 'F', 50.8703, 20.6275, 26, NULL, 50, 2.5, 2.5),
    (134, 'TUBING', 'Tubing 2', 'F', 51.4027, 21.1472, 26, NULL, 50, 2.5, 2.5),
    (135, 'EXIT', 'Emergency Exit', 'F', 51.4027, 21.1472, 26, NULL, NULL, NULL, NULL),
    (136, 'PYLON', 'Pylon 1', 'F', 50.8703, 20.6275, 26, NULL, NULL, 5, NULL),
    (137, 'PYLON', 'Pylon 2', 'F', 51.4027, 21.1472, 26, NULL, NULL, 8, NULL);

-- Stretch 27: Kraków to Kielce
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (138, 'TUBING', 'Tubing 1', 'F', 50.0621, 19.9381, 27, NULL, 75, 2.5, 2.5),
    (139, 'TUBING', 'Tubing 2', 'F', 50.8703, 20.6275, 27, NULL, 75, 2.5, 2.5),
    (140, 'EXIT', 'Emergency Exit', 'F', 50.8703, 20.6275, 27, NULL, NULL, NULL, NULL),
    (141, 'PYLON', 'Pylon 1', 'F', 50.0621, 19.9381, 27, NULL, NULL, 9, NULL),
    (142, 'PYLON', 'Pylon 2', 'F', 50.8703, 20.6275, 27, NULL, NULL, 10, NULL),
    (143, 'SEMAPHORE', 'Semaphore 1', 'F', 50.0621, 19.9381, 27, 'G', NULL, NULL, NULL);

-- Stretch 28: Rzeszów to Kraków
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (144, 'TUBING', 'Tubing 1', 'F', 50.0412, 21.9991, 28, NULL, 90, 2.5, 2.5),
    (145, 'TUBING', 'Tubing 2', 'F', 50.0621, 19.9381, 28, NULL, 90, 2.5, 2.5),
    (146, 'EXIT', 'Emergency Exit', 'F', 50.0621, 19.9381, 28, NULL, NULL, NULL, NULL),
    (147, 'PYLON', 'Pylon 1', 'F', 50.0412, 21.9991, 28, NULL, NULL, 5, NULL),
    (148, 'PYLON', 'Pylon 2', 'F', 50.0621, 19.9381, 28, NULL, NULL, 7, NULL);

-- Stretch 29: Rzeszów to Lublin
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (149, 'TUBING', 'Tubing 1', 'F', 50.0412, 21.9993, 29, NULL, 90, 2.5, 2.5),
    (150, 'TUBING', 'Tubing 2', 'F', 51.2494, 22.5702, 29, NULL, 90, 2.5, 2.5),
    (151, 'EXIT', 'Emergency Exit', 'F', 51.2494, 22.5702, 29, NULL, NULL, NULL, NULL),
    (152, 'PYLON', 'Pylon 1', 'F', 50.0412, 21.9993, 29, NULL, NULL, 5, NULL),
    (153, 'PYLON', 'Pylon 2', 'F', 51.2494, 22.5702, 29, NULL, NULL, 5, NULL);

-- Stretch 30: Lublin to Warszawa
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (154, 'TUBING', 'Tubing 1', 'F', 51.2488, 22.5707, 30, NULL, 90, 2.5, 2.5),
    (155, 'TUBING', 'Tubing 2', 'F', 52.2297, 21.0122, 30, NULL, 90, 2.5, 2.5),
    (156, 'EXIT', 'Emergency Exit', 'F', 52.2297, 21.0122, 30, NULL, NULL, NULL, NULL),
    (157, 'PYLON', 'Pylon 1', 'F', 51.2488, 22.5707, 30, NULL, NULL, 5, NULL),
    (158, 'PYLON', 'Pylon 2', 'F', 52.2297, 21.0122, 30, NULL, NULL, 5, NULL);

-- Stretch 31: Lublin to Rzeszów (return)
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (159, 'TUBING', 'Tubing 1', 'F', 52.2297, 21.0122, 31, NULL, 90, 2.5, 2.5),
    (160, 'TUBING', 'Tubing 2', 'F', 50.0412, 21.9993, 31, NULL, 90, 2.5, 2.5),
    (161, 'EXIT', 'Emergency Exit', 'F', 50.0412, 21.9993, 31, NULL, NULL, NULL, NULL),
    (162, 'PYLON', 'Pylon 1', 'F', 52.2297, 21.0122, 31, NULL, NULL, 6, NULL),
    (163, 'PYLON', 'Pylon 2', 'F', 50.0412, 21.9993, 31, NULL, NULL, 5, NULL);

-- Stretch 32: Warszawa to Lublin (return)
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (164, 'TUBING', 'Tubing 1', 'F', 52.2297, 21.0122, 32, NULL, 90, 2.5, 2.5),
    (165, 'TUBING', 'Tubing 2', 'F', 51.2488, 22.5707, 32, NULL, 90, 2.5, 2.5),
    (166, 'EXIT', 'Emergency Exit', 'F', 51.2488, 22.5707, 32, NULL, NULL, NULL, NULL),
    (167, 'PYLON', 'Pylon 1', 'F', 52.2297, 21.0122, 32, NULL, NULL, 7, NULL),
    (168, 'PYLON', 'Pylon 2', 'F', 51.2488, 22.5707, 32, NULL, NULL, 5, NULL);

-- Stretch 33: Szczecin to Gorzów Wielkopolski
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (169, 'TUBING', 'Tubing 1', 'F', 53.4285, 14.5528, 33, NULL, 50, 2.5, 2.5),
    (170, 'TUBING', 'Tubing 2', 'F', 52.7357, 15.2411, 33, NULL, 50, 2.5, 2.5),
    (171, 'EXIT', 'Emergency Exit', 'F', 52.7357, 15.2411, 33, NULL, NULL, NULL, NULL),
    (172, 'PYLON', 'Pylon 1', 'F', 53.4285, 14.5528, 33, NULL, NULL, 5, NULL),
    (173, 'PYLON', 'Pylon 2', 'F', 52.7357, 15.2411, 33, NULL, NULL, 7, NULL),
    (174, 'SEMAPHORE', 'Semaphore 1', 'F', 53.4285, 14.5528, 33, 'R', NULL, NULL, NULL);

-- Stretch 34: Gorzów Wielkopolski to Szczecin
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (175, 'TUBING', 'Tubing 1', 'F', 52.7357, 15.2411, 34, NULL, 50, 2.5, 2.5),
    (176, 'TUBING', 'Tubing 2', 'F', 53.4285, 14.5528, 34, NULL, 50, 2.5, 2.5),
    (177, 'EXIT', 'Emergency Exit', 'F', 53.4285, 14.5528, 34, NULL, NULL, NULL, NULL),
    (178, 'PYLON', 'Pylon 1', 'F', 52.7357, 15.2411, 34, NULL, NULL, 8, NULL),
    (179, 'PYLON', 'Pylon 2', 'F', 53.4285, 14.5528, 34, NULL, NULL, 6, NULL),
    (180, 'PORT', 'Port 1', 'F', 53.4285, 14.5528, 34, NULL, NULL, NULL, NULL);

-- Stretch 35: Kalisz to Wrocław
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (181, 'TUBING', 'Tubing 1', 'F', 51.7602, 18.0910, 35, NULL, 60, 2.5, 2.5),
    (182, 'TUBING', 'Tubing 2', 'F', 51.1079, 17.0385, 35, NULL, 60, 2.5, 2.5),
    (183, 'EXIT', 'Emergency Exit', 'F', 51.1079, 17.0385, 35, NULL, NULL, NULL, NULL),
    (184, 'PYLON', 'Pylon 1', 'F', 51.7602, 18.0910, 35, NULL, NULL, 5, NULL),
    (185, 'PYLON', 'Pylon 2', 'F', 51.1079, 17.0385, 35, NULL, NULL, 5, NULL),
    (186, 'SEMAPHORE', 'Semaphore 1', 'F', 51.7602, 18.0910, 35, 'G', NULL, NULL, NULL),
    (187, 'PORT', 'Port 1', 'F', 51.1079, 17.0385, 35, NULL, NULL, NULL, NULL);

-- Stretch 36: Wrocław to Praga
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (188, 'TUBING', 'Tubing 1', 'F', 51.1079, 17.0385, 36, NULL, 165, 2.5, 2.5),
    (189, 'TUBING', 'Tubing 2', 'F', 50.0755, 14.4378, 36, NULL, 165, 2.5, 2.5),
    (190, 'EXIT', 'Emergency Exit', 'F', 50.0755, 14.4378, 36, NULL, NULL, NULL, NULL),
    (191, 'PYLON', 'Pylon 1', 'F', 51.1079, 17.0385, 36, NULL, NULL, 6, NULL),
    (192, 'PYLON', 'Pylon 2', 'F', 50.0755, 14.4378, 36, NULL, NULL, 5, NULL),
    (193, 'SEMAPHORE', 'Semaphore 1', 'F', 51.1079, 17.0385, 36, 'G', NULL, NULL, NULL),
    (194, 'PORT', 'Port 1', 'F', 50.0755, 14.4378, 36, NULL, NULL, NULL, NULL);

-- Stretch 37: Wrocław to Kalisz (return)
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (195, 'TUBING', 'Tubing 1', 'F', 51.1079, 17.0385, 37, NULL, 60, 2.5, 2.5),
    (196, 'TUBING', 'Tubing 2', 'F', 51.7602, 18.0910, 37, NULL, 60, 2.5, 2.5),
    (197, 'EXIT', 'Emergency Exit', 'F', 51.7602, 18.0910, 37, NULL, NULL, NULL, NULL),
    (198, 'PYLON', 'Pylon 1', 'F', 51.1079, 17.0385, 37, NULL, NULL, 5, NULL),
    (199, 'PYLON', 'Pylon 2', 'F', 51.7602, 18.0910, 37, NULL, NULL, 5, NULL),
    (200, 'PORT', 'Port 1', 'F', 51.7602, 18.0910, 37, NULL, NULL, NULL, NULL);

-- Stretch 38: Praga to Wrocław (return)
INSERT INTO `INFRASTRUCTURE_ELEMENT` (`ELEMENT_ID`, `SELECTOR`, `NAME`, `STATUS`, `LATITUDE`, `LONGITUDE`, `STRETCH_FK`, `SIGNAL`, `LENGTH`, `HEIGHT`, `WIDTH`)
VALUES
    (201, 'TUBING', 'Tubing 1', 'F', 50.0755, 14.4378, 38, NULL, 165, 2.5, 2.5),
    (202, 'TUBING', 'Tubing 2', 'F', 51.1079, 17.0385, 38, NULL, 165, 2.5, 2.5),
    (203, 'EXIT', 'Emergency Exit', 'F', 51.1079, 17.0385, 38, NULL, NULL, NULL, NULL),
    (204, 'PYLON', 'Pylon 1', 'F', 50.0755, 14.4378, 38, NULL, NULL, 5, NULL),
    (205, 'PYLON', 'Pylon 2', 'F', 51.1079, 17.0385, 38, NULL, NULL, 5, NULL),
    (206, 'PORT', 'Port 1', 'F', 51.1079, 17.0385, 38, NULL, NULL, NULL, NULL);

-- 10 malfunctions in 2023 that are already solved
INSERT INTO `MALFUNCTION` (`ELEMENT_FK`, `MALFUNCTION_DATE`, `STATUS`, `REPAIR_DATE`)
VALUES
    (3, '2023-01-15 08:30:00', 'F', '2023-01-20 14:00:00'),
    (4, '2023-02-05 10:15:00', 'F', '2023-02-10 09:30:00'),
    (5, '2023-03-12 14:45:00', 'F', '2023-03-18 16:20:00'),
    (6, '2023-04-20 07:25:00', 'F', '2023-04-25 12:00:00'),
    (7, '2023-05-11 09:00:00', 'F', '2023-05-16 11:45:00'),
    (8, '2023-06-03 13:35:00', 'F', '2023-06-08 15:50:00'),
    (9, '2023-07-22 06:50:00', 'F', '2023-07-27 08:40:00'),
    (10, '2023-08-19 11:10:00', 'F', '2023-08-24 14:30:00'),
    (11, '2023-09-10 12:55:00', 'F', '2023-09-15 17:00:00'),
    (12, '2023-10-28 15:20:00', 'F', '2023-11-02 19:05:00');

-- 10 recent malfunctions in 2024 that are not yet solved
INSERT INTO `MALFUNCTION` (`ELEMENT_FK`, `MALFUNCTION_DATE`, `STATUS`, `REPAIR_DATE`)
VALUES
    (13, '2024-05-01 08:30:00', 'O', NULL),
    (14, '2024-05-03 10:15:00', 'O', NULL),
    (15, '2024-05-05 14:45:00', 'O', NULL),
    (16, '2024-05-07 07:25:00', 'O', NULL),
    (17, '2024-05-09 09:00:00', 'O', NULL),
    (18, '2024-05-11 13:35:00', 'O', NULL),
    (19, '2024-05-13 06:50:00', 'O', NULL),
    (20, '2024-05-15 11:10:00', 'O', NULL),
    (21, '2024-05-17 12:55:00', 'O', NULL),
    (22, '2024-05-19 15:20:00', 'O', NULL);

