CREATE SCHEMA IF NOT EXISTS NEWSLETTER_SCHEMA;

CREATE TABLE IF NOT EXISTS NEWSLETTER_SCHEMA.subscribers (
    subscriber_id UUID PRIMARY KEY,
    email VARCHAR(255),
    name VARCHAR(255),
    subscription_status VARCHAR(50),
    signup_date DATE,
    referral_source VARCHAR(255),
    tags TEXT,
    ingestion_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS NEWSLETTER_SCHEMA.error_log (
    id SERIAL PRIMARY KEY,
    error_message TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

drop table NEWSLETTER_SCHEMA.subscribers