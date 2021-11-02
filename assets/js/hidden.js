test = [];

function getCookie(name){
  if(document.cookie.length == 0)
    return null;

  var regSepCookie = new RegExp('(; )', 'g');
  var cookies = document.cookie.split(regSepCookie);

  for(var i = 0; i < cookies.length; i++){
    var regInfo = new RegExp('=', 'g');
    var infos = cookies[i].split(regInfo);
    if(infos[0] == name){
      return unescape(infos[1]);
    }
  }
  return null;
}

max= getCookie('usernb');
id = getCookie('maxid');
console.log(max);




for(i=0; i< max; i++){ 
  // ato no blem @le resaka id+1
  test.push(new Frame( (id-max+1)+i) );
  console.log(test);
}  


  function sendData(data) {
    var XHR = new XMLHttpRequest();
    var FD  = new FormData();
    var name;
    
    for (name in data){
    FD.append(name, data[name]);
    }

    XHR.addEventListener('load', function(event) {
      console.log('AJAX success');
      console.log(document.getElementById(name));
      
    });
  
    XHR.addEventListener('error', function(event) {
        console.log('AJAX failure');
    });
    XHR.open('POST','models/save.php');
    XHR.send(FD);

  } 


  


  

  







