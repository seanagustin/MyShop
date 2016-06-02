<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="QUIZ_1_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/content/bootstrap.css" rel="stylesheet" />
    <link href="~/Content/font-awesome.css" rel="stylesheet" />
</head>
<body>
    <form runat="server" class="form-horizontal">
        <asp:Panel ID="pnlCouples" runat="server" DefaultButton="btnSearch">
        <div class="col-lg-offset-8">
                <div class="input-group">
                    <asp:TextBox ID="txtKeyword" runat="server" class="form-control"
                        placeholder="Type a keyword..." />
                    <span class="input-group-btn">
                        <asp:LinkButton ID="btnSearch" runat="server" class="btn btn-info"
                            OnClick="btnSearch_Click">
                        <i class="fa fa-search"></i>
                        </asp:LinkButton>
                    </span>
                </div>
            </div>

            
            <div class="col-lg-12">
                <table class="table table-hover">
                    <thead>
                        <th>ID</th>
                        <th>Couple Name</th>
                        <th>Wedding Date</th>
                        <th>Ceremony Venue</th>
                        <th>Reception Venue</th>
                        <th>Date Added</th>
                        <th>Status</th>
                    </thead>
                    <tbody>
                        <asp:ListView ID="lvCouples" runat="server"
                            OnItemCommand="lvCouples_ItemCommand"
                            OnPagePropertiesChanging="lvCouples_PagePropertiesChanging"
                            OnItemDataBound="lvCouples_ItemDataBound">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Literal ID="ltCoupleID" runat="server"
                                            Text='<%# Eval("CoupleID") %>' />
                                    </td>
                                    <td><%# Eval("CoupleName") %></td> 
                                    <td><%# Eval("WeddingDate") %></td>
                                    <td><%# Eval("Ceremony") %></td>
                                    <td><%# Eval("Reception") %> </td>
                                    <td><%# Eval("DateAdded", "{0: MMMM dd, yyyy}") %></td>
                                    <td><%# Eval("Status") %></td>
                                    <td>
                                        
                                        <a href='Details.aspx?ID=<%# Eval("CoupleID") %>'
                                            class="btn btn-xs btn-primary" title="Update Details">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                        <asp:LinkButton ID="btnDelete" runat="server" class="btn btn-xs btn-danger" title="Archive Record"
                                            CommandName="archive"
                                            OnClientClick='return confirm("Archive record?");'><i class="fa fa-remove"></i>

                                        </asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <tr>
                                    <td colspan="8">
                                        <h2 class="text-center">No records found.</h2>
                                    </td>
                                </tr>
                            </EmptyDataTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
                <div class="col-lg-offset-5 col-lg-6">
                    <asp:DataPager ID="dpCouples" runat="server"
                        PagedControlID="lvCouples" PageSize="3">
                        <Fields>
                            <asp:NumericPagerField
                                ButtonType="Button" CurrentPageLabelCssClass="btn btn-warning"
                                NumericButtonCssClass="btn btn-default"
                                NextPreviousButtonCssClass="btn btn-default"
                                ButtonCount="5" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </div>
       </asp:Panel>
    </form>
</body>
</html>
