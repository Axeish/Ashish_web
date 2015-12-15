function readxml() {
    nwin = window.open("", "Title", "width=500, height=500, scrollbars=1,resizable=1");
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Mircosoft.XMLHTTP");
    }
    xmlhttp.open("GET", "../corp.xml", false);
    xmlhttp.send();
    xmlDoc = xmlhttp.responseXML;

    nwin.document.write("<html><head></head><body><table>");
    x = xmlDoc.getElementsByTagName("person");
    nwin.document.write("<tr><th>Name</th><th>Age</th><th>Email</th></tr>");

    
    for (i = 0; i < x.length; i++) {
        
        nwin.document.write("<tr>");
        nwin.document.write("<td>");
        y = x[i].getElementsByTagName("pname")[0];
        nwin.document.write(y.childNodes[0].nodeValue);
        nwin.document.write("</td>");

        nwin.document.write("<td>");
        y = x[i].getElementsByTagName("age")[0];
        nwin.document.write(y.childNodes[0].nodeValue);
        nwin.document.write("</td>");

        nwin.document.write("<td>");
        y = x[i].getElementsByTagName("email")[0];
        nwin.document.write(y.childNodes[0].nodeValue);
        nwin.document.write("</td>");
        nwin.document.write("</tr>");
        }
        
    nwin.document.write("</table></body></html>");
}