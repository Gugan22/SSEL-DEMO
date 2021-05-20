var obj1 = function testAjax2() {
    $.ajax({
      url: "http://localhost:8080/api/getAcct",  
      success: function(data) {
         return data; 
      }
   });
};

var obj2 = function testAjax1() {
    $.ajax({
      url: "http://localhost:8080/api/schMast",  
      success: function(data) {
         return data; 
      }
   });
};

console.log(obj2);