create table Usuario(IDusuario  int primary key AUTO_INCREMENT,
nome varchar(30) not null,
senha varchar(30) not null,
email varchar(50) not null,
tipo varchar(12) not null);

create table Governo(IDusuario int primary key references Usuario (IDusuario),
Estado ENUM('ES','MG', 'RJ', 'SP')  not null
);

create table Empresa_de_energia(IDusuario int primary key references Usuario (IDusuario),
cnpj varchar(18) not null);

create table Regiao(IDRegiao int primary key AUTO_INCREMENT,
cod_governo int not null references Governo(IDusuario),
localizacao varchar(180) not null,
consumo int not null, altitude int not null,
latitude real not null,
longitude real not null);

create table Clima(IDclima int primary key REFERENCES Regiao(IDRegiao),
velo_vento int null,
precicpitacao int null,
inten_solar int null
);

create table Rio(IDrio int primary key AUTO_INCREMENT,
nome varchar(30) not null,
velocidade_agua int not null,
profundidade int not null,
extensao int not null);

create table RioXRegiao(cod_regiao_rio int not null references Regiao(IDRegiao),
cod_rio int not null references Rio(IDrio),
primary key (cod_regiao_rio, cod_rio));


create table Usina(IDusina int primary key AUTO_INCREMENT,
custo_manutencao decimal(15, 2) not null,
custo_construcao decimal(15, 2) not null,
area_ocupada float not null,
tipo_Energia varchar(80),
capacidade float not null);

create table Construcao(cod_usina int not null references Usina(IDusina),
cod_empresa int not null references Empresa_de_energia(IDusuario),
primary key (cod_usina, cod_empresa),
cod_regiao int not null REFERENCES Regiao(idregiao));

create table Impacto_Ambiental(IDimpacto int primary key AUTO_INCREMENT,
area_desmatada float not null,
area_alagada float not null,
emissao_carbono float not null,
lixo_nuclear float not null);

create table Ocasiona(cod_usina int not null references Usina(IDusina),
cod_impacto int not null references Impacto_Ambiental(IDimpacto),
primary key (cod_usina, cod_impacto));

