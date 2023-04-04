<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="StudentView.aspx.cs" Inherits="Sms.Views.Admin.StudentView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="../../Assets/Lib/css/bootstrap.min.css">

    <%--    <table>
        <td>
            <table width="300" border="0">
            </table>
            <td>
                <h1>Student View</h1>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="SID" HeaderText="SID" />
                        <asp:BoundField DataField="SName" HeaderText="Name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="SAddress" HeaderText="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" />
                        <asp:BoundField DataField="Grade" HeaderText="Grade" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btngvEdit" runat="server" Text="Edit" CommandName="Edit"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>

        </td>
        <td>--%>

    <div class="container-fluid">
        <div class="row">
            <from class="col-md-5">
                <table>
                    <td>
                        <table width="270" border="0">
                        </table>
                    </td>
                    <td>
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
                                        <asp:Button class="btn btn-danger" ID="btngvEdit" runat="server" Text="Edit" CommandName="EditData"
                                            CommandArgument="<%#Container.DisplayIndex %>" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
        </div>
    </div>
    </div>
                     </table>
                    </td>
</asp:Content>
