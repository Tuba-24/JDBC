--Selamlama yapan bir function oluşturup çalıştırınız
CREATE FUNCTION selamlama(x TEXT) RETURNS TEXT
AS
$$
BEGIN
RETURN 'Merhaba '|| x ||', nasılsın?';
END;
$$
LANGUAGE plpgsql;--Procedual language postgre sql
SELECT selamlama('Ayse');

--2. Örnek: İki sayıyı toplayan bir function yazınız ve Callable Statement ile çağırınız.
CREATE FUNCTION toplama(x INT, y INT) RETURNS NUMERIC
AS
$$
BEGIN
RETURN X+Y;
END;
$$
LANGUAGE plpgsql;--Procedual language postgre sql


SELECT toplama(1,2);
