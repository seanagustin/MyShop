<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="QUIZ_1_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add a couple</title>

    <link href="~/content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form runat="server" class="form-horizontal">
        <div class="col-lg-6">
            <div class="form-group">
                <br />
                <label class="control-label col-lg-4">Groom's Name</label>
                <div class="col-lg-8">
                    <asp:Textbox ID ="txtGroom" runat="server" class="form-control text-capitalize" MaxLength="100" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Bride's Name</label>
                <div class="col-lg-8">
                    <asp:Textbox ID ="txtBride" runat="server" class="form-control text-capitalize" MaxLength="100" required />

                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Wedding Date</label>
                <div class="col-lg-8">
                    <asp:Textbox ID ="txtDate" runat="server" type="date" class="form-control" required />

                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Ceremony Venue</label>
                <div class="col-lg-8">
                    <asp:Textbox ID ="txtcv" runat="server" class="form-control" MaxLength="200" required />

                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Reception Venue</label>
                <div class="col-lg-8">
                    <asp:Textbox ID ="txtrv" runat="server" class="form-control"  MaxLength="200" required />

                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnAdd" runat="server" class="btn btn-success" Text="Add" Onclick="btnAdd_Click"/>
                </div>
            </div>

        </div>

    </form>
</body>
</html>
