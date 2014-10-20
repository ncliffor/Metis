var photos = [
"http://4.bp.blogspot.com/_N_mOB63qPaE/SnNu1UO9pDI/AAAAAAAAJbA/Afstjp29TZo/s400/blue_eye_dog_nitro.jpg",
"http://www.catahoula-leopard.de/images/DSC_7728.jpg", "http://officialhuskylovers.com/wp-content/uploads/2014/06/the_best_of_the_insanity_puppy_meme_640_12.jpg",
"http://tootlepedal.files.wordpress.com/2011/12/blue-eyed-dog.jpg"];

var i = -1
function shuffle(){
  i++;
  var index = $("#dog_photos").prop("src", photos[i]);
}

$(function(){
  $("#dog").click(displayYes);
  $("#cat").click(displayNo);
  $("#next_image").click(shuffle);
});

function displayYes(){
  var resultElement = $("#result")
  resultElement.text("YES");
};

function displayNo(){
  var resultElement = $("#result")
  resultElement.text("No");
};
