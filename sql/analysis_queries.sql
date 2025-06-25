\pset format aligned
\pset pager off
\echo '--- Running Analysis Queries ---'

-- ============================================
-- 1. Average Search Time Per Lot
-- This query calculates the average number of minutes it takes to find parking in each lot.
-- It helps identify which lots are most frustrating or time-consuming for students.
-- ============================================

\echo '1. Average Search Time Per Lot'
SELECT
    pl.lot_name,
    ROUND(AVG(vt.search_time_minutes), 2) AS avg_search_time
FROM vehicle_tracking vt
JOIN parking_lots pl ON vt.lot_id = pl.lot_id
GROUP BY pl.lot_name
ORDER BY avg_search_time DESC;

-- ============================================
-- 2. Peak Occupancy Per Lot
-- This query finds the highest number of occupied spots ever recorded in each parking lot.
-- It helps identify lots that frequently reach or exceed capacity.
-- ============================================

\echo '2. Peak Occupancy Per Lot'
SELECT
    pl.lot_name,
    MAX(lol.occupied_spots) AS peak_occupancy
FROM lot_occupancy_logs lol
JOIN parking_lots pl ON lol.lot_id = pl.lot_id
GROUP BY pl.lot_name
ORDER BY peak_occupancy DESC;

-- ============================================
-- 3. Underutilized Lots (Average Occupancy < 50%)
-- This query identifies lots that are underused on average, meaning they're less than 50% full.
-- These are good candidates for traffic redirection or better signage.
-- ============================================

\echo '3. Underutilized Lots (Average Occupancy < 50%)'
SELECT
    pl.lot_name,
    ROUND(AVG(lol.occupied_spots)::numeric, 2) AS avg_occupancy,
    pl.capacity,
    ROUND((AVG(lol.occupied_spots) / pl.capacity) * 100, 1) AS percent_used
FROM lot_occupancy_logs lol
JOIN parking_lots pl ON lol.lot_id = pl.lot_id
GROUP BY pl.lot_name, pl.capacity
HAVING AVG(lol.occupied_spots) < pl.capacity * 0.5
ORDER BY percent_used ASC;

-- ============================================
-- 4. Average Search Time by Parking Permit Type
-- This query shows how long students with different parking permits (e.g. Commuter, Resident) search for parking.
-- It helps evaluate fairness and may support permit policy changes.
-- ============================================

\echo '4. Average Search Time by Parking Permit Type'
SELECT
    sp.parking_permit_type,
    ROUND(AVG(vt.search_time_minutes), 2) AS avg_search_time
FROM vehicle_tracking vt
JOIN student_profiles sp ON vt.student_id = sp.student_id
GROUP BY sp.parking_permit_type
ORDER BY avg_search_time DESC;

-- ============================================
-- 5. Busiest Day of the Week by Lot Entrances
-- This query totals all car entrances by day of the week.
-- It helps transportation teams plan enforcement and messaging.
-- ============================================

\echo '5. Busiest Day of the Week by Lot Entrances'
SELECT
    day_of_week,
    SUM(entrances) AS total_entrances
FROM lot_occupancy_logs
GROUP BY day_of_week
ORDER BY total_entrances DESC;
