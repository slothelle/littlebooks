var wordPlay = {
    storyForm:  {
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
        girl: "boy",
        man: "woman"
      },

    checkStory: function() {
      if (wordPlay.storyForm.mainc() === "Little Red Riding Hood"){
        wordPlay.storyForm.setflagTarg('Yet');
      } else if (wordPlay.storyForm.mainc() === "Goldenhair"){
        wordPlay.storyForm.setflagTarg('Wood');
      } else if (wordPlay.storyForm.mainc() === "Rapunzel"){
        wordPlay.storyForm.setflagTarg('husband');
      } else if (wordPlay.storyForm.mainc() === "Jack"){
        wordPlay.storyForm.setflagTarg('Jack');
      } else if (wordPlay.storyForm.mainc() === "Princess"){
        wordPlay.storyForm.setflagTarg('bitterly?');
      }
    }
  },

  highlightButton: function(){
    if ($(wordPlay.storyForm.titleTextField).val() !== "" && $(wordPlay.storyForm.nameTextField).val() !== "" && $(''+ wordPlay.storyForm.selectTarg + ' option:selected').text() !== "Gender?"){
      $('button').addClass('ready');
    } else {
      $('button').removeClass('ready');
    }
  },

  breakTxt: function(){
    return $(wordPlay.storyForm.pTarg).html(wordPlay.plantFlag($(wordPlay.storyForm.pTarg).index(), $(wordPlay.storyForm.pTarg).html(), wordPlay.storyForm.flagTarg));
  },

  plantFlag: function(index, value, targ) {
    if (value){
      return value.replace(new RegExp('\\b'+ targ + '\\b', 'g'), '<span class="edit-text">' + targ + '</span>');
    }
  },

  changeTitle: function(){
    $(wordPlay.storyForm.titleTextField).keyup(wordPlay.getVal(wordPlay.storyForm.titleTarg));
    wordPlay.highlightButton();
  },

  changeMainC: function (){
    $(wordPlay.storyForm.nameTextField).keyup(wordPlay.getVal(wordPlay.storyForm.mainCharDivClass));
    wordPlay.highlightButton();
  },

  getVal: function(targ){
    return function () {
      return $(targ).text($(this).val());
    };
  },


  placeSpans: function (hash){
    for (var pronoun in hash){
      if (wordPlay.checkDivClassPronounCount('.edit-text') < 3) {
        wordPlay.wrapSpan(wordPlay.storyForm.pTarg, pronoun, pronoun);
      } else {
        wordPlay.wrapSpan(wordPlay.storyForm.pTarg, hash[pronoun], hash[pronoun]);
      }
    }
  },

  checkDivClassPronounCount: function(divClass){
    $(divClass).parent().html() && $(divClass).parent().html().match(/\bshe\b/g) !== null && $(divClass).parent().html().match(/\bshe\b/g)
  },

  wrapSpan: function(paragraphtarg, elementtarg, replacement){
    $(paragraphtarg).html(function(index, value) {
          return value.replace(new RegExp('\\b'+ elementtarg + '\\b', 'g'), '<span class="male">' + replacement +' </span>');
    });
  },


  setMale: function (hash){
    for (var pronoun in hash){
      $(wordPlay.storyForm.startFlag).nextAll().html(function(index, value) {
        return value.replace(new RegExp('\\b'+ pronoun + '\\b', 'g'), '<span class="male">' + hash[pronoun] +' </span>');
      });
    }
  },

  setFemale: function (hash){
    for (var pronoun in hash){
          rep(pronoun, hash);
    }
  },

  rep: function (ind,val){
    $(wordPlay.storyForm.startFlag).nextAll().html(function(index, value) {
            return value.replace(new RegExp('\\b'+ val[ind] + '\\b', 'g'), '<span class="female">' + ind +' </span>');
    });
  },

  backAnimate: function (target){
    $(target).animate({backgroundColor:"#EDC449"},  100);
    $(target).animate({backgroundColor:"white" },  1000);
  },

  compareSelect: function (selector){
    $(''+ wordPlay.storyForm.selectTarg +' option:selected').text() === selector;
  },

  changePronouns: function (){
    $(wordPlay.storyForm.selectTarg).change(function(){
      if (wordPlay.compareSelect('male')){
        wordPlay.setMale(wordPlay.storyForm.subberMale);
        wordPlay.backAnimate(wordPlay.storyForm.aniTargM);
        wordPlay.highlightButton();
      } else if (wordPlay.compareSelect('female')){
        wordPlay.setFemale(wordPlay.storyForm.subberMale);
        wordPlay.backAnimate(wordPlay.storyForm.aniTargF);
        wordPlay.highlightButton();
      } else {
        wordPlay.highlightButton();
      }
    });
  },

  selectValidate: function (){
    $('#new_mytale button').on('click', function(e){
      if ($(''+ wordPlay.storyForm.selectTarg+' option:selected').text() !== "female" && $(''+ wordPlay.storyForm.selectTarg+' option:selected').text() !== "male") {
        e.preventDefault();
        $('.error').remove();
        $('.jsError').append('<span class="error">  Please Enter a Gender </span>');
      }
    });
  },

  placeMainSpans: function (){
    wordPlay.wrapSpan(wordPlay.storyForm.pTarg, wordPlay.storyForm.mainc(), wordPlay.storyForm.mainc());
  }
}

$(document).ready(function(){
  wordPlay.storyForm.checkStory();

  wordPlay.placeMainSpans();

  wordPlay.selectValidate();

  wordPlay.breakTxt();

  wordPlay.placeSpans(wordPlay.storyForm.subberMale);

  wordPlay.changeTitle();

  wordPlay.changeMainC();

  wordPlay.changePronouns();

});
