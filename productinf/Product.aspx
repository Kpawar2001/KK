<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="productinf.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 697px;
        }
        .auto-style2 {
            height: 112px;
        }
        .auto-style3 {
            height: 112px;
            width: 448px;
        }
    </style>
</head>
<body bgcolor="cyan">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style2">
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#003366" Text="PRODUCT RECORD"></asp:Label>
                    <br />
                    <br />
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <tr style="background-color:#FFF8DC;">
                                <td>
                                    <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="ProductNanmeLabel" runat="server" Text='<%# Eval("ProductNanme") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CategoryIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color:#008A8C;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="ProductNanmeTextBox" runat="server" Text='<%# Bind("ProductNanme") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="ProductNanmeTextBox" runat="server" Text='<%# Bind("ProductNanme") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color:#DCDCDC;color: #000000;">
                                <td>
                                    <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="ProductNanmeLabel" runat="server" Text='<%# Eval("ProductNanme") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CategoryIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                <th runat="server">ProductId</th>
                                                <th runat="server">ProductNanme</th>
                                                <th runat="server">CategoryId</th>
                                                <th runat="server">CategoryName</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                <td>
                                    <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="ProductNanmeLabel" runat="server" Text='<%# Eval("ProductNanme") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CategoryIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductConnectionString3 %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [Products] ([ProductNanme], [CategoryId], [CategoryName]) VALUES (@ProductNanme, @CategoryId, @CategoryName)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductNanme] = @ProductNanme, [CategoryId] = @CategoryId, [CategoryName] = @CategoryName WHERE [ProductId] = @ProductId">
                        <DeleteParameters>
                            <asp:Parameter Name="ProductId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ProductNanme" Type="String" />
                            <asp:Parameter Name="CategoryId" Type="Int32" />
                            <asp:Parameter Name="CategoryName" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ProductNanme" Type="String" />
                            <asp:Parameter Name="CategoryId" Type="Int32" />
                            <asp:Parameter Name="CategoryName" Type="String" />
                            <asp:Parameter Name="ProductId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    </form>
</body>
</html>
