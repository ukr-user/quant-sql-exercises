-- Create tables for a simple trading dataset

CREATE TABLE trades (
    trade_id      INTEGER PRIMARY KEY,
    trade_date    DATE NOT NULL,
    symbol        TEXT NOT NULL,
    side          TEXT CHECK (side IN ('BUY', 'SELL')) NOT NULL,
    quantity      INTEGER NOT NULL,
    price         REAL NOT NULL
);

CREATE TABLE prices (
    price_date    DATE NOT NULL,
    symbol        TEXT NOT NULL,
    close_price   REAL NOT NULL,
    PRIMARY KEY (price_date, symbol)
);
