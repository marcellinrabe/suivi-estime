test = [];

if(document.getElementById("dn5") != null){
    test.push(new Frame(1));
    test.push(new Frame(2));
    test.push(new Frame(3));
    test.push(new Frame(4));
    test.push( new Frame(5));
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
      console.log(XHR.responseText);
    });
  
    XHR.addEventListener('error', function(event) {
        console.log('AJAX failure');
    });
    XHR.open('POST','models/save.php');
    XHR.send(FD);
    
  } 

  







