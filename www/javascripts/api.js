function genericAPICall(options, path, method, callback) {
  $.support.cors = true;
  var response = null;

  $.ajax({
    headers: {
      Accept: "application/json; charset=utf-8",         
      "Content-Type": "application/json; charset=utf-8"
    },
    url: "https://www.stidentify.com/api/" + path,
    async: false,
    type: method,
    data: JSON.stringify(options),
    dataType: "json",
    crossDomain: true,
    xhrFields: {
      withCredentials: true
    },
    success: function(data) {
      if (data["response"] = "success") {
        response =  callback(data);
      } else {
        alert("Try again!");
      }
    }
  })

  return response
}

//specific api calls

function newSession(options){ 
  return genericAPICall(options, "sessions", "POST", redirect); 
}

function compare(options){ 
  return genericAPICall(options, "matches", "POST", function(data) { return data["status"] } );
}

function register(options){
  return genericAPICall(options, "users", "POST", function(data){
    if (data["error"] == "none") {
      redirect(data)
    } else {
      alert(data["error"])
    }
  })
}

//example:
// register({
//   firstName: [insert]
//   lastName: [insert],
//   email: [insert] ,
//   password: [insert], 
//   passwordConfirmation: [insert]
// })


function testResults(data) {
  return genericAPICall(options, "users/tests", "POST", function(data) { return data } )
}

//example:
// testResults({
//   chlamydiaResult: [true or false]
//   gonorrheaResult: [true or false],
//   hepatitisBResult: [true or false] ,
//   hepatitisCResult: [true or false], 
//   herpes1Result: [true or false] ,
//   herpes2Result: [true or false] ,
//   hivResult: [true or false] ,
//   syphilisResult: [true or false]
// })

function encodeParams(data){
  return encodeURIComponent(JSON.stringify(data));
}

function redirect(data) {
  var matchView = new steroids.views.WebView( { location: "http://localhost/match.html?data=" + encodeParams(data) } );
  
  var myAnimation = new steroids.Animation({
    transition: "curlUp",
    duration: 0.2,
    curve: "easeInOut",
    reversedTransition: "curlDown",
    reversedDuration: 0.4
  });

  steroids.layers.push( {
    view: matchView,
    keepLoading: false,
    navigationBar: false,
    tabBar: false,
    animation: myAnimation
  });
}
