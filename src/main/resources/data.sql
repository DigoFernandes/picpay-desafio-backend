DELETE FROM
    TRANSACTIONS;

DELETE FROM
    WALLETS;

-- INSERT statements for WALLETS table
INSERT INTO
    WALLETS (
        FULL_NAME,
        CPF,
        EMAIL,
        "PASSWORD",
        "TYPE",
        BALANCE
    )
VALUES
    (
        'John Doe - user',
        12345678900,
        'john.doe@example.com',
        'password123',
        1,
        1000.00
    ),
    (
        'Jane Smith',
        98765432100,
        'jane.smith@example.com',
        'securepwd456',
        1,
        500.50
    ),
    (
        'Alice Johnson - Lojista',
        11122233344,
        'alice.johnson@example.com',
        'pass123',
        2,
        750.25
    );

-- INSERT statements for TRANSACTIONS table
INSERT INTO
    TRANSACTIONS (PAYER, PAYEE, "VALUE", CREATE_AT)
VALUES
    (1, 2, 100.00, CURRENT_TIMESTAMP),
    (2, 1, 50.25, CURRENT_TIMESTAMP),
    (3, 1, 200.75, CURRENT_TIMESTAMP);