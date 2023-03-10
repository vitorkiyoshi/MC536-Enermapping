
insert into Usuario(nome, senha, email, tipo) values("Governo Estadual do ES","WPGnQDJft2Oo", "estado@ES.gov.br", "Governo");
insert into Governo(IDusuario, Estado) values (1, "ES");
insert into Usuario(nome, senha, email, tipo) values("Governo Estadual do MG","QI7XP064pZKb", "estado@MG.gov.br", "Governo");
insert into Governo(IDusuario, Estado) values (2, "MG");
insert into Usuario(nome, senha, email, tipo) values("Governo Estadual do SP","Zk6CslbgCP7q", "estado@SP.gov.br", "Governo");
insert into Governo(IDusuario, Estado) values (3, "SP");
insert into Usuario(nome, senha, email, tipo) values("Governo Estadual do RJ","l96xHpgK8kmY", "estado@RJ.gov.br", "Governo");
insert into Governo(IDusuario, Estado) values (4, "RJ");

insert into Usuario(nome, senha, email, tipo) values("Energisa Nova Friburgo","txAFAUpmBViH", "empresa@energisanovafriburgo.com.br", "Empresa");
insert into Usuario(nome, senha, email, tipo) values("CEMIG","N1waabKRyHSg", "empresa@cemig.com.br", "Empresa");
insert into Usuario(nome, senha, email, tipo) values("CPFL Paulista","EEtax0JNZJiX", "principal@cpflpaulista.com.br", "Empresa");
insert into Usuario(nome, senha, email, tipo) values("CPFL Piratininga","qJHD36FJtpvu", "cadastros@cpflpiratininga.com.br", "Empresa");
insert into Usuario(nome, senha, email, tipo) values("EDP Espírito Santo","RRYqMz2EUoU3", "contato@edpespiritosanto.com.br", "Empresa");
insert into Usuario(nome, senha, email, tipo) values("EDP São Paulo","LWUNRFBc0SjT", "contato@edpsaopaulo.com.br", "Empresa");
insert into Usuario(nome, senha, email, tipo) values("Enel Rio","x3eKWU1FeG8b", "cadastros@enelrio.com.br", "Empresa");
insert into Usuario(nome, senha, email, tipo) values("Enel São Paulo","b5QMoc7O5Ylc", "empresa@enelsaopaulo.com.br", "Empresa");
insert into Usuario(nome, senha, email, tipo) values("Energisa Minas Gerais","pG1OmoitWdqf", "principal@energisaminasgerais.com.br", "Empresa");
insert into Usuario(nome, senha, email, tipo) values("Light","mi90WLZp39Q8", "empresa@light.com.br", "Empresa");
insert into Empresa_de_energia(IDusuario, cnpj) values (5, "63.161.587/0001-30");
insert into Empresa_de_energia(IDusuario, cnpj) values (6, "55.085.533/0001-05");
insert into Empresa_de_energia(IDusuario, cnpj) values (7, "21.114.818/0001-05");
insert into Empresa_de_energia(IDusuario, cnpj) values (8, "78.211.659/0001-84");
insert into Empresa_de_energia(IDusuario, cnpj) values (9, "28.680.466/0001-02");
insert into Empresa_de_energia(IDusuario, cnpj) values (10, "21.748.263/0001-53");
insert into Empresa_de_energia(IDusuario, cnpj) values (11, "45.031.178/0001-38");
insert into Empresa_de_energia(IDusuario, cnpj) values (12, "12.477.986/0001-74");
insert into Empresa_de_energia(IDusuario, cnpj) values (13, "91.652.077/0001-00");
insert into Empresa_de_energia(IDusuario, cnpj) values (14, "05.182.212/0001-50");


insert into Usuario(nome, senha, email, tipo) values("Marcela Priscila da Mata","ALzWyyARBJ", "marcela-damata94@consorciogastau.com.br", "Comum");
insert into Usuario(nome, senha, email, tipo) values("Silvana Alessandra Ribeiro","Z5rRAR81xp", "silvana-ribeiro98@sent.com", "Comum");
insert into Usuario(nome, senha, email, tipo) values("Igor Isaac Anthony Nogueira","UaTQJdZQOQ", "igor_nogueira@nogueiramoura.adv.br", "Comum");
insert into Usuario(nome, senha, email, tipo) values("Tatiane Aline Campos","KHdejRweZO", "tatianealinecampos@grupomozue.com.br", "Comum");
insert into Usuario(nome, senha, email, tipo) values("Fátima Sônia Nair Baptista","aSJFqxfJO3", "fatimasoniabaptista@paae.com.br", "Comum");
insert into Usuario(nome, senha, email, tipo) values("Eloá Adriana Fernandes","o4oQyweyXT", "eloaadrianafernandes@fertau.com.br", "Comum");
insert into Usuario(nome, senha, email, tipo) values("Betina Rayssa Jaqueline","PYyolynYmj", "betinarayssabernardes@6am.com.br", "Comum");
insert into Usuario(nome, senha, email, tipo) values("Anthony Erick Renato","yZoex1J9z2", "anthony-daconceicao87@ativa.inf.br", "Comum");
insert into Usuario(nome, senha, email, tipo) values("Julio Vicente da Rocha","Yuph5Mhqe1", "julio_vicente_darocha@eletrotex.com.br", "Comum");
insert into Usuario(nome, senha, email, tipo) values("Sandra Elisa Castro","HI7hHjwz1s", "sandra_elisa_castro@santarte.com", "Comum");
insert into Usuario(nome, senha, email, tipo) values("Esther Débora Pereira","wDZk1cm3QE", "esther-pereira87@tokiomarine.com.br", "Comum");

INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(1,'Noroeste Espirito Santo',2477,300, -19.23, -40.85);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(1,'Litoral Norte Espirito Santo',2324,1, -18.59, -39.73);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(1,'Central Espirito Santo',2646,9, -19.54, -40.63);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(1,'Sul Espirito Santo',2797,36, -20.85, -41.11);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(2,'Centro-Oeste de Minas',2233,856, -20.46, -45.43);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(2,'Jequitinhonha/Mucuri',2423,815, -16.43, -41);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(2,'Mata',2741,956, -21.86, -43.94);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(2,'Noroeste de Minas',2784,602, -16.65, -46.27);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(2,'Norte de Minas',2355,912, -15.17, -42.5);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(2,'Rio Doce',2991,836, -18.19, -42.41);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(2,'Sul de Minas',2004,858, -20.76, -45.92);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(2,'Triângulo Mineiro',2185,620, -18.87, -48.88);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(3,'Noroeste Fluminense',2580,591, -21.21, -41.89);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(3,'Norte Fluminense',2993,10, -21.64, -41.05);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(3,'Centro Fluminense',2649,2, -22.12, -43.21);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(3,'Baixadas Litorâneas',2495,0, -22.84, -42.1);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(3,'Sul Fluminense',2831,300, -22.25, -43.7);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(3,'Metropolitana - Rio de Janeiro',2235,1, -22.9, -43.21);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(4,'Grande São Paulo/Baixada Santista/Interior Metropolitano',2696,627,-23.55, -46.63);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(4,'Vale do Paraíba',2101,511, -23.18, -45.89);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(4,'Litoral Norte',2723,0, -23.62, -45.41);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(4,'Vale do Ribeira',2052,400, -24.66, -49.01);
INSERT INTO Regiao(cod_governo,localizacao,consumo, altitude, latitude, longitude) VALUES(4,'Oeste Paulista',2229,547, -21.21, -50.43);


INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Rio Paraíba do Sul',2,11,1587);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Itanhém',2,16,3019);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Buranhém',1,12,745);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Doce',2,4,829);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Grande',1,13,557);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Itabapoana',2,10,1522);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Itapemirim',1,10,2923);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Itaúnas',1,12,1481);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Jequitinhonha',2,16,3963);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Jucuruçu',1,5,2228);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Mucuri',2,15,2778);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Paranaíba',1,10,2576);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Pardo',2,16,3841);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Peruíbe',1,8,2225);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Piracicaba',2,5,1085);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('São Francisco',1,14,3097);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('São Mateus',1,12,2373);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Muriaé',2,6,727);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Pomba',2,10,2759);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Macabu',1,14,1318);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Santa Maria Da Vitória',1,11,3725);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Riacho',2,17,1500);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Seis Magos',1,7,3950);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Ribeira de Iguape',1,18,2731);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Tietê',2,9,3097);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Paraná',2,19,3279);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Paranapanema',1,9,1031);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Turvo',1,11,3163);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('do Peixe',1,5,2051);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Mogi-Guaçu',1,7,3953);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Jacaré-Pepira',1,5,2907);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Jacaré-Guaçu',2,10,2676);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Furnas',0,95,649);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Fumaça',0,114,501);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Jurumirim',0,58,543);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Billings',0,50,623);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Barra Bonita',0,19,688);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Paraibuna',0,53,731);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Promissão',0,42,576);
INSERT INTO Rio(nome,velocidade_agua,profundidade,extensao) VALUES('Nova Avanhandava',0,86,599);

INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(4,1);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(10,2);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(21,3);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(8,2);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(17,1);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(22,2);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(23,3);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(1,7);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(2,11);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(3,6);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(4,5);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(5,11);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(6,11);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(7,10);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(8,8);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(9,9);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(10,10);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(11,5);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(12,6);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(13,11);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(14,8);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(15,7);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(16,11);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(17,11);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(1,15);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(28,16);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(18,14);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(19,16);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(20,15);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(6,14);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(24,20);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(25,21);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(26,20);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(27,19);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(5,19);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(28,19);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(29,20);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(1,20);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(15,21);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(13,22);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(30,22);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(31,21);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(32,21);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(33,11);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(34,6);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(35,20);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(36,21);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(37,21);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(38,19);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(39,20);
INSERT INTO RioXRegiao(cod_rio, cod_regiao_rio) VALUES(40,22);

INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (1, 13.2, 1976, 5289);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (2, 10.6, 1800, 3979);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (3, 10.5, 1736, 5225);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (4, 10.7, 1886, 4861);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (5, 11.0, 1481, 4255);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (6, 12.4, 1478, 4400);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (7, 12.1, 1635, 4586);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (8, 12.9, 1702, 5345);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (9, 11.4, 1932, 4449);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (10, 12.7, 1651, 4591);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (11, 12.6, 1831, 3870);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (12, 12.2, 1545, 5318);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (13, 11.3, 1489, 4550);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (14, 13.3, 1562, 5678);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (15, 13.6, 1788, 5265);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (16, 12.1, 1431, 4337);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (17, 12.9, 1428, 4316);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (18, 11.7, 1994, 5646);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (19, 11.5, 1911, 5566);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (20, 13.1, 1519, 4891);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (21, 11.8, 1394, 4263);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (22, 11.1, 1870, 3992);
INSERT INTO Clima(IDclima, velo_vento, precicpitacao, inten_solar) VALUES (23, 10.2, 1351, 5473);

INSERT INTO Usina(custo_manutencao, custo_construcao, area_ocupada, tipo_Energia, capacidade) VALUES (1.6E10, 1E10, 1444.0, "Hidroelétrica", 1216.0);
INSERT INTO Usina(custo_manutencao, custo_construcao, area_ocupada, tipo_Energia, capacidade) VALUES (1E6, 1.3E10, 95.0, "Heliotérmica", 140.0);
INSERT INTO Usina(custo_manutencao, custo_construcao, area_ocupada, tipo_Energia, capacidade) VALUES (6E6, 6E9, 510.0, "Hidroelétrica", 700.0);
INSERT INTO Usina(custo_manutencao, custo_construcao, area_ocupada, tipo_Energia, capacidade) VALUES (1.5E6, 3E9, 12000.0, "Solar", 864.0);
INSERT INTO Usina(custo_manutencao, custo_construcao, area_ocupada, tipo_Energia, capacidade) VALUES (7.5E5, 1.5E8, 600.0, "Nuclear", 30.0);
INSERT INTO Usina(custo_manutencao, custo_construcao, area_ocupada, tipo_Energia, capacidade) VALUES (3.4E5, 7E7, 350.0, "Solar", 15.0);
INSERT INTO Usina(custo_manutencao, custo_construcao, area_ocupada, tipo_Energia, capacidade) VALUES (1.34E7, 6.7E8, 130.0, "Eólica", 300.0);
INSERT INTO Usina(custo_manutencao, custo_construcao, area_ocupada, tipo_Energia, capacidade) VALUES (1.2E6, 6E8, 13.0, "Heliotérmica", 30.0);
INSERT INTO Usina(custo_manutencao, custo_construcao, area_ocupada, tipo_Energia, capacidade) VALUES (4.4E6, 2.2E8, 50.0, "Eólica", 100.0);

INSERT INTO Impacto_Ambiental(area_desmatada, area_alagada, emissao_carbono, lixo_nuclear) VALUES (10000.0, 1440.0, 8000.0, 0);
INSERT INTO Impacto_Ambiental(area_desmatada, area_alagada, emissao_carbono, lixo_nuclear) VALUES (500, 95, 1000, 0);
INSERT INTO Impacto_Ambiental(area_desmatada, area_alagada, emissao_carbono, lixo_nuclear) VALUES (5100, 510, 4000, 0);
INSERT INTO Impacto_Ambiental(area_desmatada, area_alagada, emissao_carbono, lixo_nuclear) VALUES (12000, 0, 12, 0);
INSERT INTO Impacto_Ambiental(area_desmatada, area_alagada, emissao_carbono, lixo_nuclear) VALUES (300, 0, 12, 600);
INSERT INTO Impacto_Ambiental(area_desmatada, area_alagada, emissao_carbono, lixo_nuclear) VALUES (600, 0, 12, 0);
INSERT INTO Impacto_Ambiental(area_desmatada, area_alagada, emissao_carbono, lixo_nuclear) VALUES (350, 0, 12, 0);
INSERT INTO Impacto_Ambiental(area_desmatada, area_alagada, emissao_carbono, lixo_nuclear) VALUES (0, 0, 46, 0);
INSERT INTO Impacto_Ambiental(area_desmatada, area_alagada, emissao_carbono, lixo_nuclear) VALUES (0, 0, 46, 0);


Insert into Ocasiona VALUES (1, 1);
Insert into Ocasiona VALUES (2, 2);
Insert into Ocasiona VALUES (3, 3);
Insert into Ocasiona VALUES (4, 4);
Insert into Ocasiona VALUES (5, 5);
Insert into Ocasiona VALUES (6, 6);
Insert into Ocasiona VALUES (7, 7);
Insert into Ocasiona VALUES (8, 8);
Insert into Ocasiona VALUES (9, 9);

Insert into Construcao VALUES (1, 6, 2);
Insert into Construcao VALUES (2, 7, 3);
Insert into Construcao VALUES (3, 8, 4);
Insert into Construcao VALUES (4, 9, 5);
Insert into Construcao VALUES (5, 10, 6);
Insert into Construcao VALUES (6, 11, 7);
Insert into Construcao VALUES (7, 12, 8);
Insert into Construcao VALUES (8, 13, 9);
Insert into Construcao VALUES (9, 14, 10);

