//Handlers for 'Dragged Elements'
function dragstartHandler(evt) {
    evt.dataTransfer.setData("MyDraggedElementId", evt.target.id);
}

//Handlers for 'Drop Target'
function dragoverHandler(evt) {
    evt.preventDefault();
}

function dropHandler(evt) {
    evt.preventDefault();

    var elementId = evt.dataTransfer.getData("MyDraggedElementId");
    evt.target.appendChild(document.getElementById(elementId));
}

function myFunction() {
    var element = document.body;
    element.classList.toggle("dark-mode");
}

function show_alert() {
    var name = document.getElementById("managername").value;
    var email = document.getElementById("grpemail").value;
    var usrname = document.getElementById("serveruname").value;
    var teamlead = document.getElementById("teamlead").value;
    alert("Name:" + name + "\nTeam Lead:" + teamlead + "\nEmail:" + email + "\nUsername:" + usrname);
}

function detectKeyPress(e) {
    var evtobj = window.event ? event : e
    if (evtobj.keyCode == 77 && evtobj.ctrlKey) this.onclick = myFunction();;
} document.onkeydown = detectKeyPress;

function passwordcheck()
{
    let in1=document.getElementById("serverpswd").value;
    let in2=document.getElementById("confirmpswd").value;
    if(in1==in2)
    {
        return 1;
    }
    else
    {
        alert("Invalid Password");
        return 0;
    }
}