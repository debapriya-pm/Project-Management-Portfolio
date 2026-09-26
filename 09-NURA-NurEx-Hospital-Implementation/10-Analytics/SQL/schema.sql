CREATE TABLE implementation_users (
 user_id INT PRIMARY KEY,
 role VARCHAR(50),
 department VARCHAR(50),
 training_status VARCHAR(20)
);
CREATE TABLE medication_events (
 event_id INT PRIMARY KEY,
 user_id INT,
 event_date DATE,
 event_type VARCHAR(50),
 duration_seconds INT,
 status VARCHAR(20),
 FOREIGN KEY (user_id) REFERENCES implementation_users(user_id)
);
CREATE TABLE support_tickets (
 ticket_id INT PRIMARY KEY,
 created_date DATE,
 severity VARCHAR(20),
 category VARCHAR(50),
 resolution_hours DECIMAL(8,2),
 status VARCHAR(20)
);
