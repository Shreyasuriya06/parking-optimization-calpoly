
-- Insert into parking_lots
INSERT INTO parking_lots (lot_name, location_description, capacity, zone_type) VALUES
('Lot H2', 'North Campus near Dorms', 80, 'Student'),
('Lot G3', 'Central Campus near Library', 120, 'Mixed'),
('Lot A1', 'South Campus near Gym', 60, 'Faculty'),
('Lot B5', 'East Campus Commuter Area', 100, 'Student'),
('Lot F4', 'West Campus Overflow', 200, 'Student');

-- Insert into student_profiles
INSERT INTO student_profiles (major, class_year, parking_permit_type, home_zip_code) VALUES
('Computer Science', 'Sophomore', 'Resident', '93405'),
('Biology', 'Senior', 'Commuter', '93401'),
('Business Administration', 'Junior', 'Commuter', '93410'),
('Mechanical Engineering', 'Freshman', 'Resident', '93407'),
('Architecture', 'Senior', 'Commuter', '93401'),
('Psychology', 'Junior', 'Resident', '93405'),
('Environmental Science', 'Sophomore', 'Commuter', '93402');

-- Insert into lot_occupancy_logs (Monday 8AM)
INSERT INTO lot_occupancy_logs (lot_id, timestamp, occupied_spots, entrances, exits, day_of_week) VALUES
(1, '2025-04-07 08:00:00', 74, 12, 2, 'Monday'),
(2, '2025-04-07 08:00:00', 115, 20, 5, 'Monday'),
(3, '2025-04-07 08:00:00', 40, 6, 3, 'Monday'),
(4, '2025-04-07 08:00:00', 88, 15, 7, 'Monday'),
(5, '2025-04-07 08:00:00', 75, 10, 3, 'Monday');

-- Monday 3 PM
INSERT INTO lot_occupancy_logs (lot_id, timestamp, occupied_spots, entrances, exits, day_of_week) VALUES
(1, '2025-04-07 15:00:00', 45, 4, 10, 'Monday'),
(2, '2025-04-07 15:00:00', 60, 5, 15, 'Monday'),
(3, '2025-04-07 15:00:00', 20, 2, 5, 'Monday'),
(4, '2025-04-07 15:00:00', 55, 3, 6, 'Monday'),
(5, '2025-04-07 15:00:00', 30, 2, 5, 'Monday');

-- Tuesday 9 AM
INSERT INTO lot_occupancy_logs (lot_id, timestamp, occupied_spots, entrances, exits, day_of_week) VALUES
(1, '2025-04-08 09:00:00', 78, 9, 1, 'Tuesday'),
(2, '2025-04-08 09:00:00', 118, 14, 2, 'Tuesday'),
(3, '2025-04-08 09:00:00', 50, 7, 3, 'Tuesday'),
(4, '2025-04-08 09:00:00', 95, 10, 4, 'Tuesday'),
(5, '2025-04-08 09:00:00', 105, 11, 2, 'Tuesday');

-- Wednesday 1 PM
INSERT INTO lot_occupancy_logs (lot_id, timestamp, occupied_spots, entrances, exits, day_of_week) VALUES
(1, '2025-04-09 13:00:00', 38, 5, 7, 'Wednesday'),
(2, '2025-04-09 13:00:00', 62, 6, 10, 'Wednesday'),
(3, '2025-04-09 13:00:00', 28, 2, 4, 'Wednesday'),
(4, '2025-04-09 13:00:00', 47, 4, 8, 'Wednesday'),
(5, '2025-04-09 13:00:00', 40, 3, 5, 'Wednesday');

-- Friday 4 PM
INSERT INTO lot_occupancy_logs (lot_id, timestamp, occupied_spots, entrances, exits, day_of_week) VALUES
(1, '2025-04-11 16:00:00', 25, 1, 20, 'Friday'),
(2, '2025-04-11 16:00:00', 40, 3, 18, 'Friday'),
(3, '2025-04-11 16:00:00', 15, 1, 10, 'Friday'),
(4, '2025-04-11 16:00:00', 35, 2, 12, 'Friday'),
(5, '2025-04-11 16:00:00', 22, 2, 11, 'Friday');

-- Insert into vehicle_tracking
INSERT INTO vehicle_tracking (student_id, lot_id, entry_time, exit_time, search_time_minutes) VALUES
(1, 1, '2025-04-07 07:58:00', '2025-04-07 09:00:00', 6),
(2, 2, '2025-04-07 08:05:00', '2025-04-07 09:15:00', 11),
(3, 4, '2025-04-07 08:10:00', '2025-04-07 08:55:00', 9),
(4, 1, '2025-04-07 08:00:00', '2025-04-07 09:00:00', 3),
(5, 2, '2025-04-07 08:12:00', '2025-04-07 09:30:00', 8),
(6, 5, '2025-04-07 08:20:00', '2025-04-07 09:10:00', 4),
(7, 5, '2025-04-07 08:22:00', '2025-04-07 09:00:00', 5),
(2, 2, '2025-04-08 08:55:00', '2025-04-08 10:00:00', 10),
(3, 4, '2025-04-08 09:00:00', '2025-04-08 10:15:00', 8),
(5, 1, '2025-04-08 09:02:00', '2025-04-08 10:00:00', 6),
(1, 3, '2025-04-09 13:10:00', '2025-04-09 14:00:00', 3),
(6, 2, '2025-04-09 13:05:00', '2025-04-09 14:00:00', 5),
(4, 1, '2025-04-11 15:55:00', '2025-04-11 16:40:00', 2),
(7, 5, '2025-04-11 16:10:00', '2025-04-11 17:00:00', 3);
