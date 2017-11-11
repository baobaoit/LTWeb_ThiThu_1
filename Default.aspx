<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #FF6600;
        }
        .auto-style2 {
            color: #FF6600;
            font-size: large;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>
                <asp:Label Text="Quản Lý Nhân Viên" CssClass="auto-style1" runat="server" /><br />
            <hr />
            <br />
            <span class="auto-style2">Chọn:</span><br />
            <asp:RadioButton ID="rdbXem" runat="server" Font-Bold="True" ForeColor="Blue" GroupName="grChon" Text="Xem Danh Sách Nhân Viên" AutoPostBack="True" OnCheckedChanged="rdbXem_CheckedChanged" />
            <br />
            <asp:RadioButton ID="rdbThem" runat="server" Font-Bold="True" ForeColor="Blue" GroupName="grChon" Text="Thêm Nhân Viên Vào Danh Sách" AutoPostBack="True" OnCheckedChanged="rdbThem_CheckedChanged" />
            <br />
            <asp:RadioButton ID="rdbSua" runat="server" Font-Bold="True" ForeColor="Blue" GroupName="grChon" Text="Sửa Đổi Thông Tin Nhân Viên" AutoPostBack="True" OnCheckedChanged="rdbSua_CheckedChanged" />
            </strong>
        </div>
    </form>
</body>
</html>
