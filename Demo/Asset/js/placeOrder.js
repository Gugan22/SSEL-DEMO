var locati, stype;
var companyId = new Array();
var SCHid = new Array();

function loci(value){
  locati = value;
}

function salesType(value){
  stype = value;
}


function SCH(id,value){
  var v= document.getElementById(id);
  v.innerHTML=value;
}

function submit(){
  var tab = document.getElementById("tableContainer");
var tabl=(tab.rows.length);
var companyId = new Array();
var SCHid = new Array();
for(var i=1;i<=tab.rows.length-1;i++){
  companyId.push(tab.rows[i].cells[0].innerHTML);
  SCHid.push(tab.rows[i].cells[3].innerHTML);
}


    if(SCHid.includes('none')){
      failed();
    }

    else{
  
  for(var i=0;i<=companyId.length-1;i++){
  var url ='http://localhost:8080/api/newResult?location='+locati+'&sales='+stype+'&company='+companyId[i]+'&acct='+SCHid[i]+'&date='+new Date().toISOString().slice(0, 19).replace('T', ' ');
  var request = new XMLHttpRequest();
request.open('GET', url , false);
req.onload = function(){
  if(req.status>=200 && req.status<400){
  var data = req.responseText;
  console.log(data);
  }
  else{
      console.log("Error from server");
     }
};
request.onerror = function(){
    console.log("There is an error");
    }

request.send();

  }
  

  document.open("text/html", "success");
  document.write("<html><body><h1>Success....</h1></body></html>");
document.close();
}
}

function failed(){
  document.open("text/html", "success");
      document.write("<html><body><h1>Fill the credentials..... </h1></body></html>");
      document.close();
}