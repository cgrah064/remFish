window.curQuery = "SELECT * FROM test" //+$('#dbTable option:selected').text()
window.pathname = window.location.pathname

$(document).ready(function(){
  $("#getData").click(function(){
    $.ajax({
      type: "post",
      url: "test.py/samplePyFunction",
      data: {
        "tableName": "test", //$('#dbTable option:selected').text(),
        "currentQuery": curQuery //.join(',')	//if you want to pass a list, join it with a comma and use var.split(',') on the server side
      },
      dataType: "text"
    }).done(function(result){
      $("#querySpan").html(result); //this replaces an html element with your string result
      console.log("result is "+result)
    });
  });
});

$(document).ready(function(){
    $("#plantSel").click(function(){
        $("#plantOpts").toggle();
    });
});

$(document).ready(function(){
    $(".opts").hide();
});

$(document).ready(function(){
  if (pathname.includes("cameraView")) {
    $.ajax({
      type: "get",
      url: "test.py/getMotion01",
      dataType: "text"
    }).done(function(result){
      $("#outSpan0").html(result);
      console.log("result is "+result)
    });
  }
});

$(document).ready(function(){
  $("#motionGet").click(function(){
    $.ajax({
      type: "get",
      url: "test.py/getMotion01",
      dataType: "text"
    }).done(function(result){
      $("#outSpan0").html(result);
      console.log("result is "+result)
    });
  });
});

$(document).ready(function(){
  $("#motionOn").click(function(){
    $.ajax({
      type: "post",
      url: "test.py/setMotion01",
      data: {
        "motion01": "1"
      },
      dataType: "text"
    }).done(function(result){
      $("#outSpan1").html(result);
      console.log("result is "+result)
    });
  });
});

$(document).ready(function(){
  $("#motionOff").click(function(){
    $.ajax({
      type: "post",
      url: "test.py/setMotion01",
      data: {
        "motion01": "0"
      },
      dataType: "text"
    }).done(function(result){
      $("#outSpan2").html(result);
      console.log("result is "+result)
    });
  });
});
