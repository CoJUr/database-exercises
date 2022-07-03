use solo;

DROP TABLE IF EXISTS products;

CREATE TABLE products(
    id int NOT NULL ,
    productname VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    categoryid INT NOT NULL
#     PRIMARY KEY (id)
);

DROP TABLE IF EXISTS categories;

CREATE TABLE categories(
    id int NOT NULL AUTO_INCREMENT,
    categoryname VARCHAR(50) NOT NULL,
    primary key (id)
);

TRUNCATE TABLE products;

INSERT INTO products(id, productname, price, categoryid)
VALUES (1, 'Apple', 800, 1),
       (2, 'Potato', 400, 2),
       (3, 'Orange', 900, 1),
       (4, 'Tomato', 450, 2),
       (5, 'OrangeJuice', 250, 3),
       (4, 'TomatoJuice', 350, 3);

TRUNCATE TABLE categories;
INSERT INTO categories(id, categoryname)
VALUES (1, 'Fruit'),
       (2, 'Vegetable'),
       (3, 'Juice'),
       (4, 'Chocolate');

# output all products with their categories in 1 table
SELECT products.productname, products.price, categories.categoryname
FROM products
INNER JOIN categories
ON products.categoryid = categories.id;


# UNION - combo multiple sets into 1, removes dupes
# UNION ALL -- same, but doesn't remove dupes. AND SO FASTER


# UNION: combines result set of two or more SELECT statements.
# selects *must have same # of columns and same data types* and same cols order
# SELECT  column_name(s) FROM table1
# UNION
# SELECT column_name(s) FROM table2

# UNION ALL-- combines all rows from each table into 1
# SELECT ID, FirstName, LastName, City FROM first
# UNION ALL
# SELECT ID, FirstName, LastName, City FROM second