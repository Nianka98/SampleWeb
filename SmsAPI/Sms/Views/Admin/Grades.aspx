<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Grades.aspx.cs" Inherits="Sms.Views.Admin.Grades1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="../../Assets/Lib/css/bootstrap.min.css">
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">

            <%--<label for="inputEmail4" class="form-label">Student Name</label>--%>

            <div class="card"></div>
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-6">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Grade</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form>
                                    <div class="card-body">
                                        <asp:HiddenField ID="gID" runat="server" />
                                        <div class="mb-2">
                                            <label for="inputEmail4" class="form-label">Student Name</label>
                                            <asp:TextBox ID="txtGName" runat="server" CssClass="form-control" Width="386px"></asp:TextBox>
                                        </div>
                                        <div class="mb-2">
                                            <label for="inputState" class="form-label">Course</label>
                                            <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control" AutoPostBack="True" Height="40px" Width="165px">
                                                <asp:ListItem>English</asp:ListItem>
                                                <asp:ListItem>Sinhala</asp:ListItem>
                                                <asp:ListItem>Tamil</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="mb-2">
                                            <label for="inputState" class="form-label">Grade</label>
                                            <asp:DropDownList ID="ddlgGrade" runat="server" CssClass="form-control" Width="168px">
                                                <asp:ListItem>A</asp:ListItem>
                                                <asp:ListItem>B</asp:ListItem>
                                                <asp:ListItem>C</asp:ListItem>
                                                <asp:ListItem>S</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <!-- /.card-body -->


                                        <div class="row mt-4">
                                            <label id="ErrMsg" runat="server" class="text-primary text-center"></label>

                                            <div class="col-3 d-grid">
                                                <asp:Button class="btn btn-primary" ID="btnGAdd" runat="server" Text="Add" OnClick="btnGAdd_Click" Width="100%" />
                                            </div>
                                            <div class="col-3 d-grid">
                                                <asp:Button class="btn btn-primary" ID="btnGUpdate" runat="server" Text="Update" Width="100%" OnClick="btnGUpdate_Click" />

                                            </div>
                                            <div class="col-3 d-grid">
                                                <asp:Button class="btn btn-primary" ID="btnGDelete" runat="server" Text="Delete" Width="100%" OnClick="btnGDelete_Click" />
                                            </div>
                                </form>
                            </div>
                            <!-- /.card -->




                            <!-- jQuery -->
                            <script src="../../plugins/jquery/jquery.min.js"></script>
                            <!-- Bootstrap 4 -->
                            <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
                            <!-- bs-custom-file-input -->
                            <script src="../../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
                            <!-- AdminLTE App -->
                            <script src="../../dist/js/adminlte.min.js"></script>
                            <!-- AdminLTE for demo purposes -->
                            <script src="../../dist/js/demo.js"></script>
                            <!-- Page specific script -->
                            <script>
                                $(function () {
                                    bsCustomFileInput.init();
                                });
</script>
    </body>
    </html>
    <%--    <div class="container-fluid">
        <div class="row">
            <from class="col-md-5">
                <table>
                    <td>
                        <table width="270" border="0">
                        </table>
                    </td>
                    <td>
                        <asp:HiddenField ID="gID" runat="server" />
                        <div class="mb-2">
                            <label for="inputEmail4" class="form-label">Student Name</label>
                            <asp:TextBox ID="txtGName" runat="server" CssClass="form-control" Width="386px"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="inputState" class="form-label">Course</label>
                            <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control" AutoPostBack="True" Height="40px" Width="165px">
                                 <asp:ListItem>English</asp:ListItem>
                                <asp:ListItem>Sinhala</asp:ListItem>
                                <asp:ListItem>Tamil</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="mb-2">
                            <label for="inputState" class="form-label">Grade</label>
                            <asp:DropDownList ID="ddlgGrade" runat="server" CssClass="form-control" Width="168px">
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>S</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                            <div class="row mt-4">
                            <label id="ErrMsg" runat="server" class="text-danger text-center"></label>

                            <div class="col-3 d-grid">
                                <asp:Button class="btn btn-danger" ID="btnGAdd" runat="server" Text="Add" OnClick="btnGAdd_Click" Width="100%" />
                            </div>
                            <div class="col-3 d-grid">
                                <asp:Button class="btn btn-danger" ID="btnGUpdate" runat="server" Text="Update" Width="100%" OnClick="btnGUpdate_Click" />

                            </div>
                            <div class="col-3 d-grid">
                                <asp:Button class="btn btn-danger" ID="btnGDelete" runat="server" Text="Delete" Width="100%" OnClick="btnGDelete_Click" />
                            </div>
                    </td>
                        </div>
        </from>

    </div>
    </div>--%>
</asp:Content>
