use u765863036_dogu;


delimiter $
create procedure crudAdministradorPermissao(in vlcd_permissao int, vlcd_administrador int)
begin
    INSERT INTO administrador_permissao VALUES (vlcd_permissao, vlcd_administrador, '0');
    UPDATE administrador_permissao set ic_permitir = '1' where cd_permissao = vlcd_permissao and cd_administrador = vlcd_administrador;
    select * from administrador_permissao where cd_permissao = vlcd_permissao and cd_administrador = vlcd_administrador;
    DELETE FROM administrador_permissao WHERE  cd_permissao = vlcd_permissao AND cd_administrador = vlcd_administrador;

END $


-- call crudAdministradorPermissao(cd_permissao, cd_administrador);

delimiter $
create procedure crudClientePet(in vlcd_cliente int, vlcd_pet int)
begin
    INSERT INTO cliente_pet VALUES (vlcd_cliente, vlcd_pet);
    UPDATE cliente_pet set cd_pet = '1' where cd_cliente = vlcd_cliente and cd_pet = vlcd_pet;
    select * from cliente_pet where cd_cliente = vlcd_cliente and cd_pet = '1';
    UPDATE cliente_pet set cd_pet = vlcd_pet where cd_cliente = vlcd_cliente and cd_pet = '1';
    DELETE FROM cliente_pet WHERE  cd_cliente = vlcd_cliente AND cd_pet = vlcd_pet;

END $
-- call crudClientePet(cd_cliente, cd_pet);

delimiter $
create procedure crudPessoaEndereco(in vlcd_pessoa int, vlcd_endereco int)
begin
    INSERT INTO pessoa_endereco VALUES (vlcd_pessoa, vlcd_endereco, 1);
    UPDATE pessoa_endereco set cd_tipo_endereco = 2 where cd_pessoa = vlcd_pessoa and cd_endereco = vlcd_endereco;
    select * from pessoa_endereco where cd_pessoa = vlcd_pessoa and cd_endereco = vlcd_endereco;
    DELETE FROM pessoa_endereco WHERE  cd_pessoa = vlcd_pessoa AND cd_endereco = vlcd_endereco AND cd_tipo_endereco = '2';

END $
-- call crudPessoaEndereco(cd_pessoa, cd_endereco);

delimiter $
create procedure crudPessoaTelefone(in vlcd_pessoa int, vlcd_telefone int)
begin
    INSERT INTO pessoa_telefone VALUES (vlcd_pessoa, vlcd_telefone);
    UPDATE pessoa_telefone set cd_telefone = '1' where cd_pessoa = vlcd_pessoa and cd_telefone = vlcd_telefone;
    select * from pessoa_telefone where cd_pessoa = vlcd_pessoa and cd_telefone = '1';
    UPDATE pessoa_telefone set cd_telefone = vlcd_telefone where cd_pessoa = vlcd_pessoa and cd_telefone = '1';
    DELETE FROM pessoa_telefone WHERE  cd_pessoa = vlcd_pessoa AND cd_telefone = vlcd_telefone;

END $
-- call crudPessoaTelefone(cd_pessoa, cd_telefone);

delimiter $
create procedure crudPessoaTelefone(in vlcd_pessoa int, vlcd_telefone int)
begin
    INSERT INTO pessoa_telefone VALUES (vlcd_pessoa, vlcd_telefone);
    UPDATE pessoa_telefone set cd_telefone = '1' where cd_pessoa = vlcd_pessoa and cd_telefone = vlcd_telefone;
    select * from pessoa_telefone where cd_pessoa = vlcd_pessoa and cd_telefone = '1';
    UPDATE pessoa_telefone set cd_telefone = vlcd_telefone where cd_pessoa = vlcd_pessoa and cd_telefone = '1';
    DELETE FROM pessoa_telefone WHERE  cd_pessoa = vlcd_pessoa AND cd_telefone = vlcd_telefone;

END $
-- call crudPessoaTelefone(cd_pessoa, cd_telefone);

