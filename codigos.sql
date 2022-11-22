
/*A test*/
alter table veiculo
add unique (placa);

/*B test*/
alter table motorista
modify nome_logradouro varchar(30) null;

/*C test*/
alter table carteira_habilitaçao
add unique (numero_CNH);

alter table carteira_habilitaçao
drop primary key;

alter table carteira_habilitaçao
add primary key (numero_do_motorista);

/*D test*/
insert into veiculo (numero_veiculo, placa, modelo, ano_de_fab, ano_de_modelo)
values ('1', 'xxx1111', 'onix', '2015', '2015');

insert into veiculo (numero_veiculo, placa, modelo, ano_de_fab, ano_de_modelo)
values ('2', 'xxx2222', 'uno', '2013', '2014');

insert into veiculo (numero_veiculo, placa, modelo, ano_de_fab, ano_de_modelo)
values ('3', 'xxx3333', 'palio', '2016', '2017');

insert into veiculo (numero_veiculo, placa, modelo, ano_de_fab, ano_de_modelo)
values ('4', 'xxx4444', 'f205', '2017', '2017');

insert into veiculo (numero_veiculo, placa, modelo, ano_de_fab, ano_de_modelo)
values ('5', 'xxx5555', 'ferrari', '2019', '2019');

insert into motorista (Numero_motorista, data_nascimento, DDD, celular, sexo, nome_logradouro, numero, CEP, Bairro, cidade)
values ('1', '1975-08-25', '51', '995678904', 'masculino', 'rua A', '118', '95890-000', 'b1', 'Porto Alegre');

insert into motorista (Numero_motorista, data_nascimento, DDD, celular, sexo, nome_logradouro, numero, CEP, Bairro, cidade)
values ('2', '1991-03-20', '51', '993875624', 'masculino', 'rua E', '298', '95890-000', 'z2', 'Porto Alegre');

insert into motorista (Numero_motorista, data_nascimento, DDD, celular, sexo, nome_logradouro, numero, CEP, Bairro, cidade)
values ('3', '1989-12-01', '51', '980967234', 'feminino', 'rua Z', '710', '95890-000', 'm3', 'Porto Alegre');

insert into motorista (Numero_motorista, data_nascimento, DDD, celular, sexo, nome_logradouro, numero, CEP, Bairro, cidade)
values ('4', '1982-10-06', '51', '992671205', 'masculino', 'rua U', '395', '95890-000', 'k4', 'Porto Alegre');

insert into motorista (Numero_motorista, data_nascimento, DDD, celular, sexo, nome_logradouro, numero, CEP, Bairro, cidade)
values ('5', '1979-02-14', '51', '999997654', 'masculino', 'rua G', '1050', '95890-000', 'p7', 'Porto Alegre');

insert into chamado (data_chamado, DDD, telefone, local_de_destino, local_de_origem, numero_de_chamado)
values ('2021-05-25', '51', '985742910', 'rua Z', 'rua M', '00123');

insert into chamado (data_chamado, DDD, telefone, local_de_destino, local_de_origem, numero_de_chamado)
values ('2021-05-25', '51', '992987612', 'rua s', 'rua l', '00124');

insert into chamado (data_chamado, DDD, telefone, local_de_destino, local_de_origem, numero_de_chamado)
values ('2021-05-26', '51', '993465091', 'rua U', 'rua M', '00135');

insert into chamado (data_chamado, DDD, telefone, local_de_destino, local_de_origem, numero_de_chamado)
values ('2021-05-27', '51', '996715238', 'rua Q', 'rua E', '00141');

insert into chamado (data_chamado, DDD, telefone, local_de_destino, local_de_origem, numero_de_chamado)
values ('2021-05-27', '51', '994328753', 'rua J', 'rua E', '00151');

insert into boleto (numero_boleto, empresa_conveniada)
values ('1923871298', 'empresaA');

insert into boleto (numero_boleto, empresa_conveniada)
values ('1184763857', 'empresaB');

insert into boleto (numero_boleto, empresa_conveniada)
values ('1002357293', 'empresaB');

insert into boleto (numero_boleto, empresa_conveniada)
values ('1321789433', 'empresaD');

insert into boleto (numero_boleto, empresa_conveniada)
values ('1308275639', 'empresaC');

insert into carteira_habilitaçao (numero_do_motorista, numero_CNH, Categoria_CNH, data_emissão, data_validade)
values ('1', '21385709', 'b', '2004-07-28', '2030-07-25');

insert into carteira_habilitaçao (numero_do_motorista, numero_CNH, Categoria_CNH, data_emissão, data_validade)
values ('2', '09217512', 'b', '2009-07-27', '2035-02-15');

insert into carteira_habilitaçao (numero_do_motorista, numero_CNH, Categoria_CNH, data_emissão, data_validade)
values ('3', '89672591', 'b', '1995-07-18', '2022-09-18');

insert into carteira_habilitaçao (numero_do_motorista, numero_CNH, Categoria_CNH, data_emissão, data_validade)
values ('4', '90815891', 'b', '1991-01-20', '2027-04-22');

insert into carteira_habilitaçao (numero_do_motorista, numero_CNH, Categoria_CNH, data_emissão, data_validade)
values ('5', '42178965', 'b', '1993-03-14', '2021-09-02');

insert into indica (numero_veiculo, numero_chamado)
values ('1', '00151');

insert into indica (numero_veiculo, numero_chamado)
values ('2', '00141');

insert into indica (numero_veiculo, numero_chamado)
values ('3', '00135');

insert into indica (numero_veiculo, numero_chamado)
values ('1', '00124');

insert into indica (numero_veiculo, numero_chamado)
values ('3', '00123');

/*e test*/
select * from chamado;

/*f test*/
select * from chamado
where local_de_destino = 'rua U';

/*g test*/
SELECT COUNT(*)
from indica
where numero_veiculo = 1 ;

/*h test*/
select * from veiculo
order by ano_de_fab DESC;

select * from veiculo
order by ano_de_modelo DESC;

/*i test*/
select * from chamado, indica, veiculo
where chamado.local_de_origem = 'rua M' 
and indica.numero_chamado = chamado.numero_de_chamado 
and indica.numero_veiculo = veiculo.numero_veiculo;

/*j test*/
insert into motorista (Numero_motorista, data_nascimento, DDD, celular, sexo, nome_logradouro, numero, CEP, Bairro, cidade)
values ('6', '1986/11/14', '51', '996871564', 'masculino', 'rua R', '555', '95890-000', 'Q3', 'Porto Alegre');

insert into motorista (Numero_motorista, data_nascimento, DDD, celular, sexo, nome_logradouro, numero, CEP, Bairro, cidade)
values ('7', '1989/04/18', '51', '99851627', 'masculino', 'rua F', '421', '95890-000', 'I2', 'Porto Alegre');

/*k test*/
update motorista
set celular = '999741238'
where Numero_motorista = '6';

update motorista
set celular = '989745123'
where Numero_motorista = '7';

/*l test*/
delete from motorista where Numero_motorista = '6';
delete from motorista where Numero_motorista = '7';

/*m test*/
DROP DATABASE taxi_maya;