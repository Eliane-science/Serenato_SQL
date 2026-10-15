--PRODUTOS

CREATE TABLE PRODUTOS (
	  ID VARCHAR (50) PRIMARY KEY
	, NOME VARCHAR (255)
	, DESCRICAO VARCHAR (255)
	, PRECO DECIMAL (10,2)
	, CATEGORIA VARCHAR (50)
);



--COLABORADORES
CREATE TABLE COLABORADORES (
	  ID VARCHAR (50) PRIMARY KEY
	, NOME VARCHAR (255) NOT NULL
	, CARGO VARCHAR (100)
	, DATA_CONTRATACAO DATE
	, TELEFONE VARCHAR (50)
	, E_MAIL VARCHAR (100)
	, RUA VARCHAR (100) NOT NULL
	, BAIRRO VARCHAR (100) NOT NULL
	, CIDADE VARCHAR (100) NOT NULL
	, ESTADO VARCHAR (2) NOT NULL
	, CEP VARCHAR (8) NOT NULL
);



--FORNECEDORES
CREATE TABLE FORNECEDORES (
	  ID VARCHAR (50) PRIMARY KEY
	, NOME VARCHAR (255) NOT NULL
	, CONTATO VARCHAR (100)
	, TELEFONE VARCHAR (50)
	, E_MAIL VARCHAR (100)
	, RUA VARCHAR (100) NOT NULL
	, BAIRRO VARCHAR (100) NOT NULL
	, CIDADE VARCHAR (100) NOT NULL
	, ESTADO VARCHAR (2) NOT NULL
	, CEP VARCHAR (8) NOT NULL
);



--CLIENTES
CREATE TABLE CLIENTES (
	  ID VARCHAR (50) PRIMARY KEY
	, NOME VARCHAR (255) NOT NULL
	, TELEFONE VARCHAR (50)
	, E_MAIL VARCHAR (100) DEFAULT 'Sem e-mail'
	, ENDERECO VARCHAR (255)
);



--PEDIDOS
CREATE TABLE PEDIDOS (
	  ID VARCHAR (50) PRIMARY KEY
	, ID_CLIENTE VARCHAR (50) 
	, DATA_HORA_PEDIDO DATETIME
	, STATUS_PEDIDO VARCHAR (50)
	FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(ID) ON DELETE CASCADE
);



--ITENS PEDIDOS
CREATE TABLE ITENS_PEDIDOS (
	  ID_PEDIDO VARCHAR (50)
	, ID_PRODUTO VARCHAR (50)
	, QUANTIDADE INTEGER
	, PRECO_UNITARIO DECIMAL (10,2)
	, PRIMARY KEY (ID_PEDIDO, ID_PRODUTO)
	, FOREIGN KEY (ID_PEDIDO) REFERENCES PEDIDOS(ID) ON DELETE CASCADE
	, FOREIGN KEY (ID_PRODUTO) REFERENCES PRODUTOS(ID) ON DELETE CASCADE
);




--INSERINDO COLABORADORES 
INSERT INTO COLABORADORES VALUES (1, 'Carlos Silva', 'Gerente', '2022-03-15', '115551234', 'carlos.silva@email.com', 'Rua do Comércio - 258', 'Centro', 'São Paulo', 'SP', '01000001')
INSERT INTO COLABORADORES VALUES (2, 'Marta Sousa', 'Chef de Cozinha', '2022-05-10', '215555678', 'marta.sousa@email.com', 'Rua dos Sabores - 456', 'Saboroso', 'São Paulo', 'SP', '20000001')
INSERT INTO COLABORADORES VALUES (3, 'Pedro Almeida', 'Barista', '2022-07-20', '315557890', 'pedro.almeida@email.com', 'Avenida do Café - 789', 'Centro', 'São Paulo', 'SP', '01000001')
INSERT INTO COLABORADORES VALUES (4, 'Sofia Rodrigues', 'Garçom', '2022-01-12', '415552345', 'sofia.rodrigues@email.com', 'Rua da Hospitalidade - 101', 'Boas Maneiras', 'São Paulo', 'SP', '40000001')
INSERT INTO COLABORADORES VALUES (5, 'João Pereira', 'Atendente', '2022-09-05', '515558765', 'joao.pereira@email.com', 'Rua das flores - 210', 'Centro', 'São Paulo', 'SP', '20000001')
INSERT INTO COLABORADORES VALUES (6, 'Inês Lima', 'Barista', '2022-04-02', '615553421', 'ines.lima@email.com', 'Rua das Entregas - 280', 'Entregas Rápidas', 'São Paulo', 'SP', '90000001')
INSERT INTO COLABORADORES VALUES (7, 'Antonio Artur', 'Entregador', '2023-01-10', '568442577', 'antonio.artur@email.com', 'Rua das flores - 210', 'Centro', 'São Paulo', 'SP', '20000001');

SELECT * FROM COLABORADORES



--INSERINDO FRONECEDORES
INSERT INTO FORNECEDORES VALUES (1, 'Café do Brasil Ltda.', 'Maria Oliveira', '115551234', 'cafebrasil@email.com', 'Rua do Café - 123', 'Centro', 'São Paulo', 'SP', '01000000')
INSERT INTO FORNECEDORES VALUES (2, 'Laticínios Sabor Puro', 'João Santos', '215555678', 'laticinios@email.com', 'Avenida das Vacas - 456', 'Leite Feliz', 'Rio de Janeiro', 'RJ', '20000000')
INSERT INTO FORNECEDORES VALUES (3, 'Frutas Frescas S.A.', 'Carlos Ferreira', '315557890', 'frutasfrescas@email.com', 'Rua das Maçãs - 789', 'Pomar Verde', 'Belo Horizonte', 'MG', '30000000')
INSERT INTO FORNECEDORES VALUES (4, 'Padaria da Cidade', 'Sofia Alves', '415552345', 'padariacidade@email.com', 'Rua dos Pães - 101', 'Pão Quentinho', 'Salvador', 'BA', '40000000')
INSERT INTO FORNECEDORES VALUES (5, 'Fornecedor de Chocolate', 'Rui Lima', '515558765', 'chocolatelovers@email.com', 'Rua do Cacau - 210', 'Chocolateira', 'Florianópolis', 'SC', '88000000')
INSERT INTO FORNECEDORES VALUES (6, 'Distribuidora de Bebidas', 'Ana Pereira', '615553421', 'bebidaspremium@email.com', 'Avenida das Garrafas - 35', 'Copo Cheio', 'Porto Alegre', 'RS', '90000000');

SELECT * FROM FORNECEDORES