delimiter $
create procedure crudTbAdministrador(in vlcd_pessoa int, vlcd_login int)
begin
    declare vlcd_administrador int;

    SELECT MAX(cd_administrador)+1 into vlcd_administrador FROM tb_administrador;
    INSERT INTO tb_administrador VALUES (vlcd_administrador, vlcd_pessoa, vlcd_login);
    UPDATE tb_administrador set cd_login = '1' where cd_pessoa = vlcd_pessoa and cd_login = vlcd_login;
    select * from tb_administrador where cd_pessoa = vlcd_pessoa and cd_login = '1';
    UPDATE tb_administrador set cd_login = vlcd_login where cd_pessoa = vlcd_pessoa and cd_login = '1';
    DELETE FROM tb_administrador WHERE  cd_pessoa = vlcd_pessoa AND cd_login = vlcd_login;

END $
-- call crudTbAdministrador(cd_pessoa, cd_login);

delimiter $
create procedure crudTbAnimal(in vlcd_tipo_animal int, vlds_animal varchar(50))
begin
    declare vlcd_animal int;

    SELECT MAX(cd_animal)+1 into vlcd_animal FROM tb_animal;
    INSERT INTO tb_animal VALUES (vlcd_animal, vlcd_tipo_animal, vlds_animal);
    UPDATE tb_animal set ds_animal = '1' where cd_tipo_animal = vlcd_tipo_animal and ds_animal = vlds_animal and cd_animal = vlcd_animal;
    select * from tb_animal where cd_tipo_animal = vlcd_tipo_animal and ds_animal = '1' and cd_animal = vlcd_animal;
    UPDATE tb_animal set ds_animal = vlds_animal where cd_tipo_animal = vlcd_tipo_animal and ds_animal = '1' and cd_animal = vlcd_animal;
    DELETE FROM tb_animal WHERE  cd_tipo_animal = vlcd_tipo_animal AND ds_animal = vlds_animal and cd_animal = vlcd_animal;

END $
-- call crudTbAnimal(cd_tipo_animal, ds_animal);

delimiter $
create procedure crudTbBairro(in vlds_bairro varchar(50), vlcd_cidade int)
begin
    declare vlcd_bairro int;

    SELECT MAX(cd_bairro)+1 into vlcd_bairro FROM tb_bairro;
    INSERT INTO tb_bairro VALUES (vlcd_bairro, vlds_bairro, vlcd_cidade);
    UPDATE tb_bairro set cd_cidade = '1' where ds_bairro = vlds_bairro and cd_cidade = vlcd_cidade and cd_bairro = vlcd_bairro;
    select * from tb_bairro where ds_bairro = vlds_bairro and cd_cidade = '1' and cd_bairro = vlcd_bairro;
    UPDATE tb_bairro set cd_cidade = vlcd_cidade where ds_bairro = vlds_bairro and cd_cidade = '1' and cd_bairro = vlcd_bairro;
    DELETE FROM tb_bairro WHERE  ds_bairro = vlds_bairro AND cd_cidade = vlcd_cidade and cd_bairro = vlcd_bairro;

END $
-- call crudTbBairro(ds_bairro, cd_cidade);

delimiter $
create procedure crudTbCidade(in vlds_cidade varchar(80), vlsg_uf char(2))
begin
    declare vlcd_cidade int;

    SELECT MAX(cd_cidade)+1 into vlcd_cidade FROM tb_cidade;
    INSERT INTO tb_cidade VALUES (vlcd_cidade, vlds_cidade, vlsg_uf);
    UPDATE tb_cidade set sg_uf = 'SP' where ds_cidade = vlds_cidade and sg_uf = vlsg_uf and cd_cidade = vlcd_cidade;
    select * from tb_cidade where ds_cidade = vlds_cidade and sg_uf = 'SP' and cd_cidade = vlcd_cidade;
    UPDATE tb_cidade set sg_uf = vlsg_uf where ds_cidade = vlds_cidade and sg_uf = 'SP' and cd_cidade = vlcd_cidade;
    DELETE FROM tb_cidade WHERE  ds_cidade = vlds_cidade AND sg_uf = vlsg_uf and cd_cidade = vlcd_cidade;

