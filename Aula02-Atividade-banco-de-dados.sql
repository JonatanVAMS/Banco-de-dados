-- CRIAR BANCO DE DADOS DA IMOBILIÁRIA
CREATE DATABASE PRIME_LONDON;

-- USAR O BANCO DE DADOS
USE PRIME_LONDON;

-- CRIAR A TABELA IMÓVEL
CREATE TABLE REALTY (
    ID INT NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(100) NOT NULL,
    DESCRIPTION TEXT NOT NULL,
    ROOM_NUMBERS INT NOT NULL,
    SALE_VALUE FLOAT NOT NULL,
    PRIMARY KEY (ID)
);

-- INSERIR 10 REGISTROS
INSERT INTO REALTY (NAME, DESCRIPTION, ROOM_NUMBERS, SALE_VALUE)
VALUES 
('Apartamento Bela Vista', 'Apartamento de 2 quartos, 1 suíte, varanda gourmet e vista panorâmica.', 5, 750000),  
('Casa Jardim das Flores', 'Casa térrea com 3 quartos, quintal amplo e garagem para 2 carros.', 6, 450000),  
('Cobertura Vista Mar', 'Cobertura duplex com piscina privativa e vista para o mar.', 7, 1800000),  
('Flat Executivo Centro', 'Flat mobiliado no centro da cidade, ideal para executivos.', 3, 350000),  
('Sítio Encanto Verde', 'Sítio com lago, área de lazer e casa principal rústica.', 8, 1200000),  
('Loft Moderno Paulista', 'Loft de alto padrão, pé-direito duplo e design contemporâneo.', 4, 980000),  
('Casa de Campo Serra Azul', 'Casa aconchegante em condomínio fechado na serra.', 6, 600000),  
('Studio Minimalista Centro', 'Studio compacto e bem localizado, ideal para investimento.', 2, 280000),  
('Mansão Alto Padrão', 'Mansão luxuosa com piscina, sauna e 5 suítes.', 12, 5500000),  
('Chalé Montanhês', 'Chalé rústico com lareira e vista para as montanhas.', 5, 650000);

-- CONSULTAS PARA EXIBIÇÃO DOS DADOS

-- 1. Listar todos os imóveis
SELECT * FROM REALTY;

-- 2. Listar imóveis com mais de 5 quartos
SELECT * FROM REALTY WHERE ROOM_NUMBERS > 5;

-- 3. Listar os imóveis mais caros (acima de R$ 1.000.000)
SELECT * FROM REALTY WHERE SALE_VALUE > 1000000;
