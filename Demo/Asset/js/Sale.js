var req = new XMLHttpRequest();
req.open('GET', 'http://localhost:8080/api/cashMode');
req.onload = function(){
    if(req.status>=200 && req.status<400){
    var data = JSON.parse(req.responseText);
    createCASH(data);
    }
    else{
        console.log("Error from server");
    }
};

req.onerror = function(){
    console.log("There is an error");
}

req.send();

function createCASH(jsonData){
console.log("testCASH...")
console.log(jsonData);

var template = document.getElementById("cshMode").innerHTML;
var compiledTemplate = Handlebars.compile(template);
var GenerateHTML = compiledTemplate(jsonData);

var container = document.getElementById("cshContainer");
container.innerHTML= GenerateHTML;
}