document.addEventListener('turbolinks:load' , () => {

  document.getElementById("btn3").addEventListener("click", function() {

    let a = document.getElementById("course_name").value;
    let b = document.getElementById("course_fees").value;
    let c = document.getElementById("course_duration").value;
  
    if (a == "") {
      alert("Name must be filled out");
      return false;
    }
    else if (b==""){
      alert ("Fees must be filled out");
      return false;
    }
    else if (c==""){
      alert ("Duration must be filled out");
      return false;
    }
  });
});