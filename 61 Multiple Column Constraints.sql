CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name, address)
);

INSERT INTO companies(name, address) VALUES('blue cat', 'Building 27');

INSERT INTO companies(name, address) VALUES('blue cat', 'Building 27');

CREATE TABLE houses (
	purchase_price INT NOT NULL,
    sale_price INT NOT NULL,
    CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);

INSERT INTO houses(purchase_price, sale_price) VALUES (100, 200);

INSERT INTO houses(purchase_price, sale_price) VALUES (300, 200);

