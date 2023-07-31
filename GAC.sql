
create table Setores(
id_sigla varchar(10) not null constraint pk_sigla_setor primary key, 
nom_setor varchar(50) not null constraint uk_nom_setor unique,


)


create table Servidores (

id_matricula int not null constraint pk_matricula primary key,
nom_servidor varchar(50) not null constraint uk_nome_servidor unique,
cpf_servidor int not null constraint uk_cpf_servidor unique,
sigla_uf char(2) not null, 
val_salario numeric(7,2) not null

)

ALTER TABLE Servidores ADD Cargo varchar(40) not null;


ALTER TABLE Setores ADD loc_sigla varchar(5) not null;

create table Localizacao(
id_loc int not null constraint pk_id_loc primary key,
nom_loc varchar(5) not null constraint uk_nom_loc unique 



)

ALTER TABLE Servidores
ADD CONSTRAINT uk_cpf_servidor unique (cpf_servidor)
FOREIGN KEY (sigla_setor)  
REFERENCES Setores (id_sigla);






select * from Servidores
select * from Setores
select * from Localizacao


TRUNCATE TABLE LOCALIZACAO
insert into Localizacao values(1, 'PI'),
								(2, 'ET'),
								(3, 'CDA');

insert into Setores values ('GITI','GERÊNCIA DE INFRAESTRUTURA DE TI', 'ET'),
							('GTEC','GERÊNCIA DE TECNOLOGIA E REDE', 'ET'),
							('GGA','GERÊNCIA DE GORVERNANÇA E ADMINISTRAÇÃO', 'ET'),
							('GGOV','GERÊNCIA DE GOVERNO ELETRÔNICO', 'ET'),
							('GSIS','GERÊNCIA DE SISTEMAS CORPORATIVOS', 'ET') 

ALTER TABLE Servidores
ALTER TABLE Servidores
ALTER COLUMN cpf_servidor varchar(11);


insert into Servidores values 	
/*
GAC
*/
(5657, 'Carmem Lúcia de Carvalho Dias', 22222222222, 'MG', 25000, 'GAC', 'TECNICO'),
								(5232, 'Terezinha de Jesus Moura Brito', 23232323232, 'MG', 25000, 'GAC', 'TECNICO'),
								(4049, 'Hildemar Rodrigues Falcão Júnior', 33333333333, 'MG', 35000, 'GAC', 'GERENTE'),
								(17659, 'Juliana Abreu de Almeida Amorim', 44444444444, 'MG', 15000, 'GAC', 'TECNICO'),
								(20122, 'Manuel Jorge Maciel Tavares de Souza', 55555555555, 'SC', 18500, 'GAC', 'ANALISTA'),
								(20469, 'Ronaldo Mol da Silva', 66666666666, 'MG', 18500, 'GAC', 'ANALISTA'),
								(23337, 'Tiago Marques Delboni', 77777777777, 'MG', 18500, 'GAC', 'ANALISTA'),
								(23355, 'Amarildo Rodrigues de Oliveira', 88888888888, 'MG', 18500, 'GAC', 'ANALISTA'),
								(23621, 'Alexandre Sauer Pais Lemes', 99999999999, 'MG', 18500, 'GAC', 'ANALISTA'),
								(24596, 'Rafael Alcantara de Paula', 10101010101, 'MG', 18500, 'GAC', 'ANALISTA'),
								(28724, 'Leonardo Said Barbosa', 30303030303, 'MG', 18500, 'GAC', 'ANALISTA'),
								(28355, 'Matheus de Almeida Barroso', 01010101010, 'MG', 1300, 'GAC', 'ESTAGIÁRIO'),
								(28360, 'Victor Eduardo de Souza', 20202020202, 'MG', 1300, 'GAC', 'ESTAGIÁRIO'),
								(28713, 'João Victor Almeida Arantes', 34343434343, 'MG', 1300, 'GAC', 'ESTAGIÁRIO'),
								(28762, 'Pablo Lucas Santana Queiroz', 54545454545, 'MG', 1300, 'GAC', 'ESTAGIÁRIO'),
								(28896, 'Luiz Henrique Marinho Vieira de Castro', 67676767676, 'MG', 1300, 'GAC', 'ESTAGIÁRIO')

