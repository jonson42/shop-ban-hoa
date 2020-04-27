<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaHang" 
        DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
            <br />
            <table cellpadding="9" cellspacing="10" class="style13">
                <tr>
                    <td>
                        <asp:Image ID="Image5" runat="server" ImageUrl='<%# Eval("HinhAnh") %>' 
                            Width="230px" Height="230px" CssClass="margin-left:50px" />
                    </td>
                </tr>
                <tr>
                    <td style="font-size: small" align="center">
                        <asp:Label ID="Label5" runat="server" style="font-size: small" 
                            Text='<%# Eval("TenHoa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# String.Concat("TrangSanPham.aspx?MaHang=", Eval("MaHang")) %>'  runat="server" >
                              <asp:Image runat="server" ID="imgThumbnail" Width="100px"
                                    
                            ImageUrl="~/HinhChucNang/chitiet.gif" ></asp:Image></asp:HyperLink>
                        &nbsp;
                        <asp:HyperLink ID="HyperLink2" 
                            NavigateUrl='<%# "~/GioHang.aspx?MaHoa="+Eval("MaHoa") %>' runat="server">
                           <asp:Image runat="server" ID="imgThumbnail2" Width="100px" ImageUrl="~/HinhChucNang/chonmua.gif" /></asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        SelectCommand="SELECT * FROM [NhomHoa]"></asp:SqlDataSource>
    </asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .style13
        {
            width: 100%;
        }
    </style>
</asp:Content>


<%--  --%>