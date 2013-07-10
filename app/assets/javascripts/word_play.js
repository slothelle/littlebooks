
 var storyForm = {
   mainCharDivClass: ".main_character",
   titleTarg: '.mytale-title',
   mainc: function(){ return $('#name').attr('value');},
   titleTextField: "#mytale_title",
   nameTextField: "#name",
   startFlag: ".edit-text",
   selectTarg: "#gender",
   aniTargM: '.male',
   aniTargF: '.female',
   pTarg: '.word-play',
   flagTarg: 'Wood',
   setflagTarg: function(word){
      this.flagTarg = word;
   },
   subberMale: {
    She: "He",
    she: "he",
    miss: "lad",
    herself: "himself",
    her: "him",
    Her: "His",
    girl: "boy"
  },
  checkStory: function() {
    if (storyForm.mainc() === "Little Red Riding Hood"){
      storyForm.setflagTarg('Yet'); 
    } else if (storyForm.mainc() === "Goldenhair"){
      storyForm.setflagTarg('Wood');
    }
    
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
    return value.replace(new RegExp('\\b'+ targ + '\\b', 'g'), '<span class="edit-text">' + targ + '</span>');
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
    if ($('.edit-text').parent().html().match(/\bshe\b/g) !== null && $('.edit-text').parent().html().match(/\bshe\b/g).length < 3) {
      $(storyForm.pTarg).html(function(index, value) {
        return value.replace(new RegExp('\\b'+ pronoun + '\\b', 'g'), '<span class="female">' + pronoun +' </span>')});
    } else { 

      $(storyForm.pTarg).html(function(index, value) {
        return value.replace(new RegExp('\\b'+ hash[pronoun] + '\\b', 'g'), '<span class="male">' + hash[pronoun] +' </span>');
      });
    }
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

function selectValidate(){
  $('#new_mytale button').on('click', function(e){
    if ($(''+ storyForm.selectTarg+' option:selected').text() !== "female" && $(''+ storyForm.selectTarg+' option:selected').text() !== "male") {
      e.preventDefault();
      $('.error').remove();
      $(storyForm.selectTarg).parent().append('<span class="error">  Please Enter a Gender </span>');
    }
  });
}

function placeMainSpans(){
  $(storyForm.pTarg).html(function(index, value) {
    return value.replace(new RegExp('\\b' + storyForm.mainc() + '\\b','g'), '<span class="main_character">' + storyForm.mainc() +'</span>');
  });
}

$(document).ready(function(){
  storyForm.checkStory();

  placeMainSpans();

  selectValidate();

  breakTxt();

  placeSpans(storyForm.subberMale);

  changeTitle();

  changeMainC();

  changePronouns();

});
