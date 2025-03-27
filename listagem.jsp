<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- ResultSet é uma classe do java que armazena os resultados de uma query SQL. -->
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="lista.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista</title>
    </head>
    <body>
        <% 
            try {
                //fazer a conexão com o banco de dados
                Connection conecta;
                PreparedStatement st;
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/db_dyego";
                String user = "root";
                String password = "root";
                conecta=DriverManager.getConnection(url,user,password);
                
                //listar os dados da tabela produto do banco de dados
                String sql=("SELECT * FROM tb_contatos");
                st = conecta.prepareStatement(sql);
                ResultSet rs= st.executeQuery();
                //enquanto não chegar no final ele vai execultar oq estiver dentro do while
        %>

        <table>
            <tr>
                <th>CPF</th>
                <th>Nome</th>
                <th>DDD</th>
                <th>Celular</th>
                <th>Email</th>
                <th>Mês de nascimento</th>
            </tr>
            <% 
                while (rs.next()){
            %> 
            <tr>
                <td>
                    <%=rs.getString("cpf")%>  
                </td>
                <td>
                    <%=rs.getString("primeiro_nome")%> 
                </td>
                <td>
                    <%=rs.getString("ddd")%>
                </td>
                <td>
                    <%=rs.getString("celular")%> 
                </td>
                <td>
                    <%=rs.getString("email")%>
                </td>
                <td>
                    <%=rs.getString("mes_nascimento")%> 
                </td>
                <td>
                    <a href="deletar_produto.jsp?codigo=<%=rs.getString("codigo") %>"><img src="https://cdn-icons-png.flaticon.com/512/1345/1345824.png" alt="Deletar" width="20px"></a>
                </td>
            </tr>

            <%
                }
            %>
        </table>
        <%           
        } catch (Exception x){
            out.print("Mensagem de erro: " + x.getMessage());
        }
        %>

    </body>
</html>
