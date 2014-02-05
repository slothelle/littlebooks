$(window).load(function(){
  // jQuery listener for form submission
  $('form button').on('click', function(event){
    event.preventDefault();
    var validate = new ValidateForm();
    var errors = validate.getErrors();
    if (errors.length === 0) {
      alert("You did it!") // This should submit the form
    }
    else {
      showErrors(errors); // Displays errors to user
    }
  });

  // Validate form mastermind
  function ValidateForm() {
    this.errors = [];
    this.getErrors = function() {
      // ValidateForm objects - set these dynamically
      var validations = ['email', 'passwordHasNum', 'passwordHasCapital', 'passwordLength'];
      for (var i = 0; i < validations.length; i++) {
        error = this[validations[i]]();
        if (error) {
          this.errors.push(error);
        }
      }
      return this.errors;
    };
  }

  ValidateForm.prototype = {
    email: function(){
      var email = $('form input[type=text]').val();
      var validateEmail = /.+\@.+\..+/;
      if (!validateEmail.test(email)) {
        return "Must be a valid email address";
      }
    },

    passwordHasNum: function(){
      var password = $('form input[type=password]').val();
      var validatePassword = /.*\d+.*/
      if (!validatePassword.test(password)) {
        return "Password must have at least one numeric character (0-9)."
      }
    },

    passwordHasCapital: function(){
      var password = $('form input[type=password]').val();
      var validatePassword = /.*[A-Z]+.*/
      if (!validatePassword.test(password)) {
        return "Password must have at least one capital letter (A-Z)."
      }
    },

    passwordLength: function(){
      var password = $('form input[type=password]').val();
      if (password.length < 8) {
        return "Password must be at least 8 characters."
      }
    }
  };

  var showErrors = function(errors) {
    $('#errors').children().remove();
    for (var i = 0; i < errors.length; i++) {
      // Format how/where errors appear on pages
      $('#errors').append('<li>' + errors[i] + '</li>');
    }
  };

});