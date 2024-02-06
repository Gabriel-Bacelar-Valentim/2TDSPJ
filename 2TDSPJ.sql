Create table PAIS  (ID_PAIS NUMBER PRIMARY KEY,
                    NOME VARCHAR2(30));
                    
Create Table ESTADO (ID_ESTADO NUMBER PRIMARY KEY,
                    NOME VARCHAR2(30),
                    ID_PAIS NUMBER);

Alter table ESTADO ADD CONSTRAINT FK_ESTADO FOREIGN KEY(ID_PAIS) References PAIS(ID_PAIS);

Create Table CIDADE (ID_CIDADE NUMBER PRIMARY KEY,
                     NOME VARCHAR2(30),
                     ID_ESTADO NUMBER);
                     

                     
Create Table BAIRRO (ID_BAIRRO NUMBER PRIMARY KEY,
                    NOME VARCHAR2(30),
                    ID_CIDADE NUMBER);
                    
Create Table ENDERECO_CLIENTE (ID_ENDERECO_CLIENTE NUMBER PRIMARY KEY,
                              NOME VARCHAR2(30),
                              ID_BAIRRO NUMBER);
                     
                
                    




