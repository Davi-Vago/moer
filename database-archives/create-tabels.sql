CREATE TABLE fato_extracoes 

(
    id_estracao_pk INT PRIMARY KEY IDENTITY,
    id_moedor_fk INT,
    id_metodo_fk INT,
    id_cafe_fk INT,

    vl_peso_cafe NUMERIC (5,2),
    vl_nota INT,
    vl_pesoagua NUMERIC (5,2),
    vl_temperatura NUMERIC (5,2),
    vl_regulagem_moedor INT,

    ds_sensorial VARCHAR(30),
    ds_corpo VARCHAR(30),

    dt_dia_extracao DATE,

    ts_tempo_extracao TIME

);

/* INSERT NA FATO 

  INSERT INTO fato_extracoes VALUES 
  (id_moedor, id_metodo, id_cafe, peso_cafe, nota, peso_agua, temperatura, regulagem_moedor, 'sensorial', 'corpo', 'data', 'tempo_extracao')

*/

CREATE TABLE dim_equipamentos

(
    id_equipamento_pk INT PRIMARY KEY IDENTITY,

    ds_tipo VARCHAR(30),
    ds_nome VARCHAR(30),

    dt_dia_compra DATE
);

/* INSERT NA FATO 

  INSERT INTO dim_equipamentos VALUES 
  (ds_tipo, ds_nome, dt_dia_compra)

*/

CREATE TABLE dim_cafes

(
    id_cafe_pk INT PRIMARY KEY IDENTITY,
    id_torrefacao_fk INT,

    vl_altitude INT,

    ds_nome_cafe VARCHAR(30),
    ds_tipo VARCHAR(30),
    ds_torra VARCHAR(30),
    ds_metodo_processamento VARCHAR(30),
    ds_variedade VARCHAR(30),
    ds_municipio VARCHAR(100),
    ds_uf CHAR(2),

    dt_dia_compra DATE,
    dt_dia_torra DATE

);

/* INSERT NA DIM_CAFES 

  INSERT INTO dim_cafes VALUES 
  ( 1,	930, 'Frutas Amarelas', 'Arábica', 'Média clara',	'Honey',	'Catuaí Vermelho',	'Domingos Martins',	'ES',	'2024-08-19',	'2024-08-06')
*/

CREATE TABLE dim_torrefacoes

(
    id_torrefacao_pk INT PRIMARY KEY IDENTITY,

    ds_nome_torrefacao VARCHAR(100),
);