<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Sms.Views.Admin.Students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <from class="row g-3">
                <div class="col-md-5">
                    <label for="inputEmail4" class="form-label">Student Name</label>
                    <input type="text" class="form-control" id="StNameTb" runat="server">
                </div>
                <div class="col-md-5">
                    <label for="inputState" class="form-label">Gender</label>
                    <select id="GenCb" runat="server" class="form-select">
                        <option selected="selected">Choose...</option>
                        <option>...</option>
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                </div>
                <div class="col-5">
                    <label for="inputAddress" class="form-label">Address</label>
                    <input type="text" class="form-control" id="AddressTb" runat="server">
                </div>
                <div class="col-md-5">
                    <label for="inputCity" class="form-label">City</label>
                    <input type="text" class="form-control" id="CityTb" runat="server">
                </div>
                <div class="col-md-5">
                    <label for="inputState" class="form-label">Grade</label>
                    <select id="GradeTb" class="form-select" runat="server">
                        <option selected="selected">Choose...</option>
                        <option>...</option>
                        <option>1-5</option>
                        <option>6-11</option>
                        <option>12-13</option>
                    </select>
                </div>

                <div class="row mt-3">
                    <label id="ErrMsg" class="text-danger text-center" runat="server"></label>

                    <div class="col-2 d-grid">
                        <button type="submit" class="btn btn-primary">View</button>
                    </div>
                    <div class="col-2 d-grid">
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </div>
                <div class="col-2 d-grid">
                    <button type="submit" class="btn btn-primary">Create</button>
                </div>
                <%--  <div class="col-4 d-grid">
      
      <asp:Button ID="AddBtn" runat="server" Text="Add Student" class="btn btn-primary btn-block" OnClick="Create" />
  </div>--%>
                <div class="col-2 d-grid">
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
        </div>
        </from>
    </div>
       <div class="row">
        <h5 class="text-center">Student List</h5>
        <asp:GridView ID="StudentsList" class="table table-bordered" runat="server"></asp:GridView>
    </div>
    </div>
</asp:Content>
