<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Admin_Suppliers_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-user-plus"></i> Supplier #<asp:Literal ID="ltID" runat="server" />
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
                <label class="control-label col-lg-4">Status</label>
                <div class="col-lg-8">
                    <asp:DropDownList ID="ddlStatus" runat="server"
                        class="form-control">
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>Inactive</asp:ListItem>
                        <asp:ListItem>Archived</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnUpdate" runat="server" class="btn btn-success" Text="Update" Onclick="btnUpdate_Click"/>
                    <a href="Default.aspx" class="btn btn-info"> Back To View </a>
                </div>
            </div>

        </div>

    </form>
</asp:Content>