END $
-- call crudTbCidade(ds_cidade, sg_uf);

delimiter $
create procedure crudTbCliente(in vlcd_pessoa int, vlcd_login int)
begin
    declare vlcd_cliente int;

    SELECT MAX(cd_cliente)+1 into vlcd_cliente FROM tb_cliente;
    INSERT INTO tb_cliente VALUES (vlcd_cliente, vlcd_pessoa, vlcd_login);
    UPDATE tb_cliente set cd_login = '1' where cd_pessoa = vlcd_pessoa and cd_login = vlcd_login;
    select * from tb_cliente where cd_pessoa = vlcd_pessoa and cd_login = '1';
    UPDATE tb_cliente set cd_login = vlcd_login where cd_pessoa = vlcd_pessoa and cd_login = '1';
    DELETE FROM tb_cliente WHERE  cd_pessoa = vlcd_pessoa AND cd_login = vlcd_login;

END $
-- call crudTbCliente(cd_pessoa, cd_login);

delimiter $
create procedure crudTbDenuncia(in vlcd_passeio int, vlcd_passeador int, vlcd_cliente int, vlcd_pet int, vlcd_tipo_denuncia int, vlds_denuncia mediumtext)
begin
    declare vlcd_denuncia int;

    SELECT MAX(cd_denuncia)+1 into vlcd_denuncia FROM tb_denuncia;
    INSERT INTO tb_denuncia VALUES (vlcd_denuncia, vlcd_passeio, vlcd_passeador, vlcd_cliente, vlcd_pet, vlcd_tipo_denuncia, vlds_denuncia);
    UPDATE tb_denuncia set cd_passeador = '1' 
        where cd_passeio = vlcd_passeio 
        and cd_passeador = vlcd_passeador 
        and cd_denuncia = vlcd_denuncia
        and cd_cliente = vlcd_cliente
        and cd_pet = vlcd_pet
        and cd_tipo_denuncia = vlcd_tipo_denuncia
        and ds_denuncia = vlds_denuncia;
    select * from tb_denuncia 
        where cd_passeio = vlcd_passeio 
        and cd_passeador = '1' 
        and cd_denuncia = vlcd_denuncia
        and cd_cliente = vlcd_cliente
        and cd_pet = vlcd_pet
        and cd_tipo_denuncia = vlcd_tipo_denuncia
        and ds_denuncia = vlds_denuncia;
    UPDATE tb_denuncia set cd_passeador = vlcd_passeador 
        where cd_passeio = vlcd_passeio 
        and cd_passeador = '1' 
        and cd_denuncia = vlcd_denuncia
        and cd_cliente = vlcd_cliente
        and cd_pet = vlcd_pet
        and cd_tipo_denuncia = vlcd_tipo_denuncia
        and ds_denuncia = vlds_denuncia;
    DELETE FROM tb_denuncia 
        WHERE  cd_passeio = vlcd_passeio 
        AND cd_passeador = vlcd_passeador 
        and cd_denuncia = vlcd_denuncia
        and cd_cliente = vlcd_cliente
        and cd_pet = vlcd_pet
        and cd_tipo_denuncia = vlcd_tipo_denuncia
        and ds_denuncia = vlds_denuncia;

END $
-- call crudTbDenuncia(cd_passeio, cd_passeador, cd_cliente, cd_pet, cd_tipo_denuncia, ds_denuncia);

