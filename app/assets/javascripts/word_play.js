
 var storyForm = {
   mainCharDivClass: ".main_character",
   titleTarg: 'h2',
   mainc: "Goldenhair",
   titleTextField: "#mytale_title",
   nameTextField: "#name",
   startFlag: ".edit-text",
   selectTarg: "#gender",
   aniTargM: '.male',
   aniTargF: '.female',
   pTarg: '.word-play',
   flagTarg: 'Wood',
   subberMale: {
    She: "He",
    she: "he",
    miss: "lad",
    herself: "himself",
    her: "his",
    Her: "His"
  }
};

function highlightButton(){
  if ($(storyForm.titleTextField).val() !== "" && $(storyForm.nameTextField).val() !== "" && $(''+ storyForm.selectTarg + ' option:selected').text() !== "Gender?"){
    $('button').toggleClass('ready');
  }
}

function breakTxt(){
  return $(storyForm.pTarg).html(plantFlag($(storyForm.pTarg).index(), $(storyForm.pTarg).html(), storyForm.flagTarg));
}

function plantFlag(index, value, targ) {
  if (window.location.pathname.length < 21){
    return value.replace(new RegExp('\\b'+ targ + '\\b', 'g'), '<span class="edit-text">' + targ + '</span>');
  }
}

function changeTitle(){
  $(storyForm.titleTextField).keyup(getVal(storyForm.titleTarg));
  highlightButton();
}

function changeMainC(){
  $(storyForm.nameTextField).keyup(getVal(storyForm.mainCharDivClass));
  highlightButton();
}

function getVal(targ){
  return function () {
    return $(targ).text($(this).val());
  };
}

function placeSpans(hash){
  for (var pronoun in hash){
    $(storyForm.pTarg).html(function(index, value) {
      return value.replace(new RegExp('\\b'+ pronoun + '\\b', 'g'), '<span class="female">' + hash[pronoun] +' </span>');
    });
  }
}


function setMale(hash){
  for (var pronoun in hash){
    $(storyForm.startFlag).nextAll().html(function(index, value) {
      return value.replace(new RegExp('\\b'+ pronoun + '\\b', 'g'), '<span class="male">' + storyForm.subberMale[pronoun] +' </span>');
    });
  }
}

function setFemale(hash){
  for (var pronoun in hash){
        rep(pronoun, hash);
  }
}

function rep(ind,val){
  $(storyForm.startFlag).nextAll().html(function(index, value) {
          return value.replace(new RegExp('\\b'+ val[ind] + '\\b', 'g'), '<span class="female">' + ind +' </span>');
  });
}

function backAnimate(target){
  $(target).animate({backgroundColor:"yellow"},  100);
  $(target).animate({backgroundColor:"white" },  1000);
}

function changePronouns(){
  $(storyForm.selectTarg).change(function(){
    if ($(''+ storyForm.selectTarg +' option:selected').text() === "male"){
      setMale(storyForm.subberMale);
      backAnimate(storyForm.aniTargM);
      highlightButton();
    } else if ($(''+ storyForm.selectTarg+' option:selected').text() === "female"){
      setFemale(storyForm.subberMale);
      backAnimate(storyForm.aniTargF);
      highlightButton();
    }
  });
}

$(document).ready(function(){
  placeSpans(storyForm.subberMale);

  breakTxt();

  changeTitle();

  changeMainC();

  changePronouns();

});
