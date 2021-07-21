document.addEventListener('turbolinks:load', () => {

  document.getElementById("btn1").addEventListener("click", function() {
  
    let a = document.getElementById("student_name").value;
    let b = document.getElementById("student_age").value;
    let c = document.getElementById("student_email").value;
    let d = document.getElementById("student_contact_no").value;
    let e = document.getElementById("student_course_id").value;

    if (a == "") {
      alert("Name must be filled out");
      return false;
    }
    else if (b==""){
      alert ("Age must be filled out");
      return false;
    }
    else if (c==""){
      alert ("Email must be filled out");
      return false;
    }
    else if (d==""){
      alert ("Contact must be filled out");
      return false;
    }
    else if ((e=="") || (e=="select")){
      alert ("Course must be Selected");
      return false;
    }
  });
  });