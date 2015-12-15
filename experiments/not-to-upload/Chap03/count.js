// count.js by Bill Weinman  http://bw.org/contact/

function init() {
    var n = 0;
    e = document.getElementById("output");
    setInterval(function() { e.innerHTML = ++n; }, 1000);
}

window.onload = init;

