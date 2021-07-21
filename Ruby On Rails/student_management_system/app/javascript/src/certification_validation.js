document.addEventListener('turbolinks:load' , () => {

  document.getElementById("btn4").addEventListener("click", function() {

    let a = document.getElementById("certification_name").value;
    let b = document.getElementById("certification_fees").value;
    let c = document.getElementById("certification_duration").value;
  
    if (a == "") {
      alert("Name must be filled out");
      return false;
    }
    else if (b==""){
      alert ("Fees must be filled out");
      return false;
    }
    else if ((c=="") || (c=="select")){
      alert ("Duration must be filled out");
      return false;
    }
  });
});