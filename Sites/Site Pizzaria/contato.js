
		function validacao(){
			if (document.formuser.nome.value=="") {
				alert("Preencha o campo Nome !");
				return false;
			}
			
			if (document.formuser.email.value=="" || document.formuser.email.value.indexOf('@')==-1 || document.formuser.email.value.indexOf('.')==-1 ) {
				alert("Digite um Email valido !");

				document.formuser.email.focus();
				return false;
			}
		}

		function Alerta(){
			alert("Esse Site foi desenvolvido apenas para PRATICA DE ESTUDO.")
		}