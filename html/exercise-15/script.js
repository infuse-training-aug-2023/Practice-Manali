// api url
const apiKey = '6b40f680';
const searchQuery = 'Avenger'; 

const api_url =`https://www.omdbapi.com/?apikey=${apiKey}&s=${searchQuery}`;

// const api_url=`https://www.omdbapi.com/?apikey=6b40f680&t=Batman`

async function getapi(url) {

	// Storing response
	const response = await fetch(url);

	// Storing data in form of JSON
	var data = await response.json();

	console.log(data);
	if (response) {
		
        show(data);
	}else{
        console.log("Err fetching data");
    }
	

}

getapi(api_url);


// Function to hide the loader
function hideloader() {
	document.getElementById('loading').style.display = 'none';
}


// Function to define innerHTML for HTML table
function show(data) {

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
                <button class="view-more"  onclick="viewMore('${movie.Title}')">View more</button>

            </div>
        `;
    }


    moviesContainer.innerHTML = moviesHTML;

}


function sortMovies() {
    var moviesContainer = document.getElementById("movies-container");
    var movies = Array.from(moviesContainer.getElementsByClassName("movie"));
    console.log("sortMovies");
    console.log(movies)
    // Toggle between ascending and descending order
    var ascendingOrder = true;
    if (moviesContainer.getAttribute("data-sorted") === "asc") {
        ascendingOrder = false;
        moviesContainer.setAttribute("data-sorted", "desc");
    } else {
        moviesContainer.setAttribute("data-sorted", "asc");
    }

    // Sort the movies array based on the movie titles
    movies.sort((a, b) => {
        var yearA = a.querySelector(".year").textContent.toLowerCase();
        var yearB = b.querySelector(".year").textContent.toLowerCase();
        if (yearA < yearB) return ascendingOrder ? -1 : 1;
        if (yearA > yearB) return ascendingOrder ? 1 : -1;
        return 0;
    });

    // Append the sorted movies back to the container
    moviesContainer.innerHTML = "";
    movies.forEach(movie => moviesContainer.appendChild(movie));
}


function searchMovies() {
    var moviesContainer = document.getElementById("movies-container");

    var searchQuery1 = document.getElementById("search-input").value.toLowerCase();
    // var movieDivs = Array.from(document.getElementsByClassName("movie"));
const url1 =`https://www.omdbapi.com/?apikey=${apiKey}&s=${searchQuery1}`;
    
    // console.log(movieDivs);
    // movieDivs.forEach(movieDiv => {
    //     var titleElement = movieDiv.querySelector(".title");
    //     var movieTitle = titleElement.textContent.toLowerCase();

    //     if (movieTitle.includes(searchQuery)) {
    //         movieDiv.style.display = "block";
    //     } else {
    //         movieDiv.style.display = "none";
    //     }
    // });
    getapi(url1)
 
}


function viewMore(title) {
    console.log(title);
    var url = "https://www.omdbapi.com/?apikey=6b40f680&t=" + encodeURIComponent(title);
    getmovie(url);
}


const movie_api=`https://www.omdbapi.com/?apikey=6b40f680&t=Batman`;

async function getmovie(url) {
    try {
        const response = await fetch(url);
        const data = await response.json();

        if (response.ok) {
            console.log("Got movie data:", data);
            showMovie(data);
        } else {
            console.log("Error fetching movie data");
        }
    } catch (error) {
        console.error("An error occurred:", error);
    }
}

getmovie(movie_api);

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

