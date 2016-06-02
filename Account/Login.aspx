<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Account Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
        <div class="col-lg-6">
            <div id="error" runat="server" class="alert alert-danger" visible="false">
                Invalid email and password
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Email Address</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" Type="Email" MaxLength="100" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Password</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" Type="password" MaxLength="50" required />
                </div>
            </div>
             <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Login" OnClick="btnLogin_Click"/>
                </div>
            </div>
            </div>
        </form>
</asp:Content>

