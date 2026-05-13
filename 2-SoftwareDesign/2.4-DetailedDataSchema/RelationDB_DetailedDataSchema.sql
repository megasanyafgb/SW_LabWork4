CREATE TABLE users (
    user_id NUMBER PRIMARY KEY,
    username VARCHAR(30) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    created_at TIMESTAMP NOT NULL
);

CREATE TABLE posts (
    post_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    title VARCHAR(100) NOT NULL,
    content VARCHAR(4000),
    published_at TIMESTAMP,
    CONSTRAINT fk_posts_users FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT chk_email_format CHECK (
        REGEXP_LIKE(
            email,
            '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,}$'
        )
    )
);
