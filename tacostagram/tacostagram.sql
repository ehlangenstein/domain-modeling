
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS engagements;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS sales_teams;


CREATE TABLE users (
    id
    first_name
    last_name
    email
    username
    phone_number

);

CREATE TABLE posts (
    id
    user_id
    post_url
    posted_at datetime, 
    caption TEXT
    total_likes --counter_cache 

); 

CREATE table likes (
    id
    post_id INTEGER,
    user_id INTEGER
    -- logic to limit one like per post per user

);

CREATE TABLE comments (
    id 
    post_id
    user_id
    comment_text
    
)