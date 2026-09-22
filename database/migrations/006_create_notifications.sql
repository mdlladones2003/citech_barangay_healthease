CREATE TABLE notifications (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    user_id BIGINT UNSIGNED NOT NULL,

    appointment_id BIGINT UNSIGNED NULL,

    title VARCHAR(150) NOT NULL,
    message TEXT NOT NULL,

    is_read BOOLEAN NOT NULL DEFAULT FALSE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_notifications_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_notifications_appointment
        FOREIGN KEY (appointment_id)
        REFERENCES appointments(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    INDEX idx_notifications_user (user_id),
    INDEX idx_notifications_read (is_read)
);