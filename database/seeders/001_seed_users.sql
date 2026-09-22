INSERT INTO users (
    first_name,
    last_name,
    email,
    password,
    phone,
    role,
    status
) VALUES
(
    'System',
    'Administrator',
    'admin@barangay.test',
    '$2y$10$REPLACE_WITH_PASSWORD_HASH',
    '09170000001',
    'admin',
    'active'
),
(
    'Maria',
    'Santos',
    'maria.santos@barangay.test',
    '$2y$10$REPLACE_WITH_PASSWORD_HASH',
    '09170000002',
    'health_worker',
    'active'
),
(
    'Juan',
    'Dela Cruz',
    'juan.delacruz@barangay.test',
    '$2y$10$REPLACE_WITH_PASSWORD_HASH',
    '09170000003',
    'resident',
    'active'
);