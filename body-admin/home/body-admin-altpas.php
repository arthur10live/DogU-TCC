<?php
if($_SESSION['perm'][1][1] != 1 && $_SESSION['perm'][0][1] != 1){
    header("Location: index.php?sair=sim");  
}

function validaCPF($cpf = null) {

	// Verifica se um número foi informado
	if(empty($cpf)) {
		return false;
	}

	// // Elimina possivel mascara
	// $cpf = preg_replace("/[^0-9]/", "", $cpf);
	// $cpf = str_pad($cpf, 11, '0', STR_PAD_LEFT);
	
	// Verifica se o numero de digitos informados é igual a 11 
	if (strlen($cpf) != 11) {
		return false;
	}
	// Verifica se nenhuma das sequências invalidas abaixo 
	// foi digitada. Caso afirmativo, retorna falso
	else if ($cpf == '00000000000' || 
		$cpf == '11111111111' || 
		$cpf == '22222222222' || 
		$cpf == '33333333333' || 
		$cpf == '44444444444' || 
		$cpf == '55555555555' || 
		$cpf == '66666666666' || 
		$cpf == '77777777777' || 
		$cpf == '88888888888' || 
		$cpf == '99999999999') {
		return false;
	 // Calcula os digitos verificadores para verificar se o
	 // CPF é válido
	 } else {   
		
		for ($t = 9; $t < 11; $t++) {
			
			for ($d = 0, $c = 0; $c < $t; $c++) {
				$d += $cpf{$c} * (($t + 1) - $c);
			}
			$d = ((10 * $d) % 11) % 10;
			if ($cpf{$c} != $d) {
				return false;
			}
		}

		return true;
	}
}

function verificaIdade($data){
     list($ano, $mes, $dia) = explode('-', $data);
     $hoje = mktime(0, 0, 0, date('m'), date('d'), date('Y'));
     $nascimento = mktime( 0, 0, 0, $mes, $dia, $ano);
     $idade = floor((((($hoje - $nascimento) / 60) / 60) / 24) / 365.25);
     return $idade;
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
        $_SESSION['erro'] = "Ops! O passeador é menor de idade!";
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
function limpaCPF_RG($valor){
    $valor = trim($valor);
    $valor = str_replace(".", "", $valor);
    $valor = str_replace(",", "", $valor);
    $valor = str_replace("-", "", $valor);
    $valor = str_replace("/", "", $valor);
    return $valor;
}
if(isset($_POST['btnBusca'])){
    $select_busca = 'SELECT cd_pessoa, nm_pessoa, dt_nascimento,cd_cpf,cd_rg FROM tb_pessoa WHERE cd_cpf = "'.$_POST['cpf'].'"';
    $result = mysqli_query($conexao,$select_busca)
    or die ("<script language=javascript>alert('Erro');window.location.href='page-admin-funcoes.php?funcao=altcli';</script>");
    while ($row = mysqli_fetch_array($result)){
        $idbusca = $row['cd_pessoa'];
    }
    };
if(isset($_POST['btnAlterar'])){
    if(validaDados()){
        unset($_POST['btnAlterar']);
        $rg = limpaCPF_RG($_POST['cdRg']);
        $cpf = limpaCPF_RG($_POST['cdCpf']);
        
        $sql = "UPDATE tb_pessoa SET cd_cpf = '$cpf', cd_rg = '$rg', nm_pessoa =  '".$_POST['nmPessoa']."', '".$_POST['cdEmail']."', '".$_POST['novasenha1']."',dt_nascimento = '".$_POST['dtNascimento']."' WHERE cd_pessoa = '$idbusca'"; 
        $result_sql = mysqli_query($conexao,$sql)
        or die ("<script language=javascript>alert( 'Erro no update!' );window.location.href='page-admin-funcoes.php?funcao=altcli';</script>");
        mysqli_result($conexao,$sql);      
    }
}
?>
<div class="row">
    <div class="col-md-2">
        <a href="index.php" class="btn btn-primary btn-lg btn-block">Voltar</a>
    </div>
    <div class="col-md-8 text-center">
        <h2>Alterar Passeador </h2>   
    </div>
    <div class="col-md-2"></div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
        <form class="form-group" name="altusuario" action="page-admin-funcoes.php?funcao=altpass" method="POST">
        <div class="form-group">
                <input placeholder="Digite o CPF" name="cpf" class="form-control" type="text" autocomplete="off"/></br>
                <button type="submit" name="btnBusca" class="btn btn-danger" style='margin-left:40%;'>Buscar</button>
            </div>
            <div class="form-group">
                <label>Nome da pessoa:</label>
                <input name="nmPessoa" class="form-control" type="text" autocomplete="off"/>
            </div>
            <div class="form-group">
                <label>E-mail:</label>
                <input name="cdEmail" class="form-control" type="email" autocomplete="off"/>
            </div>
            <div class="form-group">
                <label>CPF:</label>
                <input name="cdCpf" class="form-control" type="text" onKeyPress="MascaraCPF(addusuario.cdCpf);" maxlength="14" autocomplete="off"/>
            </div>
            <div class="form-group">
                <label>RG:</label>
                <input name="cdRg" class="form-control" type="text" autocomplete="off" onkeyup="this.value = this.value.toUpperCase();" onKeyPress="MascaraRG(addusuario.cdRg);" maxlength="12"/>
            </div>
            <div class="form-group">
                <label>Data de Nascimento:</label>
                <input name="dtNascimento" class="form-control" type="date" autocomplete="off" onblur='return validadata(addusuario.dtNascimento);'/>
            </div>
            <div class="form-group">
                <label>Digite uma senha:</label>
                <input name="novasenha1" class="form-control" type="password" autocomplete="off"/>
            </div>
            <div class="form-group">
                <label>Confirme a senha:</label>
                <input name="novasenha2" class="form-control" type="password" autocomplete="off"/>
            </div>
            <div class="form-group">
                <button type="submit" name="btnAlterar" class="btn btn-danger btn-lg btn-block" >Alterar Passeador</button>
            </div>
            <script>  
                //adiciona mascara ao RG
                function MascaraRG(rg){
                        if(mascaraInteiroX(rg)==false){
                                event.returnValue = false;
                        }       
                        return formataCampo(rg, '00.000.000-0', event);
                }
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
                //valida numero inteiro com mascara com o X
                function mascaraInteiroX(){
                        if (event.keyCode == 88 || event.keyCode == 120){
                            return true;
                        }
                        else if (event.keyCode < 48 || event.keyCode > 57){
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
                function validadata(datapega){
                    var data = datapega.value; // pega o valor do input
                    data = data.replace(/\//g, "-"); // substitui eventuais barras (ex. IE) "/" por hífen "-"
                    var data_array = data.split("-"); // quebra a data em array
                    
                    if(data_array[0].length != 4){
                        data = data_array[2]+"-"+data_array[1]+"-"+data_array[0]; // remonto a data no formato yyyy/MM/dd
                    }
                    
                    var hoje = new Date();
                    var nasc  = new Date(data);
                    var idade = hoje.getFullYear() - nasc.getFullYear();
                    var m = hoje.getMonth() - nasc.getMonth();
                    if (m < 0 || (m === 0 && hoje.getDate() < nasc.getDate())) idade--;
                    
                    if(idade < 18){
                        alert("Pessoas menores de 18 não podem se cadastrar.");
                        return false;
                    }                    
                    return false;
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
