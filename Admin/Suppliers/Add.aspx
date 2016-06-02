<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Admin_Suppliers_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-user-plus"></i> Add a Supplier
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
        <div class="col-lg-6">
            <div class="form-group">
                <label class="control-label col-lg-4">Company Name</label>
                <div class="col-lg-8">
                    <asp:Textbox ID ="txtName" runat="server" class="form-control text-capitalize" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Contact Person</label>
                <div class="col-lg-8">
                    <asp:Textbox ID ="txtContact" runat="server" class="form-control text-capitalize" required />

                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Address</label>
                <div class="col-lg-8">
                    <asp:Textbox ID ="txtAddress" runat="server" TextMode="MultiLine" class="form-control" required />

                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Phone</label>
                <div class="col-lg-8">
                    <asp:Textbox ID ="txtPhone" runat="server" class="form-control" required />

                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Mobile</label>
                <div class="col-lg-8">
                    <asp:Textbox ID ="txtMobile" runat="server" class="form-control" required />

                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnAdd" runat="server" class="btn btn-success" Text="Add" Onclick="btnAdd_Click"/>
                </div>
            </div>

        </div>

    </form>
</asp:Content>

