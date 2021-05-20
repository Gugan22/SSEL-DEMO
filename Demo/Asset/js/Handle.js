
var request = new XMLHttpRequest();
request.open('GET', 'http://localhost:8080/api/location');
request.onload = function(){
    if(request.status>=200 && request.status<400){
    var data = JSON.parse(request.responseText);
    createLOCI(data);
    }
    else{
        console.log("Error from server");
    }
};

request.onerror = function(){
    console.log("There is an error");
}

request.send();

function createLOCI(jsonData){
console.log("testing.......")
console.log(jsonData);

var template = document.getElementById("loci").innerHTML;
var compiledTemplate = Handlebars.compile(template);
var GenerateHTML = compiledTemplate(jsonData);

var container = document.getElementById("lociContainer");
container.innerHTML= GenerateHTML;
}