Create table PAIS  (ID_PAIS NUMBER PRIMARY KEY,
                    NOME VARCHAR2(30));
                    
Create Table ESTADO (ID_ESTADO NUMBER PRIMARY KEY,
                    NOME VARCHAR2(30),
                    ID_PAIS NUMBER);

Alter table ESTADO ADD CONSTRAINT FK_ESTADO FOREIGN KEY(ID_PAIS) References PAIS(ID_PAIS);

Create Table CIDADE (ID_CIDADE NUMBER PRIMARY KEY,
                     NOME VARCHAR2(30),
                     ID_ESTADO NUMBER);
      
Alter table CIDADE ADD CONSTRAINT FK_CIDADE FOREIGN KEY(ID_ESTADO) References ESTADO(ID_ESTADO);

                     
Create Table BAIRRO (ID_BAIRRO NUMBER PRIMARY KEY,
                    NOME VARCHAR2(30),
                    ID_CIDADE NUMBER);
                    
Alter table BAIRRO ADD CONSTRAINT FK_BAIRRO FOREIGN KEY(ID_CIDADE) References CIDADE(ID_CIDADE);


Create Table ENDERECO_CLIENTE (ID_ENDERECO_CLIENTE NUMBER PRIMARY KEY,
                              NOME VARCHAR2(30),
                              ID_BAIRRO NUMBER);
                              
Alter table ENDERECO_CLIENTE ADD CONSTRAINT FK_ENDERECO_CLIENTE FOREIGN KEY(ID_BAIRRO) References BAIRRO(ID_BAIRRO);

Insert into PAIS(ID_PAIS, NOME)
Values   (1, 'Brasil');
Insert into PAIS(ID_PAIS, NOME)
Values (2, 'Argentina');
Insert into PAIS(ID_PAIS, NOME)
Values (3, 'Bolivia');
Insert into PAIS(ID_PAIS, NOME)
Values (4, 'Chile');
Insert into PAIS(ID_PAIS, NOME)
Values (5, 'Peru');

Insert into ESTADO(ID_ESTADO, NOME, ID_PAIS) 
Values (11, 'Sao Paulo', 1);
Insert into ESTADO(ID_ESTADO, NOME, ID_PAIS) 
Values (12, 'Buenos Aires', 1);
Insert into ESTADO(ID_ESTADO, NOME, ID_PAIS) 
Values (13, 'La Paz', 1);
Insert into ESTADO(ID_ESTADO, NOME, ID_PAIS) 
Values (14, 'Vila Del Mar', 1);
Insert into ESTADO(ID_ESTADO, NOME, ID_PAIS) 
Values (15, 'Cusco', 1);
        
Insert into CIDADE(ID_CIDADE, NOME, ID_ESTADO) 
Values (21, 'Sao Paulo', 11);
Insert into CIDADE(ID_CIDADE, NOME, ID_ESTADO) 
Values (22, 'Lalau', 12);
Insert into CIDADE(ID_CIDADE, NOME, ID_ESTADO) 
Values (23, 'Cremaria', 13);
Insert into CIDADE(ID_CIDADE, NOME, ID_ESTADO) 
Values (24, 'Topzera', 14);
Insert into CIDADE(ID_CIDADE, NOME, ID_ESTADO) 
Values (25, 'shablau', 15);

Insert into BAIRRO(ID_BAIRRO, NOME, ID_CIDADE) 
Values (31, 'Augusta', 21);
Insert into BAIRRO(ID_BAIRRO, NOME, ID_CIDADE) 
Values (32, 'Qualquer', 22);
Insert into BAIRRO(ID_BAIRRO, NOME, ID_CIDADE) 
Values (33, 'Jorgematheus', 23);
Insert into BAIRRO(ID_BAIRRO, NOME, ID_CIDADE) 
Values (34, 'Semideia', 24);
Insert into BAIRRO(ID_BAIRRO, NOME, ID_CIDADE) 
Values (35, 'Acaboutudo', 25);

Insert into ENDERECO_CLIENTE(ID_ENDERECO_CLIENTE, NOME, ID_BAIRRO) 
Values (41, 'Rua Augusta', 31);
Insert into ENDERECO_CLIENTE(ID_ENDERECO_CLIENTE, NOME, ID_BAIRRO) 
Values (42, 'Rua Qualquer', 32);
Insert into ENDERECO_CLIENTE(ID_ENDERECO_CLIENTE, NOME, ID_BAIRRO) 
Values (43, 'Rua Jorgematheus', 33);
Insert into ENDERECO_CLIENTE(ID_ENDERECO_CLIENTE, NOME, ID_BAIRRO) 
Values (44, 'Rua Semideia', 34);
Insert into ENDERECO_CLIENTE(ID_ENDERECO_CLIENTE, NOME, ID_BAIRRO) 
Values (45, 'Rua Acaboutudo', 35);

Select * From PAIS;
Select * From ESTADO;
Select * From CIDADE;
Select * From BAIRRO;
Select * From ENDERECO_CLIENTE;


                     
                
                    