/*
GITI
*/
insert into Servidores values (17432, 'Eduardo de Queiroz Braga', 94576325463, 'MG', 35000, 'GITI', 'GERENTE'),
								(5286, 'Decio Luiz Defeo', 12345678910, 'RJ', 20000, 'GITI', 'TECNICO DE INFRA'),
								(5598, 'Ronan Leão do Amaral', 01234567891, 'SP', 25000, 'GITI', 'TECNICO DE INFRA'),
								(5499, 'Narcélio Cézar Campos', 15975863214, 'SP', 25000, 'GITI', 'TECNICO DE INFRA'),
								(17733, 'Orlando Laboissière', 64872154975, 'MG', 25000, 'GITI', 'TECNICO DE INFRA'),
								(19846, 'Paulo Alves Pinto', 78423691871, 'RJ', 25000, 'GITI', 'TECNICO DE INFRA'),
								(19887, 'Murilo Almeida Kamond Tarabay',54312046794, 'BA', 25000, 'GITI', 'TECNICO DE INFRA'),
								(23338, 'Vinicius Tinti de Paula Oliveira', 15324569874, 'MG', 18500, 'GITI', 'ANALISTA DE REDE'),
								(24165, 'Sergio Augusto Pereira Gomes', 54310210016, 'RJ', 25000, 'GITI', 'TECNICO DE INFRA'),
								(26040, 'Ivan Dornela Goulart', 54663120914, 'MG', 18500, 'GITI', 'ANALISTA DE REDE'),
								(28064, 'Filipe Eduardo Bispo Pereira', 41785203697, 'RJ', 25000, 'GITI', 'TECNICO DE INFRA'),
								(28630, 'Rafael de Souza Rocha', 85440132467, 'MG', 25000, 'GITI', 'TECNICO DE INFRA'),
								(28631, 'Gabriel de Souza Rocha', 88759963240, 'MG', 25000, 'GITI', 'TECNICO DE INFRA'),
								(28686, 'Matheus Sousa Santos', 67845102437, 'SP', 25000, 'GITI', 'TECNICO DE INFRA'),
								(28716, 'Gabriel Gomes Firmiano', 87548761320, 'MG', 25000, 'GITI', 'TECNICO DE INFRA'),
								(28805, 'João Vitor Costa Rodrigues', 45221378940, 'MG', 25000, 'GITI', 'TECNICO DE INFRA')



/*


GTEC


*/
insert into Servidores values (7220, 'Flávio Hannas Resende ', 15427896643, 'MG', 35000, 'GTEC', 'GERENTE'),
								(6768, 'Marcus Vinícius de Melo Rocha', 78754697810, 'MG', 25000, 'GTEC', 'ANALISTA DE REDE'),
								(17405, 'Bernardo Cunha Vieira', 78451245796, 'SP', 25000, 'GTEC', 'ANALISTA DE REDE'),
								(24134, 'Breno Silveira Soares', 24531546792, 'MG', 25000, 'GTEC', 'ANALISTA DE REDE'),
								(23340, 'Cristiano de Paula Costa', 54963278910, 'MG', 25000, 'GTEC', 'ANALISTA DE REDE'),
								(23360, 'Daniel Andrade Costa Silva', 86231546791, 'MG', 25000, 'GTEC', 'ANALISTA DE REDE'),
								(24069, 'Lino Alves Carvalho', 65412587410, 'RJ', 25000, 'GTEC', 'ANALISTA DE REDE'),
								(26106, 'Renato Lopes de Morais', 14742336541, 'MG', 25000, 'GTEC', 'ANALISTA DE REDE')



		/*


GGA


*/		

