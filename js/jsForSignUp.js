var linkNext = document.getElementById("linkNext"),
    linkBack = document.getElementById("linkBack"),
    step = 1,
    step1info=document.getElementById("div1"),
    step2info=document.getElementById("div2"),
    step3info = document.getElementById("div3"),
    steppara = document.getElementById("stepPara"),
    bu = document.getElementById("Button1");
function next() {
    if (step === 1) {
        linkBack.style.visibility = "visible";
        step1info.style.display = "none";
        step2info.style.display = "block";
        steppara.innerHTML = "Step 2";
        
        step++;
    }
   else if (step === 2) {
       steppara.innerHTML = "Step 3";
        step2info.style.display = "none";
        step3info.style.display = "block";
        bu.style.display = "block";
        linkNext.style.display = "none";
        step++;
    }
 


}

function back() {
    if (step === 3) {
        step1info.style.display = "none";
        step2info.style.display = "block";
        step3info.style.display = "none";
        bu.style.display = "none";
        linkNext.style.display = "block";
        steppara.innerHTML = "Step 2";
        step --;
     }

    else if (step === 2) {
        steppara.innerHTML = "Step 1";
        step1info.style.display = "block";
        step2info.style.display = "none";
        step3info.style.display = "none";
        linkBack.style.visibility = "hidden";
        step --;
    }
   
     
}
