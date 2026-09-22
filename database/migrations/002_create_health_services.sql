CREATE TABLE health_services (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    name VARCHAR(150) NOT NULL,
    description TEXT NULL,

    duration_minutes INT UNSIGNED NOT NULL DEFAULT 30,

    status ENUM(
        'active',
        'inactive'
    ) NOT NULL DEFAULT 'active',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);