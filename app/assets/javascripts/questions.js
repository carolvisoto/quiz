var numberOfQuestions = 0;
var MAX_POSSIBILITIES = 6;
var count_dog_option = 0;
var count_cat_option = 0;

function hideDivQuiz() {
    $("#quiz").hide().css("visibility", "none");
}
function showDivQuiz() {
    $("#quiz").show();
}

function hideContainer() {
    $("#container").hide();
}
function showQuiz() {
   $('#start').click(function(){
       showDivQuiz();
       hideContainer();

       $.getJSON("/questions/rand", function(quiz) {  
         question(quiz);
       });
   });
   showAnswer();
}

function showAnswer() {
   $('#send').click(function(){
        hideContainer();
        var option = $('input[type="radio"]:checked').val();
        var animal = $('#animal').val();
        numberOfQuestions += 1;
        optionChosen(option, animal);
        $.getJSON("/questions/rand", function(quiz) { 
          if (numberOfQuestions < MAX_POSSIBILITIES){
              showDivQuiz();
              question(quiz);
          } else {
               hideDivQuiz();
               message();
          }  
        });
       $("input:radio").attr("checked", false);
   });
   
}
function optionChosen(option, animal){
  if (option === "yes" && animal === "dog") {
      count_dog_option += 1;
  } else if (option === "yes" && animal === "cat")  {
      count_cat_option += 1;
  }

}

function question(quiz) { 
  $('#question').html(quiz.question);
  $('#animal').val(quiz.animal);
}

function message() {
  if (count_dog_option > count_cat_option){
     $('#message').html("Dog Lover");
  } else if(count_cat_option > count_dog_option){
     $('#message').html("Cat Lover");
  } else if(count_cat_option === count_dog_option) {
     $('#message').html("Plant Lover");
  }    
}

  
function startQuestion(){
  hideDivQuiz();
  showQuiz();
}
