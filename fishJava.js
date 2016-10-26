window.curQuery = "SELECT * FROM test" //+$('#dbTable option:selected').text()

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
  $("#motionInput").click(function(){
    $.ajax({
      type: "post",
      url: "test.py/samplePyFunction",
      data: {
        "motion01": $('#dbTable option:selected').text()
      },
      dataType: "text"
    }).done(function(result){
      $("#querySpan").html(result);
      console.log("result is "+result)
    });
  });
});


