<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Grades.aspx.cs" Inherits="Sms.Views.Admin.Grades1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="../../Assets/Lib/css/bootstrap.min.css">

    <div class="container-fluid">
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
    </div>

</asp:Content>
