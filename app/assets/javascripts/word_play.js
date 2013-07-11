var wordPlay = {
  storyForm: {
    mainCharDivClass: ".main_character",
    titleTarg: '.mytale-title',
    titleTextField: "#mytale_title",
    nameTextField: "#name",
    startFlag: ".edit-text",
    selectTarg: "#gender",
    aniTargM: '.male',
    aniTargF: '.female',
    pTarg: '.word-play',
    flagTarg: 'Wood',
    buttonTarg: 'button',
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
    mainc: function(){ return $('#name').attr('value');},
    setflagTarg: function(word){
        this.flagTarg = word;
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
      $(wordPlay.storyForm.buttonTarg).addClass('ready');
    } else if ($(''+ wordPlay.storyForm.selectTarg + ' option:selected').text() == "Gender?"){
      $(wordPlay.storyForm.buttonTarg).removeClass('ready');
    }
  },

  breakTxt: function(){
    return $(wordPlay.storyForm.pTarg).html(this.plantFlag($(wordPlay.storyForm.pTarg).index(), $(wordPlay.storyForm.pTarg).html(), wordPlay.storyForm.flagTarg));
  },

  plantFlag: function(index, value, targ) {
    if (value) {
      return value.replace(new RegExp('\\b'+ targ + '\\b', 'g'), '<span class="edit-text">' + targ + '</span>');
    }
  },

  changeTitle: function(){
    $(wordPlay.storyForm.titleTextField).keyup(this.getTextVal(wordPlay.storyForm.titleTarg));
    wordPlay.highlightButton();
  },

  changeMainC: function(){
    $(wordPlay.storyForm.nameTextField).keyup(this.getTextVal(wordPlay.storyForm.mainCharDivClass));
    wordPlay.highlightButton();
  },

  getTextVal: function(targ){
    return function () {
      return $(targ).text($(this).val());
    };
  },

  placeSpans: function(hash){
    for (var pronoun in hash){
      if (wordPlay.pTagTextChecker() && wordPlay.pTagTextChecker().length < 3) {
        this.wrapSpans(wordPlay.storyForm.pTarg, pronoun, pronoun, "female");
      } else {
        var targrep = hash[pronoun];
        this.wrapSpans(wordPlay.storyForm.pTarg, targrep, targrep, "male");
      }
    }
  },

  pTagTextChecker: function(){
    return $(wordPlay.storyForm.startFlag).parent().html() && $(wordPlay.storyForm.startFlag).parent().html().match(/\bshe\b/g) !== null && $(wordPlay.storyForm.startFlag).parent().html().match(/\bshe\b/g);
  },

  wrapSpans: function (selector, target, replacement, spanc){
    if (selector){
      $(selector).html(function(index, value) {
        return value.replace(new RegExp('\\b'+ target + '\\b', 'g'), '<span class="'+ spanc +'">' + replacement +' </span>');
      });
    }
  },

  wrapMultSpans: function (selector, target, replacement, spanc){
    if (selector){
      $(selector).nextAll().html(function(index, value) {
        return value.replace(new RegExp('\\b'+ target + '\\b', 'g'), '<span class="'+ spanc +'">' + replacement +' </span>');
      });
    }
  },

  setMale: function(hash){
    for (var pronoun in hash){
      var replacement = hash[pronoun];
      this.wrapMultSpans(wordPlay.storyForm.startFlag,pronoun, replacement, "male");
    }
  },

  setFemale: function(hash){
    for (var pronoun in hash){
      var target = hash[pronoun];
      this.wrapMultSpans(wordPlay.storyForm.startFlag, target, pronoun, "female");
    }
  },

  backAnimate: function(target){
    $(target).animate({backgroundColor:"#EDC449"},  100);
    $(target).animate({backgroundColor:"white" },  1000);
   },

  changePronouns: function(){
    $(wordPlay.storyForm.selectTarg).change(function(){
      if ($(''+ wordPlay.storyForm.selectTarg +' option:selected').text() === "male"){
        wordPlay.setMale(wordPlay.storyForm.subberMale);
        wordPlay.backAnimate(wordPlay.storyForm.aniTargM);
      } else if ($(''+ wordPlay.storyForm.selectTarg+' option:selected').text() === "female"){
        wordPlay.setFemale(wordPlay.storyForm.subberMale);
        wordPlay.backAnimate(wordPlay.storyForm.aniTargF);
      }
      wordPlay.highlightButton();
    });
  },

  selectValidate: function(){
    $('#new_mytale button').on('click', function(e){
      if (wordPlay.fieldChecker()) {
        e.preventDefault();
        $('.error').remove();
        $('.jsError').append('<span class="error">  Please Enter a Gender </span>');
      }
    });
  },

  fieldChecker: function(){
    return $(''+ wordPlay.storyForm.selectTarg+' option:selected').text() !== "female" && $(''+ wordPlay.storyForm.selectTarg+' option:selected').text() !== "male";
  },

  placeMainSpans: function(){
    this.wrapSpans(wordPlay.storyForm.pTarg, wordPlay.storyForm.mainc(), wordPlay.storyForm.mainc(), "main_character");
  }
};

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
