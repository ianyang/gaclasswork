function movieLi(moviesObject){
  return $('<li class="result" data-id="' + moviesObject.imdbID +
'"><strong>' + moviesObject.Title + '</strong><em> ( ' + moviesObject.Year + ' )</em></li>');
}

function movieInfo(movieObject){
  return $('<img src="' + movieObject + '" />');
}

$(function() {
"use strict";

  // Our real code starts here
  $('form').on("submit", function(event) {
      event.preventDefault();

      var searchTerm = $('input').val();

      // Our Ajax call to OMDB api
      $.ajax({
          url: "http://www.omdbapi.com/",
          method: "get",
          data: { "s": searchTerm, "callback": "movies"},
          dataType: "jsonp",
          jsonpCallback: "movies",
          success: function(data) {

            if ( data["Search"] ) {
              var movies = data["Search"];
            } else {
              var movies = [];
            }

            $('.results').empty();

            for(var i=0; i < movies.length; i+=1) {
              // console.log(movies[i].Title );
              var movieTitle = movieLi(movies[i]);
              $('.results').append( movieTitle );
            }
          }
      });
      // End of Ajax code
  });

  function display(event) {
      event.preventDefault();

      var $this = $(this);
      var clickedID = $(this).attr("data-id");

      $.ajax({
          url: "http://www.omdbapi.com/",
          method: "get",
          data: { "i": clickedID, "callback": "movie"},
          dataType: "jsonp",
          jsonpCallback: "movie",
          success: function(data) {

            var movieImage = movieInfo(data.Poster);
            $('.movie-detail').empty();
            $(movieImage).appendTo('.movie-detail');

          }
      });
  }

  $('body').on('mouseover', 'li', display);

  // Our real code ends here

});