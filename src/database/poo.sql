-- Active: 1698703880054@@127.0.0.1@3306

CREATE TABLE
    users (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        name TEXT NOT NULL,
        email TEXT UNIQUE NOT NULL,
        password TEXT NOT NULL,
        created_at TEXT NOT NULL
    );

CREATE TABLE
    accounts (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        owner_id TEXT NOT NULL,
        balance REAL DEFAULT (0) NOT NULL,
        created_at TEXT NOT NULL,
        FOREIGN KEY (owner_id) REFERENCES users (id) ON UPDATE CASCADE ON DELETE CASCADE
    );

INSERT INTO users
VALUES (
        'u001',
        'Fulano',
        'fulano@email.com',
        'fulano123',
        '27-10-2023 17:57:01'
    ), (
        'u002',
        'Beltrana',
        'beltrana@email.com',
        'beltrana00',
        '27-10-2023 17:57:01'
    );

INSERT INTO
    accounts (id, owner_id, created_at)
VALUES (
        'a001',
        'u001',
        '27-10-2023 17:57:01'
    ), (
        'a002',
        'u002',
        '27-10-2023 17:57:01'
    );