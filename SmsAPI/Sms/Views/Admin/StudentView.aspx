<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="StudentView.aspx.cs" Inherits="Sms.Views.Admin.StudentView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="../../Assets/Lib/css/bootstrap.min.css">


    <div class="content">

              <div class="card">
        <div class="card-header">
          <h3 class="card-title">Students</h3>
            </div>
                  <div class="card-body">
              <asp:Button ID="btnAddNew" runat="server" Text="Add New" OnClick="btnAddNew_Click" />
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
</asp:Content>
