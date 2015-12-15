
$(document).ready(function () {
    readxml();
});

function readxml() {
    $.ajax({
        url: "../Week7/corp.xml",
        dataType: "xml",
        success: function(data) {
            $("ul").children().remove();
            $(data).find("person").each(function () {
                var info = '<li>Name :  ' + $(this).find("pname").text() + '</li><li>Age : ' + $(this).find("age").text() + '</li><li>Company : ' + $(this).find("email").text() + '</li>';
                $("ul").append(info);


            });
        }

    });
}

