
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%
            // Declaração de variáveis
            String username = request.getParameter("username");
            String user_password = request.getParameter("user_password");

            // Verificação básica para evitar erros com parâmetros nulos
 
            Connection conecta = null;
            PreparedStatement st = null;
            ResultSet rs = null;

            try {
                // Configuração do banco de dados
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/db_dyego";
                String user = "root"; // Substitua por seu usuário do banco
                String password = "root"; // Substitua por sua senha do banco

                // Conexão com o banco
                conecta = DriverManager.getConnection(url, user, password);

                // Consulta SQL com parâmetros
                String sql = "SELECT * FROM tb_login WHERE username=? AND user_password=?";
                st = conecta.prepareStatement(sql);
                st.setString(1, username);  // Use a variável recebida no parâmetro
                st.setString(2, user_password);

                // Execução da consulta
                rs = st.executeQuery();

                if (rs.next()) {
                    response.sendRedirect("./principal.html"); // Redirecionamento correto
                } else {
                    out.print("Login ou senha inválidos, tente novamente.");
                }
            } catch (Exception e) {
                out.print("Ocorreu um erro ao tentar realizar o login: " + e.getMessage());
            } finally {
                // Fechamento dos recursos para evitar vazamentos de memória
                try {
                    if (rs != null) rs.close();
                    if (st != null) st.close();
                    if (conecta != null) conecta.close();
                } catch (SQLException ex) {
                    out.print("Erro ao fechar recursos: " + ex.getMessage());
                }
            }
        %>
    </body>
</html>

