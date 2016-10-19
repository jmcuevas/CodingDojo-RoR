// Jose M Cuevas
// Orange Belt Exam
// Coding Dojo & Bellevue College Ruby on Rails Evening Bootcamp
// October 8th, 2016

$('document').ready(function() {

  // variable containing the decription for all the languages.
  var descriptions = {
    "lamp": "<span class='highlight'>LAMP</span> is an archetypal model of web service solution stacks, named as an acronym of the names of its original four open-source components: the Linux operating system, the Apache HTTP Server, the MySQL relational database management system (RDBMS), and the PHP programming language. The LAMP components are largely interchangeable and not limited to the original selection. As a solution stack, LAMP is suitable for building dynamic web sites and web applications.",
    "mean": "<span class='highlight'>MEAN</span> is a free and open-source JavaScript software stack for building dynamic web sites and web applications. The MEAN stack makes use of MongoDB, Express.js, Angular, and Node.js. Because all components of the MEAN stack support programs are written in JavaScript, MEAN applications can be written in one language for both server-side and client-side execution environments.",
    "python": "<span class='highlight'>Python-Django</span> Django is a free and open-source web framework, written in Python, which follows the model-view-template (MVT) architectural pattern.[5][6] It is maintained by the Django Software Foundation (DSF), an independent organization established as a 501(c) non-profit.<br><br>Django's primary goal is to ease the creation of complex, database-driven websites. Django emphasizes reusability and 'pluggability' of components, rapid development, and the principle of don't repeat yourself. Python is used throughout, even for settings files and data models. Django also provides an optional administrative create, read, update and delete interface that is generated dynamically through introspection and configured via admin models. Some well-known sites that use Django include Pinterest,Instagram,Mozilla,The Washington Times, Disqus, the Public Broadcasting Service, Bitbucket,and Nextdoor.",
    "ruby": "<span class='highlight'>Ruby on Rails</span>, or simply Rails, is a web application framework written in Ruby under the MIT License. Rails is a model-view-controller (MVC) framework, providing default structures for a database, a web service, and web pages. It encourages and facilitates the use of web standards such as JSON or XML for data transfer, and HTML, CSS and JavaScript for display and user interfacing. In addition to MVC, Rails emphasizes the use of other well-known software engineering patterns and paradigms, including convention over configuration (CoC), don't repeat yourself (DRY), and the active record pattern.",
    "swift": "<span class='highlight'>Swift</span> is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. for iOS, OS X, watchOS, tvOS, and Linux. Swift is designed to work with Apple's Cocoa and Cocoa Touch frameworks and the large body of extant Objective-C (ObjC) code written for Apple products. Swift is intended to be more resilient to erroneous code ('safer') than Objective-C, and more concise. It is built with the LLVM compiler framework included in Xcode 6 and later and, on platforms other than Linux,[11] uses the Objective-C runtime library, which allows C, Objective-C, C++ and Swift code to run within one program.",
  }

  // When tile clicked put a border around script or compiled lang boox
  // When tile clicked insert the corresponding text on the description
  $('.tile_holder').on("click", "div.tile" , function () {
    // Variables used along this function
    var language = $(this).attr("id");
    var langType = $(this).attr("lang-type");

    // Sets a border around the selected language tile
    $("div.tile").css("border", "none");
    $(this).css("border", "1px solid blue");

    // Sets the border around the correspondent type of langdescription
    if (langType == "script") {
      $('.compiled_lang').css("border", "none");
      $('.script_lang').css("border", "1px solid blue");
    }
    if (langType == "compiled") {
      $('.script_lang').css("border", "none");
      $('.compiled_lang').css("border", "1px solid blue");
    }
    if (langType == "undefined") {
      $('.script_lang').css("border", "none");
      $('.compiled_lang').css("border", "none");
    }

    // Inserts the description text in to the main_right section
    appendDescription(language);
  })

  // This function appends the description to the main_right section.
  // As a parameter has the language that can be the ones previously given
  // or could be dinamically added.
  function appendDescription(lang) {
    $('.main_right p').html(descriptions[lang]);
  }

  // When the form add_tile is submited it receives the text entered on the
  // text box and adds it to the descriptions array.
  // Whith this information the appendDescription function is called.
  $('form.add_tile').submit(function () {
    var langName = $('#lang_name').val();
    var langDesc = $('#lang_name').val();
    descriptions[langName] = langDesc;
    $('.tile_holder').append('<div class="tile" lang-type="undefined" id="' + langName +'"><h2>' + langName +'</h2></div>');
    $('#lang_name').val("");
    return false;
  })

  // When the form add_comment is submitted it appends the value in the text box
  // in to the comment_insert div.
  // As well appends the date to the comment.
  $('form.add_comment').submit(function () {
    var comment = $('#comment').val();
    $('.comment_insert').append('<p>' + comment + ' - Comment made at: ' + Date() +'</p>');
    $('#comment').val("");
    return false;
  })
})
