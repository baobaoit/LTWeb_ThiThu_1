<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Them.aspx.cs" Inherits="Them" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            color: #FF6600;
            font-size: large;
            text-decoration: underline;
        }

        .auto-style1 {
            font-size: xx-large;
            color: #FF6600;
        }
        .auto-style3 {
            width: 44%;
        }
        .auto-style4 {
            width: 148px;
            color: #FF6600;
        }
        .auto-style5 {
            color: #FF6600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>
                <asp:Label Text="Thêm Nhân Viên Vào Danh Sách" CssClass="auto-style1" runat="server" ID="Label1" /><br />
                <hr />
                <br />
                <span class="auto-style2">Nhập:</span><br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style4">Họ:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Tên:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">ĐT:</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Email:</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Đơn vị:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Đồng ý" />
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style5" OnClick="Button2_Click" Text="Hủy bỏ" />
                            <asp:HyperLink ID="HyperLink1" ForeColor="#FF6600" runat="server" NavigateUrl="~/Default.aspx"><< Trở về trang chủ</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </strong>
        </div>
    </form>
</body>
</html>
