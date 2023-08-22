const cards = document.querySelectorAll('.card');
const sidePanel = document.querySelector('.side-panel');
const infoIframe = document.querySelector('#info-iframe');
const moreButtons = document.querySelectorAll('.more-button');

// moreButtons.forEach(button => {
//   button.addEventListener('click', (event) => {
//     const movieIndex = event.target.getAttribute('data-movie-index');
//     const movieInfo = getMovieInfo(movieIndex); // Replace with your data retrieval logic
//     updateIframe(movieInfo);
//     sidePanel.style.right = '0';
//   });
// });

// function updateIframe(info) {
//   const iframeContent = `
//     <h2>${info.title}</h2>
//     <p>Release Date: ${info.releaseDate}</p>
//     <p>Plot: ${info.plot}</p>
//     <p>Ratings: ${info.ratings.join(', ')}</p>
//     <p>Languages: ${info.languages.join(', ')}</p>
//   `;
//   infoIframe.contentDocument.body.innerHTML = iframeContent;
// }

// function getMovieInfo(index) {
//   // Replace this with your data retrieval logic
//   return {
//     title: `Movie Title ${index}`,
//     releaseDate: `2023-08-2${index}`,
//     plot: `Plot for Movie ${index}`,
//     ratings: ['Rating 1', 'Rating 2'],
//     languages: ['Language 1', 'Language 2'],
//   };
// }

function show(data) {
  var url="https://chat.openai.com/";
  var moviesContainer = document.getElementById("movies-container");

  var moviesHTML = "";

  var movies = data.Search;
  for (var i = 0; i < movies.length; i++) {
      console.log(movies[i].Title);

      var movie = movies[i];
      
      moviesHTML += `
          <div class="movie">
          <img src="${movie.Poster}" alt="${movie.Title} Poster">
              <h4 class="title">${movie.Title}</h4>
              <p class="year">Year: ${movie.Year}</p>
              <p class="type">Type: ${movie.Type}</p>
              <button class"view-more" onclick="viewMore('${movie.Title}')">View more</button>
          </div>
      `;
  }


  moviesContainer.innerHTML = moviesHTML;

}

function viewMore(title) {
  var url = "https://www.omdbapi.com/?apikey=6b40f680&t=" + encodeURIComponent(title);
  getmovie(url);
}


const movie_api=`https://www.omdbapi.com/?apikey=6b40f680&t=Batman`;

// document.addEventListener("DOMContentLoaded", function() {

// async function getmovie(url) {

// 	// Storing response
// 	const response = await fetch(url);

// 	// Storing data in form of JSON
// 	var data = await response.json();

// 	console.log(data);
// 	if (response) {
// 		console.log("Got response");
// 	}else{
//         console.log("Err fetching data");
//     }
	

// 	showMovie(data);
// }
// });
// Calling that async function
// getmovie(movie_api);


async function getmovie(url) {
    const response = await fetch(url);
    const data = await response.json();
    // Send movie details to the parent page
    window.parent.postMessage(data, '*');
  }

  window.addEventListener('message', function(event) {
    // Check the origin for security reasons
    // if (event.origin !== 'https://your-iframe-origin.com') {
    //   return;
    // }
  
    // Update the movie card with the received movie details
    showMovie(event.data);
  });

function showMovie(data) {
    
    var moviesContainer = document.getElementById("single-movie");

    var moviesHTML = "";

    console.log(data.Title);
    
    moviesHTML += 
` <div>
<img src="${data.Poster}" >
</div>
<div class="movie-details" id="movie-details">
<div class="movie-title">
    ${data.Title}
</div>
<div class="movie-time">
 <div>${data.Year}</div>
 <div>${data.Runtime}</div>
 <div>${data.Genre}</div>
</div>

<div class="movie-release">
 Release date : ${data.Released}
</div>
<div class="movie-rating">
 Rating : ${data.Rated}
</div>
<div class="movie-director">
 Directed by : ${data.Director}
</div>
<div class="movie-actors"> ${data.Actors}
 
</div>
<div class="movie-plot"> ${data.Plot}
 
</div>
</div>`

    
    moviesContainer.innerHTML = moviesHTML;
}

