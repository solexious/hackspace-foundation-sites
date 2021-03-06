CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    subscribed BOOLEAN NOT NULL DEFAULT 0,
    address TEXT,
    bankhash TEXT
);

CREATE TABLE transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fit_id TEXT NOT NULL UNIQUE,
    timestamp DATETIME NOT NULL,
    user_id INTEGER NOT NULL REFERENCES users(id),
    amount TEXT NOT NULL
);

CREATE TABLE password_resets (
    key TEXT PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id),
    expires DATETIME NOT NULL
);

