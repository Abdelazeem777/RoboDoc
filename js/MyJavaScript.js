
var itIsNone = true;
function myFunction(x) {
    x.classList.toggle("change");
    if (itIsNone===true){
        
        itIsNone = false;
        document.getElementById("sideBar").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
        document.body.style.backgroundColor = "rgba(0,0,0,0.1)";
    }
    else {
        
        itIsNone = true;
        document.getElementById("sideBar").style.width = "0";
        document.getElementById("main").style.marginLeft = "0";
        document.body.style.backgroundColor = "white";
    }
}

