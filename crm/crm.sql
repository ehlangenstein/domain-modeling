-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS sales_teams;

CREATE TABLE salespersons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    sales_team_id INTEGER
);

CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number TEXT,
    company.id INTEGER
);

CREATE TABLE activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    salesperson_id INTEGER,
    contact_id INTEGER, 
    activity_date date,
    activity_time time, 
    activity_type TEXT,
    notes TEXT,
    company_id INTEGER
    -- include company here in case contact changes company
);

CREATE TABLE sales_teams (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
);
-- CREATE TABLES
