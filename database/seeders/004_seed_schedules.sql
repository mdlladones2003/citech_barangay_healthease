INSERT INTO schedules (
    health_worker_id,
    health_service_id,
    schedule_date,
    start_time,
    end_time,
    slot_limit,
    status
) VALUES

-- General Consultation
(
    1,
    1,
    '2026-09-21',
    '08:00:00',
    '12:00:00',
    10,
    'available'
),

-- Blood Pressure Check
(
    1,
    2,
    '2026-09-21',
    '13:00:00',
    '15:00:00',
    8,
    'available'
),

-- Immunization
(
    1,
    3,
    '2026-09-22',
    '08:00:00',
    '12:00:00',
    10,
    'available'
),

-- Maternal and Child Health
(
    1,
    4,
    '2026-09-23',
    '08:00:00',
    '12:00:00',
    10,
    'available'
),

-- Health Counseling
(
    1,
    5,
    '2026-09-24',
    '13:00:00',
    '16:00:00',
    6,
    'available'
);