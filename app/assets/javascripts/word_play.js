
 var storyForm = {
   mainCharDivClass: ".main_character",
   titleTarg: 'h2',
   mainc: "Goldenhair",
   titleTextField: "#mytale_title",
   nameTextField: "#name",
   startFlag: ".edit-text",
   selectTarg: "#gender",
   subberMale: {
    She: "He",
    she: "he",
    miss: "lad",
    herself: "himself",
    her: "his",
    Her: "His"
  }
};


function breakTxt(){
  return $("p").html(plantFlag($("p").index(), $("p").html()));
}

function plantFlag(index, value) {
    return value.replace(/Wood/, '<span class="edit-text">Wood</span>');
  }

function changeTitle(){
  $(storyForm.titleTextField).keyup(getVal(storyForm.titleTarg));
}

function changeMainC(){
  $(storyForm.nameTextField).keyup(getVal(storyForm.mainCharDivClass));
}

function getVal(targ){
  return function () {
    return $(targ).text($(this).val());
  };
}

function placeSpans(){
  for (var pronoun in storyForm.subberMale){
        $("p").html(function(index, value) {
          return value.replace(new RegExp('\\b'+ pronoun + '\\b', 'g'), '<span class="male">' + storyForm.subberMale[pronoun] +' </span>');
        });
  }
}

function setMale(){
  for (var pronoun in storyForm.subberMale){
    $(storyForm.startFlag).nextAll().html(function(index, value) {
      return value.replace(new RegExp('\\b'+ pronoun + '\\b', 'g'), '<span class="male">' + storyForm.subberMale[pronoun] +' </span>');
    });
  }
}

function setFemale(){
  for (var pronoun in storyForm.subberMale){
        rep(pronoun, storyForm.subberMale);
  }
}

function rep(ind,val){
  $(storyForm.startFlag).nextAll().html(function(index, value) {
          return value.replace(new RegExp('\\b'+ val[ind] + '\\b', 'g'), '<span class="female">' + ind +' </span>');
  });
}

function changePronouns(){
  $(storyForm.selectTarg).change(function(){
    if ($(''+ storyForm.selectTarg +' option:selected').text() === "male"){
      setMale();
    } else if ($(''+ storyForm.selectTarg+' option:selected').text() === "female"){
      setFemale();
    }
  });
}

$(document).ready(function(){
  placeSpans();

  breakTxt();

  changeTitle();

  changeMainC();

  changePronouns();
});
