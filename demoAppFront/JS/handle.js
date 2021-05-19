var request = new XMLHttpRequest();



request.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        var myArr = JSON.parse(this.responseText);
        createHTML(myArr);
    }
};

request.open("GET","http://localhost:8080/api/location", true);
request.send();


function createHTML(jsonData){
console.log("testing.......")
console.log(jsonData);

var template = document.getElementById("userSelectLocation").innerHTML;
var compiledTemplate = Handlebars.compile(template);
var GenerateHTML = compiledTemplate(jsonData);

var container = document.getElementById("location");
container.innerHTML= GenerateHTML;
}