insert into Servidores values (5012, 'Luiz Antônio Rocha Couto', 25699364154, 'MG', 35000, 'GGA', 'GERENTE'),
								(17508, 'Cristina Machado Leão', 85421376451, 'MG', 25000, 'GGA', 'TECNICO'),
								(17647, 'Fabio Augusto Fernandes da Silva', 14752365410, 'MG', 25000, 'GGA', 'TECNICO'),
								(26043, 'Patrícia Lima Quintão', 42236587419, 'SP', 25000, 'GGA', 'TECNICO'),
								(5895, 'Silvana Vilela Ribeiro', 14785632547, 'SP', 25000, 'GGA', 'TECNICO'),
								(28166, 'Samuel Lucas Vieira', 11423658670, 'MG', 1300, 'GGA', 'ESTAGIÁRIO'),
								(28336, 'Arthur Lima Fernandes', 45236985123, 'MG', 1300, 'GGA', 'ESTAGIÁRIO'),
								(28341, 'Emerson Silva de Figueiredo Ribeiro',41785236481, 'MG', 1300, 'GGA', 'ESTAGIÁRIO'),
								(28620, 'Pedro Henrique Bispo Silveira Santos', 51428793514, 'MG', 1300, 'GGA', 'ESTAGIÁRIO'),
								(28736, 'Luigi Palma Roos', 25414785691, 'SP', 1300, 'GGA', 'ESTAGIÁRIO'),
								(28745, 'Guilherme Gonçalves Santos', 41785763140, 'RJ', 1300, 'GGA', 'ESTAGIÁRIO'),


					/*


GGOV


*/					
insert into Servidores values (12034, 'Joel Cézar Neto', 14756258631, 'MG', 35000, 'GGOV', 'GERENTE'),
										(7222, 'Humberto Guerra Fernandes', 14257896325, 'MG', 25000, 'GGOV', 'ANALISTA'),
										(5555, 'Maria de Fátima Gama Massara', 54178523641, 'SP', 25000, 'GGOV', 'ANALISTA'),
										(17510, 'Arnaldo Câmara Lara', 15467327840, 'MG', 25000, 'GGOV', 'ANALISTA'),
										(17719, 'Márcio Michieletto de Andrade',41785231540, 'MG', 25000, 'GGOV', 'ANALISTA'),
										(18633, 'Luiz Eduardo Xavier ', 45721346751, 'MG', 25000, 'GGOV', 'ANALISTA'),
										(19667, 'Ricardo Braga de Castro',12436754013, 'MG', 25000, 'GGOV', 'ANALISTA'),
										(23417, 'André Fillipe de Oliveira', 12436754019, 'RJ', 25000, 'GGOV', 'ANALISTA'),
										(23525, 'Alexandre Portugal Sousa', 14236541025, 'BA', 25000, 'GGOV', 'ANALISTA'),
										(24087, 'Eric Rodrigues Guimarães', 12234569871, 'MG', 25000, 'GGOV', 'ANALISTA'),
										(24107, 'Raphael Ribeiro Gomide',34175412851, 'MG', 25000, 'GGOV', 'ANALISTA'),
										(25616, 'Raphael Pena Cavalcanti', 22539641781, 'BA', 25000, 'GGOV', 'ANALISTA'),
										(26039, 'Talles Henrique Espíndola',14785236974, 'MG', 25000, 'GGOV', 'ANALISTA'),
										(26075, 'Walter dos Santos Filho', 14752231410, 'SP', 25000, 'GGOV', 'ANALISTA')



	
	
	/*


	GSIS

	*/


