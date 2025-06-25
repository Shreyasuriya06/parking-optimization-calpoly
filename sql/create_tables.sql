-- Table for parking lots
CREATE TABLE parking_lots (
    lot_id SERIAL PRIMARY KEY,
    lot_name VARCHAR(100),
    location_description TEXT,
    capacity INT,
    zone_type VARCHAR(50)
);

-- Table for occupancy logs
CREATE TABLE lot_occupancy_logs (
    log_id SERIAL PRIMARY KEY,
    lot_id INT REFERENCES parking_lots(lot_id),
    timestamp TIMESTAMP,
    occupied_spots INT,
    entrances INT,
    exits INT,
    day_of_week VARCHAR(10)
);

-- Table for student profiles
CREATE TABLE student_profiles (
    student_id SERIAL PRIMARY KEY,
    major VARCHAR(100),
    class_year VARCHAR(10),
    parking_permit_type VARCHAR(50),
    home_zip_code VARCHAR(10)
);

-- Table for vehicle tracking
CREATE TABLE vehicle_tracking (
    track_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES student_profiles(student_id),
    lot_id INT REFERENCES parking_lots(lot_id),
    entry_time TIMESTAMP,
    exit_time TIMESTAMP,
    search_time_minutes INT
);
