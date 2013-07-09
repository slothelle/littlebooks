
 var storyForm = {
   mainCharDivClass: ".main_character",
   titleTarg: 'h2',
   mainc: function(){ return $('#name').attr('value');},
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
  return $(storyForm.pTarg).html(replacer($(storyForm.pTarg).index(), $(storyForm.pTarg).html(), storyForm.flagTarg, 'edit-text'));
}

function replacer(index, value, targ, spanc) {
    return value.replace(new RegExp('\\b'+ targ + '\\b', 'g'), '<span class="'+spanc+'">' + targ + '</span>');
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


function replaceFemale(oldHtml, pronoun, gender) {
  return oldHtml.replace(new RegExp('\\b'+ pronoun + '\\b', 'g'), '<span class="'+gender+'">' + pronoun +' </span>');
}

function placeSpans(hash){
  for (var pronoun in hash){
    if ($('.edit-text').parent().html().match(/\bshe\b/g) !== null && $('.edit-text').parent().html().match(/\bshe\b/g).length >4){
      $(storyForm.pTarg).html(function(index, oldHtml) { return replaceFemale(oldHtml, pronoun, "female"); });
    }
    $(storyForm.pTarg).html(function(index, oldHtml) {
      return replaceFemale(oldHtml, hash[pronoun], "male");
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
  $(storyForm.pTarg).html(function(index, value) {
    return value.replace(new RegExp('\\b' + storyForm.mainc() + '\\b','g'), '<span class="main_character">' + storyForm.mainc() +'</span>');
  });

  breakTxt();

  placeSpans(storyForm.subberMale);

  changeTitle();

  changeMainC();

  changePronouns();

});
