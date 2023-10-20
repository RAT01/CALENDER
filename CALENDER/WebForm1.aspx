<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CALENDER.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head> <center>
<body >
   
    <form id="form1" runat="server">
        <h1> Calander Prctical</h1>
        <div>
            <h3>Select Start Date </h3>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender" >
            </asp:Calendar>

            <h3>Select End Date </h3>
            <asp:Calendar ID="Calendar2" runat="server" OnDayRender="Calendar2_DayRender">
            </asp:Calendar>
            <br />
           <b> <asp:Label ID="Label1" runat="server"  Text="No of days Left is :-    " BorderWidth="3px" Width="190px"></asp:Label> &nbsp &nbsp</b>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
         
    </form>


</body>

        </center>

</html>
