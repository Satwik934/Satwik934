CREATE TABLE accounts(
    account_id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name1 TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    password1 TEXT NOT NULL,
    username TEXT NOT NULL UNIQUE
);

CREATE TABLE stockinfo(
    symbol TEXT PRIMARY KEY,
    name1 TEXT NOT NULL UNIQUE,
    code TEXT
);

CREATE TABLE stockdata(
    name1 TEXT NOT NULL,
    timestamp1 TIMESTAMP WITH TIME ZONE NOT NULL,
    volume FLOAT,
    close1 FLOAT,
    low FLOAT,
    high FLOAT,
    open1 FLOAT,
    historical_data JSONB,
    predicition JSONB,
    PRIMARY KEY(name1, timestamp1),
    FOREIGN KEY(name1) REFERENCES stockinfo(name1) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE INDEX stockdata_name_time_index ON stockdata(name1, timestamp1 DESC);

CREATE TABLE cash_account(
    cash_account_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    account_id BIGINT NOT NULL,
    total_amount_of_cash FLOAT NOT NULL CHECK (total_amount_of_cash >= 0),
    FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

CREATE TABLE transaction(
    transaction_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    transaction_type TEXT NOT NULL,
    amount FLOAT NOT NULL,
    date1 TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

CREATE TABLE reviews(
    review_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    account_id BIGINT NOT NULL,
    text1 TEXT NOT NULL,
    visibility TEXT NOT NULL DEFAULT 'public',
    FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

CREATE TABLE friend_requests(
    sender_id BIGINT NOT NULL,
    receiver_id BIGINT NOT NULL,
    request_timestamp TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
    response_timestamp TIMESTAMP WITH TIME ZONE,
    status1 TEXT NOT NULL DEFAULT 'pending',
    account_id BIGINT,
    PRIMARY KEY(sender_id, receiver_id, request_timestamp),
    FOREIGN KEY(sender_id) REFERENCES accounts(account_id) ON DELETE CASCADE,
    FOREIGN KEY(receiver_id) REFERENCES accounts(account_id) ON DELETE CASCADE,
    FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

CREATE TABLE stock_list(
    account_id BIGINT NOT NULL,
    stock_list_id BIGINT GENERATED ALWAYS AS IDENTITY,
    visibility TEXT NOT NULL DEFAULT 'private',
    PRIMARY KEY(account_id, stock_list_id),
    UNIQUE (stock_list_id),
    FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

CREATE TABLE portfolios(
    account_id BIGINT NOT NULL,
    portfolio_id BIGINT GENERATED ALWAYS AS IDENTITY,
    name1 TEXT NOT NULL,
    PRIMARY KEY(account_id, portfolio_id),
    FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

CREATE TABLE stock_holdings_list(
    symbol TEXT NOT NULL,
    name1 TEXT NOT NULL,
    number_of_shares FLOAT NOT NULL CHECK (number_of_shares >= 0),
    PRIMARY KEY(symbol, name1),
    FOREIGN KEY(symbol) REFERENCES stockinfo(symbol) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY(name1) REFERENCES stockinfo(name1) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE contains(
    portfolio_id BIGINT NOT NULL,
    cash_account_id BIGINT NOT NULL,
    account_id BIGINT NOT NULL,
    PRIMARY KEY(portfolio_id, cash_account_id, account_id),
    FOREIGN KEY(account_id, portfolio_id) REFERENCES portfolios(account_id, portfolio_id) ON DELETE CASCADE,
    FOREIGN KEY(cash_account_id) REFERENCES cash_account(cash_account_id) ON DELETE CASCADE,
    FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

CREATE TABLE recieved_by(
    account_id BIGINT NOT NULL,
    receiver BIGINT NOT NULL,
    PRIMARY KEY(account_id, receiver),
    FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE CASCADE,
    FOREIGN KEY(receiver) REFERENCES accounts(account_id) ON DELETE CASCADE
);

CREATE TABLE friendship(
    friend1 BIGINT NOT NULL,
    friend2 BIGINT NOT NULL,
    PRIMARY KEY(friend1, friend2),
    FOREIGN KEY(friend1) REFERENCES accounts(account_id) ON DELETE CASCADE,
    FOREIGN KEY(friend2) REFERENCES accounts(account_id) ON DELETE CASCADE,
    CHECK(friend1 <> friend2),
    CHECK(friend1 < friend2)
);


CREATE TABLE made_up_of(
    stock_list_id BIGINT NOT NULL,
    account_id BIGINT NOT NULL,
    name1 TEXT NOT NULL,
    symbol TEXT NOT NULL,
    PRIMARY KEY(stock_list_id, account_id, name1, symbol),
    FOREIGN KEY(account_id, stock_list_id) REFERENCES stock_list(account_id, stock_list_id) ON DELETE CASCADE,
    FOREIGN KEY(symbol) REFERENCES stockinfo(symbol) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY(name1) REFERENCES stockinfo(name1) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE records(
    transaction_id BIGINT,
    cash_account_id BIGINT,
    portfolio_id BIGINT,
    account_id BIGINT NOT NULL,
    PRIMARY KEY(transaction_id, cash_account_id, portfolio_id, account_id),
    FOREIGN KEY(transaction_id) REFERENCES transaction(transaction_id) ON DELETE CASCADE,
    FOREIGN KEY(cash_account_id) REFERENCES cash_account(cash_account_id) ON DELETE SET NULL,
    FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE SET NULL,
    FOREIGN KEY (account_id, portfolio_id) REFERENCES portfolios(account_id, portfolio_id) ON DELETE SET NULL
);

CREATE TABLE contains1(
    portfolio_id BIGINT NOT NULL,
    account_id BIGINT NOT NULL,
    name1 TEXT NOT NULL,
    symbol TEXT NOT NULL,
    PRIMARY KEY(portfolio_id, account_id, name1, symbol),
    FOREIGN KEY(account_id, portfolio_id) REFERENCES portfolios(account_id, portfolio_id) ON DELETE CASCADE,
    FOREIGN KEY(symbol) REFERENCES stockinfo(symbol) ON DELETE RESTRICT,
    FOREIGN KEY(name1) REFERENCES stockinfo(name1) ON DELETE RESTRICT
);

CREATE TABLE SP500History(
    date1 DATE NOT NULL,
    open1 NUMERIC,
    high NUMERIC,
    low NUMERIC,
    close1 NUMERIC,
    volume BIGINT,
    code VARCHAR(10) NOT NULL,
    PRIMARY KEY(date1, code)
);

CREATE TABLE portfolio_holdings(
    portfolio_id BIGINT NOT NULL,
    account_id BIGINT NOT NULL,
    symbol TEXT NOT NULL,
    name1 TEXT NOT NULL,
    number_of_shares FLOAT NOT NULL CHECK(number_of_shares >= 0),
    PRIMARY KEY (portfolio_id, account_id, symbol, name1),
    FOREIGN KEY (account_id, portfolio_id) REFERENCES portfolios(account_id, portfolio_id) ON DELETE CASCADE,
    FOREIGN KEY (symbol) REFERENCES stockinfo(symbol) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (name1) REFERENCES stockinfo(name1) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE shared_stock_lists (
    stock_list_id BIGINT NOT NULL,
    owner_account_id BIGINT NOT NULL,
    shared_with_account_id BIGINT NOT NULL,
    PRIMARY KEY (stock_list_id, owner_account_id, shared_with_account_id),
    FOREIGN KEY (stock_list_id) REFERENCES stock_list(stock_list_id) ON DELETE CASCADE,
    FOREIGN KEY (owner_account_id) REFERENCES accounts(account_id) ON DELETE CASCADE,
    FOREIGN KEY (shared_with_account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

CREATE TABLE stock_list_reviews (
    review_id SERIAL PRIMARY KEY,
    stock_list_id BIGINT NOT NULL,
    account_id BIGINT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (stock_list_id) REFERENCES stock_list(stock_list_id) ON DELETE CASCADE,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);
