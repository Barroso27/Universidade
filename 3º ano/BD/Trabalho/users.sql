CREATE USER 'goncalogbarroso'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'goncalogbarroso'@'localhost';

CREATE USER 'joaosousa'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'joaosousa'@'localhost';

CREATE USER 'josecastro'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'josecastro'@'localhost';

CREATE USER 'rafaelaantunes'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'rafaelaantunes'@'localhost';

CREATE USER 'orlandobelo'@'%' IDENTIFIED BY 'Chefe';
GRANT SELECT, INSERT, UPDATE, DELETE, FILE, GRANT OPTION ON *.* TO 'orlandobelo'@'%';

CREATE USER 'pauloportas'@'%' IDENTIFIED BY 'EstagiarioPaulo';
GRANT SELECT ON JogosOlimpicos.JogosOlimpicos TO 'pauloportas'@'%';

FLUSH PRIVILEGES;