delimiter $
create procedure crudTbEndereco(in vlds_endereco varchar(120), vlcd_cep char(8), vlds_complemento varchar(70), vlcd_bairro int)
begin
    declare vlcd_endereco int;

    SELECT MAX(cd_endereco)+1 into vlcd_endereco FROM tb_endereco;
    INSERT INTO tb_endereco VALUES (vlcd_endereco, vlds_endereco, vlcd_cep, vlds_complemento, vlcd_bairro);
    UPDATE tb_endereco set cd_cep = '00000000' 
        where ds_endereco = vlds_endereco 
        and cd_cep = vlcd_cep 
        and cd_endereco = vlcd_endereco
        and ds_complemento = vlds_complemento
        and cd_bairro = vlcd_bairro;
    select * from tb_endereco 
        where ds_endereco = vlds_endereco 
        and cd_cep = '00000000' 
        and cd_endereco = vlcd_endereco
        and ds_complemento = vlds_complemento
        and cd_bairro = vlcd_bairro;
    UPDATE tb_endereco set cd_cep = vlcd_cep 
        where ds_endereco = vlds_endereco 
        and cd_cep = '00000000' 
        and cd_endereco = vlcd_endereco
        and ds_complemento = vlds_complemento
        and cd_bairro = vlcd_bairro;
    DELETE FROM tb_endereco 
        WHERE  ds_endereco = vlds_endereco 
        AND cd_cep = vlcd_cep 
        and cd_endereco = vlcd_endereco
        and ds_complemento = vlds_complemento
        and cd_bairro = vlcd_bairro;

END $
-- call crudTbEndereco(ds_endereco, cd_cep, ds_complemento, cd_bairro);

delimiter $
create procedure crudTbGrupoPasseio(in vlcd_passeio int, vlcd_cliente int, vlcd_pet int)
begin
    INSERT INTO tb_grupo_passeio VALUES (vlcd_passeio, vlcd_cliente, vlcd_pet);
    UPDATE tb_grupo_passeio set cd_pet = '1' where cd_cliente = vlcd_cliente and cd_pet = vlcd_pet and cd_passeio = vlcd_passeio;
    select * from tb_grupo_passeio where cd_cliente = vlcd_cliente and cd_pet = '1' and cd_passeio = vlcd_passeio;
    UPDATE tb_grupo_passeio set cd_pet = vlcd_pet where cd_cliente = vlcd_cliente and cd_pet = '1' and cd_passeio = vlcd_passeio;
    DELETE FROM tb_grupo_passeio WHERE  cd_cliente = vlcd_cliente AND cd_pet = vlcd_pet and cd_passeio = vlcd_passeio;

END $
-- call crudTbGrupoPasseio(cd_passeio, cd_cliente, cd_pet);

delimiter $
create procedure crudTbLogin(in vlcd_email varchar(80), vlcd_senha varchar(80))
begin
    declare vlcd_login int;

    SELECT MAX(cd_login)+1 into vlcd_login FROM tb_login;
    INSERT INTO tb_login VALUES (vlcd_login, vlcd_email, vlcd_senha);
    UPDATE tb_login set cd_senha = '1' where cd_email = vlcd_email and cd_senha = vlcd_senha and cd_login = vlcd_login;
    select * from tb_login where cd_email = vlcd_email and cd_senha = '1' and cd_login = vlcd_login;
    UPDATE tb_login set cd_senha = vlcd_senha where cd_email = vlcd_email and cd_senha = '1' and cd_login = vlcd_login;
    DELETE FROM tb_login WHERE  cd_email = vlcd_email AND cd_senha = vlcd_senha and cd_login = vlcd_login;

END $
-- call crudTbLogin(cd_email, cd_senha);

delimiter $
create procedure crudTbNivel(in vlds_nivel varchar(50))
begin
    declare vlcd_nivel int;

    SELECT MAX(cd_nivel)+1 into vlcd_nivel FROM tb_nivel;
    INSERT INTO tb_nivel VALUES (vlcd_nivel, vlds_nivel);
    UPDATE tb_nivel set ds_nivel = 'TESTE' where ds_nivel = vlds_nivel and cd_nivel = vlcd_nivel;
    select * from tb_nivel where ds_nivel = 'TESTE' and cd_nivel = vlcd_nivel;
    UPDATE tb_nivel set cd_senha = vlcd_senha where ds_nivel = 'TESTE' and cd_nivel = vlcd_nivel;
    DELETE FROM tb_nivel WHERE  ds_nivel = 'TESTE' AND cd_nivel = vlcd_nivel;

END $
-- call crudTbNivel(ds_nivel);

