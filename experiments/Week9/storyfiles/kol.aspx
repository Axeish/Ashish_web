<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Database Experiment - Select</title>
    <link type="text/css" rel="stylesheet" href="../../css/cerulean.bootstrap.min.css" />
    <link rel="Stylesheet" href="../../css/Databaseexp/dbstyle.css" />
    <link rel="icon" type="image/jpg" href="../../images/jk.png" />
    <link href='http://fonts.googleapis.com/css?family=Ceviche+One' rel='stylesheet' type='text/css' />

</head>
<body>
    <div class="maincontent">
        <h1>Retrieving data from database</h1>
        <hr />
        <h2>Description:</h2>
        <h3>Selecting Data from Sample table</h3>
        <p>
            This experiment demonstrates selection of data from the table in a database using
        SQL and displaying the data on the web page.<br />
            We use a grid view to display the data, which is obtainded by sql queries.<br />

        </p>
        <br />
        <hr />
        <h2>Demonstration:</h2>
        <h3>Selection of data from table using SQL:</h3>
        <form id="form1" runat="server">
            <div>
                <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="False"
                    DataKeyNames="Username"
                    CssClass="table"
                    DataSourceID="SqlDataSource1"
                    EmptyDataText="There are no data records to display.">
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                        <asp:BoundField DataField="Category" HeaderText="Creation Type" SortExpression="Category" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:jkapadia %>"
                    ProviderName="<%$ ConnectionStrings:jkapadia.ProviderName %>"
                    SelectCommand="SELECT [Username], [Category], [Status] FROM jkapadia.sample">
                    <DeleteParameters>
                        <asp:Parameter Name="Username" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="Category" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Category" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="Username" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </form>
        <br />
        <hr />
        <h2>References:</h2>
        <div id="ref">
            <a href="http://net4.ccs.neu.edu/home/jga/" target="_blank">Professor Jose's Experiments</a>&nbsp;
        </div>
        <br />
        <hr />
        <h2>Sources:</h2>
        <div id="source">
            <a href="http://net4.ccs.neu.edu/home/jkapadia/fileview/Default.aspx?~/experiments/Database/Default.aspx" target="_blank">HTML Source</a>&nbsp;
        <a href="http://net4.ccs.neu.edu/home/jkapadia/fileview/Default.aspx?~/css/Databaseexp/dbstyle.css" target="_blank">CSS Source</a>
        </div>
    </div>
</body>
</html>
