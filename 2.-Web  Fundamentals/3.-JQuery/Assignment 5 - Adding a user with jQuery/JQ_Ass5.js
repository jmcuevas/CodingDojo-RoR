$('document').ready(function () {

  //When submitted the form will convert the information in the form into an array
  $('form.add_user').submit(function () {
    var formData = $(this).serialize(); //Parses the information to a string
    formData = formData.split("&"); // Splits the information into an array (Stll contains the titles)

    // Removes the titles of each array data.
    // Saves only the information typed by the user in the array
    for( var i = 0; i < formData.length; i++) {
      sliceIndex = formData[i].search("=");
      formData[i] = formData[i].slice(sliceIndex + 1, formData[i].length);
    }

    // Insterts the data in formData to the table #newUsers
    $('#newUsers tbody').append(
      '<tr><td>' + formData[0] + '</td><td>' + formData[1] + '</td><td>' + formData[2] + '</td><td>' + formData[3] + '</td></tr>'
    );

    // Returns false so the
    return false;
  })
})
