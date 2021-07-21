document.addEventListener("turbolinks:load" , () => {

  document.getElementById("btn5").addEventListener("click", function() {

    let a = document.getElementById("faculty_name").value;
    let b = document.getElementById("faculty_salary").value;
    let c = document.getElementById("faculty_course_id").value;
  
    if (a == "") {
      alert("Name must be filled out");
      return false;
    }
    else if (b==""){
      alert ("Salary must be filled out");
      return false;
    }
    else if ((c=="") || (c=="select")){
      alert ("Course ID must be filled out");
      return false;
    }
  });
});  