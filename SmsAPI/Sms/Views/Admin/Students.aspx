<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Sms.Views.Admin.Students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="../../Assets/Lib/css/bootstrap.min.css">
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">

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
                                        <asp:HiddenField ID="hfID" runat="server" />
                                        <div class="mb-2">
                                            <label for="inputEmail4" class="form-label">Student Name</label>
                                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Width="386px"></asp:TextBox>
                                        </div>
                                        <div class="mb-2">
                                            <label for="inputState" class="form-label">Gender</label>
                                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control" AutoPostBack="True" Height="40px" Width="165px">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="mb-2">
                                            <label for="inputAddress" class="form-label">Address</label>
                                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Width="385px"></asp:TextBox>
                                        </div>
                                        <div class="mb-2">
                                            <label for="inputCity" class="form-label">City</label>
                                            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" Width="383px"></asp:TextBox>

                                        </div>
                                        <div class="mb-2">
                                            <label for="inputState" class="form-label">Grade</label>
                                            <asp:DropDownList ID="ddlGrade" runat="server" CssClass="form-control" Width="168px">
                                                <asp:ListItem>1-5</asp:ListItem>
                                                <asp:ListItem>6-11</asp:ListItem>
                                                <asp:ListItem>12-13</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                        <!-- /.card-body -->

                                        <div class="row mt-4">
                                            <label id="ErrMsg" runat="server" class="text-primary text-center"></label>

                                            <div class="col-3 d-grid">
                                                <asp:Button class="btn btn-primary" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Width="100%" />
                                            </div>
                                            <div class="col-3 d-grid">
                                                <asp:Button class="btn btn-primary" ID="btnUpdate" runat="server" Text="Update" Width="100%" OnClick="btnUpdate_Click" />

                                            </div>
                                            <div class="col-3 d-grid">
                                                <asp:Button class="btn btn-primary" ID="btnDelete" runat="server" Text="Delete" Width="100%" OnClick="btnDelete_Click" />
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
                        <asp:HiddenField ID="hfID" runat="server" />
                        <div class="mb-2">
                            <label for="inputEmail4" class="form-label">Student Name</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Width="386px"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="inputState" class="form-label">Gender</label>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control" AutoPostBack="True" Height="40px" Width="165px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="mb-2">
                            <label for="inputAddress" class="form-label">Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Width="385px"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="inputCity" class="form-label">City</label>
                            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" Width="383px"></asp:TextBox>

                        </div>
                        <div class="mb-2">
                            <label for="inputState" class="form-label">Grade</label>
                            <asp:DropDownList ID="ddlGrade" runat="server" CssClass="form-control" Width="168px">
                                <asp:ListItem>1-5</asp:ListItem>
                                <asp:ListItem>6-11</asp:ListItem>
                                <asp:ListItem>12-13</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="row mt-4">
                            <label id="ErrMsg" runat="server" class="text-danger text-center"></label>

                            <div class="col-3 d-grid">
                                <asp:Button class="btn btn-danger" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Width="100%" />
                            </div>
                            <div class="col-3 d-grid">
                                <asp:Button class="btn btn-danger" ID="btnUpdate" runat="server" Text="Update" Width="100%" OnClick="btnUpdate_Click" />

                            </div>
                            <div class="col-3 d-grid">
                                <asp:Button class="btn btn-danger" ID="btnDelete" runat="server" Text="Delete" Width="100%" OnClick="btnDelete_Click" />
                            </div>
                    </td>
                 
        </div>
        </from>

    </div>
    </div>--%>
</asp:Content>
