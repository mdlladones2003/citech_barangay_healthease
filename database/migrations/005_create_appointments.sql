CREATE TABLE appointments (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    reference_number VARCHAR(50) NOT NULL UNIQUE,

    user_id BIGINT UNSIGNED NOT NULL,
    schedule_id BIGINT UNSIGNED NOT NULL,

    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,

    reason TEXT NULL,

    status ENUM(
        'pending',
        'confirmed',
        'completed',
        'cancelled',
        'no_show'
    ) NOT NULL DEFAULT 'pending',

    notes TEXT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_appointments_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_appointments_schedule
        FOREIGN KEY (schedule_id)
        REFERENCES schedules(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    INDEX idx_appointments_user (user_id),
    INDEX idx_appointments_schedule (schedule_id),
    INDEX idx_appointments_date (appointment_date),
    INDEX idx_appointments_status (status)
);