<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Sms.Views.Admin.Students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <from class="row g-3">
                <div class="col-md-5">
                    <label for="inputEmail4" class="form-label">Student Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-5">
                    <label for="inputState" class="form-label">Gender</label>
                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-5">
                    <label for="inputAddress" class="form-label">Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-5">
                    <label for="inputCity" class="form-label">City</label>
                   <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                    
                </div>
                <div class="col-md-5">
                    <label for="inputState" class="form-label">Grade</label>
                    <asp:DropDownList ID="ddlGrade" runat="server" CssClass="form-control">
                        <asp:ListItem>1-5</asp:ListItem>
                        <asp:ListItem>6-11</asp:ListItem>
                        <asp:ListItem>12-13</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="row mt-3">
                    <label id="ErrMsg" class="text-danger text-center" runat="server"></label>

                    <div class="col-2 d-grid">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                    </div>
                    <div class="col-2 d-grid">
                       <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" />
                      
                        
                      
                    </div>
                       <div class="col-2 d-grid">
                       <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                      
                    </div>
                    <%--  </div>
                <div class="col-2 d-grid">
                    <button type="submit" class="btn btn-primary">Create</button>
                </div>--%>           <%--       <div class="col-4 d-grid">
      
      <asp:Button ID="AddBtn" runat="server" Text="Add Student" class="btn btn-primary btn-block" OnClick="Create" />
  </div>--%>
          
        </div>
        </from>
    </div>
       <div class="row">
        <h5 class="text-center">Student List</h5>
        <asp:GridView ID="StudentsList" class="table table-bordered" runat="server"></asp:GridView>
    </div>
    </div>
</asp:Content>
