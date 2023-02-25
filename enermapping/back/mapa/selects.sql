select * from Clima join Regiao on Regiao.IDRegiao = Clima.IDclima;


SELECT latitude,longitude, localizacao, cod_governo, cod_empresa, cod_usina, 
custo_manutencao, custo_construcao, area_ocupada, tipo_energia, capacidade 
from Usina join ((
(Regiao join Construcao on Regiao.IDRegiao = Construcao.cod_regiao)
  join Empresa_de_energia on Empresa_de_energia.IDusuario = Construcao.cod_empresa)
  ) on Usina.IDusina = Construcao.cod_usina;
  
  
SELECT idusina, capacidade from Usina;

SELECT idusina, area_desmatada, area_alagada, emissao_carbono, lixo_nuclear from (
	Usina join Ocasiona on Usina.IDusina = Ocasiona.cod_usina) 
	JOIN Impacto_Ambiental on Ocasiona.cod_impacto = Impacto_Ambiental.IDimpacto;
    
    
SELECT localizacao , latitude , longitude, consumo, idusina, capacidade FROM (
  	Regiao join Construcao on Regiao.IDRegiao = Construcao.cod_regiao)
    join Usina on Usina.IDusina = Construcao.cod_usina;


#usado
select Regiao.cod_governo, Regiao.localizacao,Regiao.consumo from (Regiao inner join RioXRegiao on 
Regiao.IDRegiao = RioXRegiao.cod_regiao_rio) left join Rio on RioXRegiao.cod_rio = Rio.IDrio where nome = 'Rio Paraíba do Sul';

#usado
select latitude,longitude from (Rio inner join RioXRegiao on Rio.IDrio = RioXRegiao.cod_rio) left join Regiao on RioXRegiao.cod_regiao_rio = Regiao.IDRegiao
where localizacao = "Vale do Paraíba"; 

select * from Rio where profundidade > 10;

#usado
select * from Regiao order by consumo DESC limit 5;

select AVG(consumo) from Regiao;



select * from Usuario where email = "estado@ES.gov.br" and senha = "WPGnQDJft2Oo";

select * from Usuario inner join Governo on Usuario.tipo = "Governo" and Usuario.IDusuario = Governo.IDusuario;

select * from Usuario inner join Empresa_de_energia on Usuario.tipo = "Empresa" and Usuario.IDusuario = Empresa_de_energia.IDusuario;
