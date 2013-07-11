var printJs = {
  openPrintWindow: function(){
    $('.print-link').on('click',function(e){
      e.preventDefault();
      window.open(this.href,'print', 'height=600, width=900');
    });
  },

  printStory: function(){
    $('.print').on('click',function(e){
      e.preventDefault();
      window.print();
    });
  }
}

$(document).ready(function(){
  printJs.openPrintWindow();

  printJs.printStory();
});
