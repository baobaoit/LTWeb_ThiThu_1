<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sua.aspx.cs" Inherits="Sua" %>

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

        .auto-style4 {
            width: 148px;
            color: #FF6600;
        }

        .auto-style5 {
            color: #FF6600;
        }

        .auto-style3 {
            width: 44%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>
                <asp:Label Text="Sửa Đổi Thông Tin Nhân Viên" CssClass="auto-style1" runat="server" ID="Label1" /><br />
                <hr />
                <br />
                <span class="auto-style2">Chọn:</span>
            </strong>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <asp:Button ID="Button1" ForeColor="#FF6600" runat="server" Text="Chọn" OnClick="Button1_Click" />
            <br />
            <br />
            <strong>
                <span class="auto-style2">Sửa:</span></strong><br />
            <table class="auto-style3">
                <tr>
                    <strong>
                        <td class="auto-style4">Họ:</td>
                    </strong>
                    <strong>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </strong>
                </tr>
                <tr>
                    <strong>
                        <td class="auto-style4">Tên:</td>
                    </strong>
                    <strong>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </strong>
                </tr>
                <tr>
                    <strong>
                        <td class="auto-style4">ĐT:</td>
                    </strong>
                    <strong>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </strong>
                </tr>
                <tr>
                    <strong>
                        <td class="auto-style4">Email:</td>
                    </strong>
                    <strong>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </strong>
                </tr>
                <tr>
                    <strong>
                        <td class="auto-style4">Đơn vị:</td>
                    </strong>
                    <strong>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenDV" DataValueField="MaDV">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [DonVi]"></asp:SqlDataSource>
                        </td>
                    </strong>
                </tr>
                <tr>
                    <strong>
                        <td class="auto-style4">&nbsp;</td>
                    </strong>
                    <strong>
                        <td>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Text="Sửa đổi" OnClick="Button3_Click" />
                            <asp:HyperLink ID="HyperLink1" ForeColor="#FF6600" runat="server" NavigateUrl="~/Default.aspx"><< Trở về trang chủ</asp:HyperLink>
                        </td>
                    </strong>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
