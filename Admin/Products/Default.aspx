<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Products_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-shopping-cart"></i> View Products
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class="table table-hover">
                <thead>
                    <th>#</th>
                    <th>Category</th>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>IsFeatured</th>
                    <th>Status</th>
                    <th>DateAdded</th>
                    <th>DateModified</th>

                </thead>
                <tbody>
                    <asp:ListView ID="lvProducts" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("ProductID") %></td>
                                <td><%# Eval("Category") %></td>
                                <td><%# Eval("Name") %> (<%# Eval("ProductID") %>)
                                </td>
                                <td>
                                    <img src='../../Content/img/Products/<%# Eval("Image") %>' width="50" />
                                </td>
                                <td>
                                    <%# Server.HtmlEncode(Eval("Description").ToString()) %>
                                </td>
                                <td>
                                    <%# Eval("Price", "{0: #, ###, ##0.00}") %>
                                </td>
                                <td><%# Eval("IsFeatured") %></td>
                                <td><%# Eval("Status") %></td>
                                <td><%# Eval("DateAdded", "{0: MM/dd/yyyy}") %></td>
                                <td><%# Eval("DateModified", "{0: MM/dd/yyyy}") %></td>
                            </tr>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <tr>
                                <td colspan="10">
                                    <h2 class="text-center">
                                        No Records Found!
                                    </h2>
                                </td>
                            </tr>
                        </EmptyDataTemplate>
                    </asp:ListView>
                </tbody>
            </table>
        </div>
    </form>
</asp:Content>

