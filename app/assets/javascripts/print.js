var printJs = {
  openPrintWindow: function(){
    $('.print-link').on('click',function(e){
      e.preventDefault();
      window.open(this.href,'print', 'height=800, width=600');
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
