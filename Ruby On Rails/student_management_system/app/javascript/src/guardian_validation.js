document.addEventListener('turbolinks:load' , () => {

document.getElementById("btn2").addEventListener("click", function() {

  let a = document.getElementById("guardian_name").value;
  let b = document.getElementById("guardian_contact").value;
  let c = document.getElementById("guardian_student_id").value;

  if (a == "") {
    alert("Name must be filled out");
    return false;
  }
  else if (b==""){
    alert ("Contact must be filled out");
    return false;
  }
  else if ((c=="") || (c=="select")){
    alert ("Student ID must be filled out");
    return false;
  }
});
});
