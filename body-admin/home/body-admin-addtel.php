<?php
if($_SESSION['perm'][14][1] != 1 && $_SESSION['perm'][0][1] != 1){
    header("Location: index.php?sair=sim");  
}
function validaDados() {
    if(
        !isset($_POST['nmPessoa']) ||
        !isset($_POST['cdEmail']) ||
        !isset($_POST['cdCpf']) ||
        !isset($_POST['cdRg']) ||
        !isset($_POST['dtNascimento']) ||
        !isset($_POST['novasenha1']) ||
        !isset($_POST['novasenha2'])
    ){
        echo "<script>alert('Ops! Preencha todos os campos!');</script>";
        apagarDados();
        return false;
    }else if ($_POST['novasenha1'] != $_POST['novasenha2']){
        $_SESSION['erro'] = "Ops! As senhas não conferem!";
        apagarDados();
        return false;
    }else if(!validaCPF($_POST['cdCpf'])){
        $_SESSION['erro'] = "Ops! O cpf é inválido!";
        apagarDados();
        return false;
    }else if(verificaIdade($_POST['dtNascimento']) < 18){
        $_SESSION['erro'] = "Ops! O administrador é menor de idade!";
        apagarDados();
        return false;
    }else{
        return true;
    }
}

function apagarDados() {
    unset($_POST['nmPessoa']);
    unset($_POST['cdEmail']);
    unset($_POST['cdCpf']);
    unset($_POST['cdRg']);
    unset($_POST['dtNascimento']);
    unset($_POST['novasenha1']);
    unset($_POST['novasenha2']);
    return;
}

if(isset($_POST['btnAdicionar'])){
    if(validaDados()){
        unset($_POST['btnAdicionar']);
        $rg = limpaCPF_RG($_POST['cdRg']);
        $cpf = limpaCPF_RG($_POST['cdCpf']);
        $sql = 'CALL criarAdministrador("'.$cpf.'", "'.$rg.'", "'.$_POST['nmPessoa'].'", "'.$_POST['cdEmail'].'", "'.$_POST['novasenha1'].'", "'.$_POST['dtNascimento'].'");';
        mysqli_query($conexao,$sql) or die(header("Location: index.php"));
        $_SESSION['sucesso'] = "Cadatro realizado com sucesso!";
        apagarDados();        
    }
}




?>
<div class="row">
    <div class="col-md-2">
        <a href="index.php" class="btn btn-primary btn-lg btn-block">Voltar</a>
    </div>
    <div class="col-md-8 text-center">
        <h2>Adicionar Administrador </h2>   
    </div>
    <div class="col-md-2"></div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
        <form class="form-group" name="addusuario" action="page-admin-funcoes.php?funcao=addadm" method="POST">
            <div class="form-group">
                <label>Nome do administrador:</label>
                <input name="nmPessoa" class="form-control" type="text" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <label>Nome da Pessoa:</label>
                <input type="text" class="form-control" list="PessoasAtivas" autocomplete="off" required>
            </div>
            <div class="form-group">
                <label>CPF:</label>
                <input name="cdCpf" class="form-control" type="text" onKeyPress="MascaraCPF(addusuario.cdCpf);" maxlength="14" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <button type="submit" name="btnAdicionar" class="btn btn-danger btn-lg btn-block" >Adicionar Administrador</button>
            </div>

            <datalist id="PessoasAtivas">
                <option value="ARTHUR HENRIQUE CORREA COSTA - CPF: 501.993.658-81" ></option>
            </datalist>

            <script>  
                //adiciona mascara ao CPF
                function MascaraCPF(cpf){
                        if(mascaraInteiro(cpf)==false){
                                event.returnValue = false;
                        }       
                        return formataCampo(cpf, '000.000.000-00', event);
                }
                //valida numero inteiro com mascara
                function mascaraInteiro(){
                        if (event.keyCode < 48 || event.keyCode > 57){
                                event.returnValue = false;
                                return false;
                        }
                        return true;
                }
                //formata de forma generica os campos
                function formataCampo(campo, Mascara, evento) { 
                        var boleanoMascara; 

                        var Digitato = evento.keyCode;
                        exp = /\-|\.|\/|\(|\)| /g
                        campoSoNumeros = campo.value.toString().replace( exp, "" ); 

                        var posicaoCampo = 0;    
                        var NovoValorCampo="";
                        var TamanhoMascara = campoSoNumeros.length;; 

                        if (Digitato != 8) { // backspace 
                                for(i=0; i<= TamanhoMascara; i++) { 
                                        boleanoMascara  = ((Mascara.charAt(i) == "-") || (Mascara.charAt(i) == ".")
                                                                                || (Mascara.charAt(i) == "/")) 
                                        boleanoMascara  = boleanoMascara || ((Mascara.charAt(i) == "(") 
                                                                                || (Mascara.charAt(i) == ")") || (Mascara.charAt(i) == " ")) 
                                        if (boleanoMascara) { 
                                                NovoValorCampo += Mascara.charAt(i); 
                                                TamanhoMascara++;
                                        }else { 
                                                NovoValorCampo += campoSoNumeros.charAt(posicaoCampo); 
                                                posicaoCampo++; 
                                        }              
                                }      
                                campo.value = NovoValorCampo;
                                return true; 
                        }else { 
                                return true; 
                        }
                }
            </script>
        </form>
    </div>
    <div class="col-lg-4 col-md-4"></div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
        <?php
        if(isset($_SESSION['erro'])){
        echo"<div class='alert alert-danger' role='alert'>
                ".$_SESSION['erro']."
            </div>";
        unset($_SESSION['erro']);
        }else if(isset($_SESSION['sucesso'])){
        echo"<div class='alert alert-info' role='alert'>
                ".$_SESSION['sucesso']."
            </div>";
        unset($_SESSION['sucesso']);
        }
        ?>
    </div>
    <div class="col-lg-4 col-md-4"></div>
</div>
