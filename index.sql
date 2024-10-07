
CREATE DATABASE user_auth_db;

USE user_auth_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (username, email, password) 
VALUES ('new_user', 'newuser@example.com', 'hashed_password_here');
SELECT * FROM users ;

SELECT * FROM users 
WHERE email = 'john@example.com' 
AND password = 'hashed_password_here';
