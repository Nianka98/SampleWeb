<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="GradeView.aspx.cs" Inherits="Sms.Views.Admin.GradeView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="../../Assets/Lib/css/bootstrap.min.css">


    <div class="content">

        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Grades</h3>
            </div>
            <div class="card-body">
                <asp:Button ID="btnAddGNew" runat="server" Text="Add New" OnClick="btnAddGNew_Click" />
                <asp:GridView ID="GradesList" class="table table-hover" runat="server" Width="680px" AutoGenerateColumns="False" OnRowCommand="GradesList_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="GID" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblgvIDG" runat="server" Text='<%# Bind("GID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="StudentName" HeaderText="Name" />
                        <asp:BoundField DataField="Course" HeaderText="Course" />
                        <asp:BoundField DataField="SGrade" HeaderText="Grade" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button class="btn btn-primary" ID="btngvGEdit" runat="server" Text="Edit" CommandName="EditData"
                                    CommandArgument="<%#Container.DisplayIndex %>" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
