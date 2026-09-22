CREATE TABLE schedules (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    health_worker_id BIGINT UNSIGNED NOT NULL,
    health_service_id BIGINT UNSIGNED NOT NULL,

    schedule_date DATE NOT NULL,

    start_time TIME NOT NULL,
    end_time TIME NOT NULL,

    slot_limit INT UNSIGNED NOT NULL DEFAULT 10,

    status ENUM(
        'available',
        'closed',
        'cancelled'
    ) NOT NULL DEFAULT 'available',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_schedules_worker
        FOREIGN KEY (health_worker_id)
        REFERENCES health_workers(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_schedules_service
        FOREIGN KEY (health_service_id)
        REFERENCES health_services(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    INDEX idx_schedule_date (schedule_date),
    INDEX idx_schedule_worker (health_worker_id),
    INDEX idx_schedule_service (health_service_id)
);