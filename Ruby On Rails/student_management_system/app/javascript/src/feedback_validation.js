document.addEventListener('turbolinks:load' , () => {

  document.getElementById("btn6").addEventListener("click", function() {

    let a = document.getElementById("feedback_comment_type").value;
    let b = document.getElementById("feedback_comments_id").value;
    let c = document.getElementById("feedback_content").value;
  
    if (a == "") {
      alert("Type must be filled out");
      return false;
    }
    else if (b==""){
      alert ("ID must be filled out");
      return false;
    }
    else if ((c=="") || (c=="select")){
      alert ("Content must be filled out");
      return false;
    }
  });
})