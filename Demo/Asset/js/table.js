var obI, obII;

var requst = new XMLHttpRequest();
requst.open('GET', 'http://localhost:8080/api/getAcct', false);
requst.onload = function(){
    if(requst.status>=200 && requst.status<400){
    var data = JSON.parse(requst.responseText);
   obI=JSON.parse(requst.responseText);
    }
    else{
        console.log("Error from server");
    }
};

requst.onerror = function(){
    console.log("There is an error");
}

requst.send();

obI = JSON.stringify(obI);



var reqst = new XMLHttpRequest();
reqst.open('GET', 'http://localhost:8080/api/schMast', false);
reqst.onload = function(){
    if(reqst.status>=200 && reqst.status<400){
    var data = JSON.parse(reqst.responseText);
    obII = JSON.parse(reqst.responseText);
    }
    else{
        console.log("Error from server");
    }
};

reqst.onerror = function(){
    console.log("There is an error");
}

reqst.send();

obII = JSON.stringify(obII);



    var jString = '{"table":'+obI+',"select":'+obII+'}';
    console.log(jString);
    var finalJSON = JSON.parse(jString);
    console.log(finalJSON);
   

    var template = document.getElementById("company").innerHTML;
    var compiledTemplate = Handlebars.compile(template);
    var GenerateHTML = compiledTemplate(finalJSON);
    
    var container = document.getElementById("tableContainer");
    container.innerHTML= GenerateHTML;

    var otemplate = document.getElementById("company").innerHTML;
    var ocompiledTemplate = Handlebars.compile(otemplate);
    var oGenerateHTML = compiledTemplate(finalJSON);
    
    var ocontainer = document.getElementById("tableContainer");
    ocontainer.innerHTML= oGenerateHTML;