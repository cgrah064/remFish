window.curQuery = "SELECT * FROM test" //+$('#dbTable option:selected').text()

$(document).ready(function(){
  $("#getData").click(function(){
    alert("The click worked. To this extent at least.")
    $.ajax({
      type: "post",
      url: "http://192.168.0.22/test.py/samplePyFunction",
      data: {
        "tableName": "test", //$('#dbTable option:selected').text(),
        "currentQuery": curQuery //.join(',')	//if you want to pass a list, join it with a comma and use var.split(',') on the server side
      },
      dataType: "text"
    }).done(function(result){
      $("#querySpan").html(result); //this replaces an html element with your string result
      console.log("result is "+result)
    });
    alert("The click worked. To this extent at least.(2)")
  });
});
