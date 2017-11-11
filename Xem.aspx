<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Xem.aspx.cs" Inherits="Xem" %>

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
            color: #FF6600;
        }

        .auto-style4 {
            width: 100%;
        }

        .auto-style5 {
            height: 27px;
            width: 126px;
            text-align: left;
        }

        .auto-style7 {
            color: #FF6600;
            height: 27px;
            width: 187px;
            text-align: left;
        }

        .auto-style12 {
            color: #FF6600;
            height: 27px;
            width: 228px;
            text-align: left;
        }

        .auto-style19 {
            color: #FF6600;
            height: 27px;
            width: 256px;
            text-align: left;
        }

        .auto-style22 {
            color: #FF6600;
            height: 27px;
            width: 255px;
            text-align: left;
        }

        .auto-style26 {
            color: #FF6600;
            height: 27px;
            width: 179px;
            text-align: left;
        }

        .auto-style27 {
            color: #FF6600;
            height: 27px;
            width: 201px;
            text-align: left;
        }

        .auto-style28 {
            color: #FF6600;
            height: 27px;
            width: 173px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>
                <asp:Label Text="Xem Danh Sách Nhân Viên" CssClass="auto-style1" runat="server" ID="Label1" /><br />
                <hr />
                <br />
                <span class="auto-style2">Danh sách:</span>
            </strong>
            <br />
            <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox><br />
            <asp:Button ID="Button1" runat="server" ForeColor="#FF6600" Text="Xem" OnClick="Button1_Click" /><asp:HyperLink ID="HyperLink1" ForeColor="#FF6600" runat="server" NavigateUrl="~/Default.aspx"><< Trở về trang chủ</asp:HyperLink>
            <br />
            <asp:DataList ID="DataList1" runat="server" Width="595px">
                <HeaderTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style5"><strong><span class="auto-style3">Mã</span></strong></td>
                            <td class="auto-style22"><strong>Họ</strong></td>
                            <td class="auto-style19"><strong>Tên</strong></td>
                            <td class="auto-style12"><strong>Điện Thoại</strong></td>
                            <td class="auto-style7"><strong>Phòng/Ban</strong></td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <hr />
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style5"><strong>
                                <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text='<%# Eval("MaNV") %>'></asp:Label>
                            </strong></td>
                            <td class="auto-style26"><strong>
                                <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text='<%# Eval("HoNV") %>'></asp:Label>
                            </strong></td>
                            <td class="auto-style27"><strong>
                                <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text='<%# Eval("TenNV") %>'></asp:Label>
                            </strong></td>
                            <td class="auto-style28"><strong>
                                <asp:Label ID="Label5" runat="server" ForeColor="Blue" Text='<%# Eval("DienThoai") %>'></asp:Label>
                            </strong></td>
                            <td class="auto-style7"><strong>
                                <asp:Label ID="Label6" runat="server" ForeColor="Blue" Text='<%# Eval("MaDV") %>'></asp:Label>
                            </strong></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
