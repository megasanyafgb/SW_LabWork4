-- Detailed Data Schema for Relational Database
-- Example schema with Users and Posts tables

create table users (
user_id     number primary key,
username    varchar(30) not null unique,
email       varchar(255) not null,
phone       varchar(20),
created_at  timestamp not null
)

create table posts (
post_id      number primary key,
user_id      number,
title        varchar(100) not null,
content      varchar(4000),
published_at timestamp,
constraint fk_posts_users 
    foreign key (user_id) references users(user_id),
constraint chk_email_format 
    check (regexp_like(email, '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'))
)