insert into Servidores values (5645, 'Gilcemar do Couto', 24154523651, 'MG', 35000, 'GSIS', 'GERENTE'),
							  (12094, 'Armando Campos Filho', 14578523654, 'SP', 25000, 'GSIS', 'ANALISTA'),
							  (25621, 'Bárbara Bruna Machado', 14236541014, 'MG', 25000, 'GSIS', 'ANALISTA'),
							  (11934, 'Daniel Birchal Braga', 56985214785, 'SP', 25000, 'GSIS', 'ANALISTA'),
							  (24063, 'Danilo Ferreira e Silva', 42136497510, 'MG', 25000, 'GSIS', 'ANALISTA'),
							  (24120, 'Duílio Campos Sasdelli', 85478569810, 'MG', 25000, 'GSIS', 'ANALISTA'),
							  (6767, 'Fernando Maia Tepedino', 14236578410, 'BA', 25000, 'GSIS', 'ANALISTA'),
							  (23414, 'Henrique Favarini Alves', 11442578451, 'MG', 25000, 'GSIS', 'ANALISTA'),
							   (11920, 'Isabela Cruz Moreira',42331678940, 'RJ', 25000, 'GSIS', 'ANALISTA'),
							    (3937, 'José Luís Costa Azevedo', 20134670015, 'MG', 25000, 'GSIS', 'ANALISTA'),
								 (18820, 'Júlio César e Melo', 66945721045, 'MG', 25000, 'GSIS', 'ANALISTA'),
								  (23358, 'Leandro Souza Costa', 15534875620, '', 25000, 'GSIS', 'ANALISTA'),
								  (14459, 'Leonardo Camargos', 97452154613, 'MG', 25000, 'GSIS', 'ANALISTA'),
								   (25668, 'Luiz Henrique Maia Cruz', 45223154781, 'MG', 25000, 'GSIS', 'ANALISTA'),
								    (25691, 'Magno do Carmo e Silva', 32478415478, 'BA', 25000, 'GSIS', 'ANALISTA'),
									 (14435, 'Marcelo Sampaio Silva', 75315985264, 'MG', 25000, 'GSIS', 'ANALISTA'),
									 (23503, 'Mauricio Pereira Maia', 85234679181, 'BA', 25000, 'GSIS', 'ANALISTA'),
									 (18708, 'Odilon Vanni de Queiroz', 18566320017, 'MG', 25000, 'GSIS', 'ANALISTA'),
									 (23348, 'Pablo Henrique Reis', 33214785641, 'RJ', 25000, 'GSIS', 'ANALISTA'),
									 (26060, 'Paulo Henrique da Silva', 74859632101, 'MG', 25000, 'GSIS', 'ANALISTA'),
									 (25069, 'Pedro de Lima Abrão', 31245610720, 'RJ', 25000, 'GSIS', 'ANALISTA'),
									 (26082, 'Poliana Lopes Fialho',58254163980, 'MG', 25000, 'GSIS', 'ANALISTA'),
									 (3993, 'Renan Pinto Domingos',15872365410, 'MG', 25000, 'GSIS', 'ANALISTA'),
									  (26141, 'Tassni Eunice Miguel',42589631000, 'SP', 25000, 'GSIS', 'ANALISTA'),
									  (5841, 'Ronald Andrade Gomes',85749621458, 'MG', 25000, 'GSIS', 'ANALISTA')
									  





/*

SELECTS

*/

/*
SELECT (TODOS FUNCIONARIOS DA GAC)
*/

select * from servidores s
inner join setores se on se.id_sigla = s.sigla_setor
where s.sigla_setor like 'GAC'


/*

SELECT (TODAS AS MATRICULAS QUE SÃO GERENTES)

*/

select s.id_matricula, s.nom_servidor from Servidores s
WHERE s.cargo like 'GERENTE'


/*

SELECT (ACHANDO UM ANALISTA PELO SOBRENOME)

*/

select s.id_matricula, s.nom_servidor, S.Cargo from Servidores s
where s.nom_servidor like '%Sauer%'




/*

SELECT (MEDIA DOS SALARIOS DA GAC) 

*/

select avg(s.val_salario) from Servidores s
where s.sigla_setor like 'GAC'


/*

SELECT (MATRICULAS ABAIXO DE 10000) 

*/


select s.id_matricula, s.nom_servidor from Servidores s
where s.id_matricula < 10000



/*

SELECT (PEGAR O MAIOR SALARIO DE CADA ESTADO) 

*/



select max(s.val_salario) as 'SALARIO' from Servidores s
where s.sigla_uf like 'MG'  

UNION 

select max(s.val_salario) as 'SALARIO' from Servidores s
where s.sigla_uf like 'BA'
group by s.nom_servidor
UNION

select max(s.val_salario) from Servidores s
where s.sigla_uf like 'RJ'  






















alter table Servidores drop constraint uk_cpf_servidor

alter table Setores drop column loc_sigla

TRUNCATE TABLE Setores

drop table Setores