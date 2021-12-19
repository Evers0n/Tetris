<%@page import="model.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Transformando os dados que foram colocados na seção
    // em um objeto pessoa novamente
    
    Pessoa pessoa = (Pessoa) session.getAttribute("dados");
   
    // Verificando se o objeto pessoa não existe e se não é usuário
    if ((pessoa == null) || (!session.getAttribute("perfil").equals("gestor-nacional"))) {
        // Caso for uma das duas opções
        // Redirecionar para o login
        response.sendRedirect("../login/");

    }
    
   // Caso contrário é um usuário válido, pode entrar na página
  
%>
<%@include file="header.jspf"%>
<script src="../public/assets/js/gestor-nacional/cadastrar-gerente.js" defer></script>
</head>

    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <!-- Navbar --------------------------------------------->
            <%@ include file="navbar.jspf" %>
            <!-- /.navbar ------------------------------------------------------->

            <!-- MENU Main Sidebar Container ------------------------------------>
            <%@ include file="menu.jspf" %>

                 
            <!-- Content Wrapper. Contains page content -------------------------->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0">Cadastrar Gerente</h1>
                            </div>
                            <!-- /.col -->

                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">
                                      <a href="" id="go-back">Voltar</a>
                                    </li>
                                    <li class="breadcrumb-item active">Cadastrar Gerente</li>
                                </ol>
                            </div>
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /.content-header ---------------------------------------------->

                <!-- Main content -->
                <div class="content">
                    <div class="container-fluid">
                        <!---------------------------------------------------------------->

                        <div class="row">
                            <div class="col-12">
                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Dados Gerente</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <form id="form-meus-dados" method="POST">
                                        <div class="card-body">
                                            <%@include
                                                file="../partials/dadospessoais-ps-cadastro.jspf" %>
                                                <hr />
                                                <%@include file="../partials/enderecos-cadastro.jspf" %>
                                                <hr />
                                                <%@include file="../partials/contatos-cadastro.jspf" %>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <div class="col-12 mb-4">
                                    <button type="button" id="cadastrar" class="btn btn-primary btn-lg">
                                        Cadastrar
                                    </button>
                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.container-fluid -->
                        <div
                            class="modal fade"
                            id="modal-default"
                            style="display: none"
                            aria-hidden="true"
                            >
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Cadastro realizado com sucesso!</h4>
                                        <button
                                            type="button"
                                            class="close"
                                            data-dismiss="modal"
                                            aria-label="Close"
                                            >
                                            <span aria-hidden="true">Ã</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <p></p>
                                    </div>
                                    <div class="modal-footer justify-content-between">
                                        <button
                                            type="button"
                                            class="btn btn-default"
                                            data-dismiss="modal"
                                            onclick="location.href = './index_gestor.jsp'"
                                            >
                                            Close
                                        </button>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                        </div>
                    </div>
                    <!-- /.content -->
                </div>
                <!-- /.content-wrapper -->

                <!-- Main Footer -->
                <%@include file="footer.jspf"%>
            </div>
            <!-- ./wrapper -->
        </body>
    </html>
