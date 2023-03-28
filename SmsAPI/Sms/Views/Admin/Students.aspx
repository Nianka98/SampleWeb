<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Sms.Views.Admin.Students" %>

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
                                <asp:Button Style="background-color: #3e82ff;" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Width="84px" />
                            </div>
                            <div class="col-3 d-grid">
                                <asp:Button Style="background-color: #3e82ff;" ID="btnUpdate" runat="server" Text="UPDATE" Width="83px" OnClick="btnUpdate_Click" />

                            </div>
                            <div class="col-3 d-grid">
                                <asp:Button Style="background-color: #3e82ff;" ID="btnDelete" runat="server" Text="Delete" Width="83px" />
                            </div>
                    </td>
                    <td>
                        <table width="120" border="0">
                        </table>
                    </td>
                    <td>
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6">
                                    <h5 class="text-center">Student List </h5>
                                    <asp:GridView ID="StudentsList" class="table table-hover" runat="server" Width="680px" AutoGenerateColumns="False" OnRowCommand="StudentsList_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="SID" Visible="False">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblgvID" runat="server" Text='<%# Bind("SID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="SName" HeaderText="Name" />
                                            <asp:BoundField DataField="Gender" HeaderText="Gender" />
                                            <asp:BoundField DataField="SAddress" HeaderText="Address" />
                                            <asp:BoundField DataField="City" HeaderText="City" />
                                            <asp:BoundField DataField="Grade" HeaderText="Grade" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="btngvEdit" runat="server" Text="Edit" CommandName="EditData"
                                                        CommandArgument="<%#Container.DisplayIndex %>" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </td>
                </table>
        </div>
        </from>

    </div>
    </div>


</asp:Content>
