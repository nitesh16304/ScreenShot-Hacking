<%@ Page Title="" Language="C#" MasterPageFile="~/First.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            font-size: xx-large;
        }
        .style19
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style20
        {
            font-size: x-large;
        }
        .style21
        {
            font-size: xx-large;
        }
        .style22
        {
            font-size: xx-large;
            font-weight: bold;
        }
        .style23
        {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="color: #FFCC00">
        <tr>
            <td class="style18" colspan="2" style="text-align: center">
                <strong style="color: #FFCC00">Post your job.......</strong></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                Company</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="176px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                Location of the Company</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="174px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                Contacting e-mail</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox3_TextChanged" 
                    Width="174px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="style21">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
                <strong>Job Description</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" BackColor="#3399FF" Font-Bold="True" 
                    Font-Names="Centaur" Font-Size="X-Large" ForeColor="#006600" Height="31px" 
                    onclick="Button1_Click" style="text-align: center" Text="Send" Width="126px" />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Agency FB" 
                    Font-Size="14pt" ForeColor="White" Text="[Label]" Enabled="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" 
                style="font-size: xx-large; font-weight: 700; font-style: italic; text-align: center; text-decoration: underline">
                Job in other companies:</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="style23">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="827px">
                    <Columns>
                        <asp:BoundField DataField="company" HeaderText="Company" 
                            SortExpression="company" />
                        <asp:BoundField DataField="location" HeaderText="Location" 
                            SortExpression="location" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="description" HeaderText="Description" 
                            SortExpression="description" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:screenshotConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [Postjob]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style20">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

