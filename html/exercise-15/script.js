const searchQuery = 'Avenger'; 

const api=env.API_URL;
const api_url=`${api}&t=`
const base_url=`${api}&t=Batman`;
const homepage_url=`${api}&s=${searchQuery}`;

async function fetchMovies(url) {
	const response = await fetch(url);
	var data = await response.json();
	console.log(data);
	if (response) {
		
        show(data);
	}else{
        console.log("Err fetching data");
    }
}

fetchMovies(homepage_url);


function show(data) {
    var moviesContainer = document.getElementById("movies-container");
    var moviesHTML = "";
    var movies = data.Search;
    for (var i = 0; i < movies.length; i++) {
        // console.log(movies[i].Title);
        var movie = movies[i];   
        moviesHTML += `
            <div class="movie">
            <img src="${movie.Poster}" alt="${movie.Title} Poster">
                <h4 class="title">${movie.Title}</h4>
                <p class="year">Year: ${movie.Year}</p>
                <p class="type">Type: ${movie.Type}</p>
                <button class="view-more"  onclick="viewMore('${movie.Title}')">View more</button>

            </div>
        `;
    }
    moviesContainer.innerHTML = moviesHTML;
}


function sortMovies() {
    var moviesContainer = document.getElementById("movies-container");
    var movies = Array.from(moviesContainer.getElementsByClassName("movie"));
    // console.log("sortMovies");
    console.log(movies)
    var ascendingOrder = true;
    if (moviesContainer.getAttribute("data-sorted") === "asc") {
        ascendingOrder = false;
        moviesContainer.setAttribute("data-sorted", "desc");
    } else {
        moviesContainer.setAttribute("data-sorted", "asc");
    }

    movies.sort((a, b) => {
        var yearA = a.querySelector(".year").textContent.toLowerCase();
        var yearB = b.querySelector(".year").textContent.toLowerCase();
        if (yearA < yearB) return ascendingOrder ? -1 : 1;
        if (yearA > yearB) return ascendingOrder ? 1 : -1;
        return 0;
    });

    moviesContainer.innerHTML = "";
    movies.forEach(movie => moviesContainer.appendChild(movie));
}


function searchMovies() {
    var searchTitle = document.getElementById("search-input").value.toLowerCase();
    const url =`${movie_api}&s=${searchTitle}`;
    fetchMovies(url)
}


function viewMore(title) {
    var url=api_url+encodeURIComponent(title);
    getMovie(url);
}

window.addEventListener('message', function(event) {
    // Update the movie card with the received movie details
    showMovie(event.data);
  });
  


async function getMovie(url) {
    const response = await fetch(url);
    const data = await response.json();
    // Send movie details to the parent page
    window.parent.postMessage(data, '*');
  }

getMovie(base_url);

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

