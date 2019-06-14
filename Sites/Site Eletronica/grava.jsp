<%@ page language="java" import="java.sql.*" %>

 <%

 // cria variaveis e pega os valores digitados pelo usuário
 // 
 String vnome    = request.getParameter( "txtnome" )  ;
 int    vidade   = Integer.parseInt( request.getParameter("txtidade"));
 String vemail = request.getParameter( "txtemail" )  ;
 String vmensagem = request.getParameter( "mensagem" )  ;
 String vtelefone = request.getParameter("txttelefone");



 out.print( "Nome: "      + vnome    + "<br>") ;
 out.print( "Idade: "     + vidade   + "<br>") ;
 out.print( "Email: "  + vemail +"<br>") ;
out.print( "Msg: "  + vmensagem +"<br>") ;
out.print("Telefone" + vtelefone +"<br>");



 // cria as variavies para acessar o banco de dados
 //
 String driver = "net.sourceforge.jtds.jdbc.Driver" ;
 String url    = "jdbc:jtds:sqlserver://10.4.0.90:1433/bd221642016";
 String usuario= "bd221642016" ;
 String senha  = "123456" ;

 // carrega o driver na memoria
 Class.forName( driver ) ;
 
 // cria a conexao com o banco de dados
 // informando endereço do banco, usuario, senha
 Connection conexao = DriverManager.getConnection(url,usuario,senha) ;

 // cria o statement para executar o comando sql
 Statement stm = conexao.createStatement() ; 

 String sql = "insert into contato (nome,idade,email,mensagem,telefone) values ('" + vnome + "'," + vidade + ",'" + vemail + "','" + vmensagem +"','"+ vtelefone + "')" ;



 stm.executeUpdate( sql ) ;

 out.print( "<br>" ) ;
 out.print( "Dados gravados" ) ;
 
        String redirectURL = "http://10.4.0.90:8080/tecwebnoiteIIgrupo08/apresentar/contato.html";
        response.sendRedirect(redirectURL);
   
 %> 