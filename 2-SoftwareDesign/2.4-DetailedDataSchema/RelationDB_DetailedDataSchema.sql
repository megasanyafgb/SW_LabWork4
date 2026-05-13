-- Detailed Data Schema for Relational Database
-- Example schema with Users and Posts tables

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(30) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL CHECK (email REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'),
    phone VARCHAR(20) CHECK (phone REGEXP '^\+?[0-9]{10,15}$'),
    created_at DATE NOT NULL
);

CREATE TABLE Posts (
    post_id INT PRIMARY KEY,
    user_id INT,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    published_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);