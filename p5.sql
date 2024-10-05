
-- Table for orders
CREATE TABLE IF NOT EXISTS "order" (
    order_id INT PRIMARY KEY,     -- Order ID (Primary Key)
    client_id INT,                -- Client ID (Foreign Key from Clients table)
    order_date DATE               -- Date of the order
);

-- Table for clients
CREATE TABLE IF NOT EXISTS client (
    client_id INT PRIMARY KEY,      -- Client ID (Primary Key)
    last_name VARCHAR(50),          -- Client's last name
    street_address VARCHAR(100),    -- Client's street address
    building_number INT             -- Client's building number
);

-- Table for orders
CREATE TABLE IF NOT EXISTS product (
    product_id INT PRIMARY KEY,     -- Order ID (Primary Key)
    name VARCHAR(50)                -- Client ID (Foreign Key from Clients table)
);

-- Table for items in orders
CREATE TABLE IF NOT EXISTS order_details (
    order_details_id INT PRIMARY KEY,        -- Item ID (Primary Key)
    order_id INT,                            -- Order ID (Foreign Key from Orders table)
    product_id INT,                          -- Name of the item
    quantity INT                             -- Quantity of the item
);

-- Foreign Key constraints
ALTER TABLE IF EXISTS "order"
ADD CONSTRAINT fk_client
FOREIGN KEY (client_id)
REFERENCES Client(client_id);

ALTER TABLE IF EXISTS order_details
ADD CONSTRAINT fk_order
FOREIGN KEY (order_id)
REFERENCES "order" (order_id);

ALTER TABLE IF EXISTS order_details
ADD CONSTRAINT fk_product
FOREIGN KEY (product_id)
REFERENCES product (product_id);