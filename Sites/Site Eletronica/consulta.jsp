<%@ page language="java" import="java.sql.*" %>

<%

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

 
 String sql = "select * from contato" ;

 // executa o comando select e o resultado é
 // armazendo na variável consulta
 ResultSet consulta = stm.executeQuery( sql ) ;

out.print("<Font color='yellow' size='15px'face='Arial Black, Gadget, sans-serif'>Eletrônica Jacle-Som</font>");
 out.print("<table border='1'cellpadding='8'>") ;

 // loop para percorrer e exibir todos os registro da tabela
 // 
 while ( consulta.next() ) {


   out.print( "<tr>" ) ;

     out.print( "<td> Nome:" ) ;
       out.print( consulta.getString("nome") );
     out.print( "</td>" ) ;

     out.print( "<td>idade:" ) ;
       out.print( consulta.getString("idade") );
     out.print( "</td>" ) ;

     out.print( "<td>Email:" ) ;
       out.print( consulta.getString("email") );
     out.print( "</td>" ) ;

     out.print( "<td>Telefone:" ) ;
       out.print( consulta.getString("telefone") );
     out.print( "</td>" ) ;

     out.print( "<td>Problema:" ) ;
       out.print( consulta.getString("mensagem") );
     out.print( "</td>" ) ;

   out.print( "</tr>" );

 }

%>


