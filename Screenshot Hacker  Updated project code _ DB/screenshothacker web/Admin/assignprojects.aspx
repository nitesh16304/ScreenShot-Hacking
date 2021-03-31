<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="assignprojects.aspx.cs" Inherits="Admin_assignprojects" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 309px;
    }
    .style4
    {
        }
        .style5
        {
            width: 141px;
            height: 38px;
        }
        .style6
        {
            width: 308px;
        }
        .style7
        {
            width: 138px;
        }
        .style8
        {
            width: 309px;
            height: 38px;
        }
        .style9
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table class="style1">
        <tr>
            <td class="style8">
                </td>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Text="ProjectName"></asp:Label>
            </td>
            <td class="style9">
                <asp:DropDownList ID="DDLPname" runat="server" Height="21px" Width="122px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4" colspan="2">
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" Visible="False">
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
        <table class="style1">
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Text="ProjectDescription"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Text="Manager"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDLmngr" runat="server" Height="25px" Width="128px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Button ID="btnassign" runat="server" Font-Bold="True" ForeColor="#3333CC" 
                        Text="Assign" onclick="btnassign_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Cancle" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Text="Manager" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    <br />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

