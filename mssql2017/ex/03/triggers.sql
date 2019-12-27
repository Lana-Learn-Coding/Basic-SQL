DROP TRIGGER IF EXISTS insert_auto_add_count
DROP TRIGGER IF EXISTS update_prevent_negative_price

CREATE TRIGGER insert_auto_add_count
    ON Travels
    FOR INSERT
    AS
    UPDATE Categories
    SET counts = counts + 1
    FROM inserted
    WHERE Categories.id = inserted.cat_id;

CREATE TRIGGER update_prevent_negative_price
    ON Travels
    FOR UPDATE
    AS
    IF EXISTS(SELECT 1
              FROM inserted
              WHERE price < 0)
        THROW 51000,'Price must >= 0',1
