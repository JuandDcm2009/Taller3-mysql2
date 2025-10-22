SELECT user, host FROM mysql.user;

-- Administrador 
CREATE USER 'administrador'@'%' IDENTIFIED BY 'contraseña_segura';
GRANT ALL PRIVILEGES ON ecommerce_shoes.* TO 'administrador'@'%' WITH GRANT OPTION;
SHOW GRANTS FOR 'administrador'@'%';
ALTER USER 'administrador'@'%' WITH MAX_QUERIES_PER_HOUR 50;

-- Cajero
CREATE USER 'cajero'@'%' IDENTIFIED BY 'contraseña_segurax2';
GRANT SELECT, INSERT, UPDATE ON ecommerce_shoes.Pedidos TO 'cajero'@'%';
GRANT SELECT, INSERT, UPDATE ON ecommerce_shoes.PedidoProducto TO 'cajero'@'%';
GRANT SELECT ON ecommerce_shoes.Usuarios, ecommerce_shoes.Productos TO 'cajero'@'%';
SHOW GRANTS FOR 'cajero'@'%';
ALTER USER 'cajero'@'%' WITH MAX_QUERIES_PER_HOUR 50;

-- Analista
CREATE USER 'analista'@'%' IDENTIFIED BY 'contraseña_segurax3';
GRANT EXECUTE ON ecommerce_shoes.* TO 'analista'@'%';
GRANT SELECT ON ecommerce_shoes.* TO 'analista'@'%';
GRANT SHOW VIEW ON ecommerce_shoes.* TO 'analista'@'%';
SHOW GRANTS FOR 'analista'@'%';

ALTER USER 'analista'@'%' WITH MAX_QUERIES_PER_HOUR 50;

-- Desarrollador

CREATE USER 'desarrollador'@'%' IDENTIFIED BY 'contraseña_segurax4';

GRANT CREATE TEMPORARY TABLES ON eccomerce_shoes.* TO 'desarrollador'@'%'; 
GRANT LOCK TABLES ON eccomerce_shoes.* TO 'desarrollador'@'%';
GRANT ALTER ON eccomerce_shoes.* TO 'desarrollador'@'%';
GRANT DROP ON eccomerce_shoes.* TO 'desarrollador'@'%';
GRANT INDEX ON eccomerce_shoes.* TO 'desarrollador'@'%';

SHOW GRANTS FOR 'desarrollador'@'%';