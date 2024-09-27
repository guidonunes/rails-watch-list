# Movies Watchlist App

## Overview

This project is a Movies Watchlist application built with Ruby on Rails. The app allows users to create multiple watchlists and save their favorite movies. It is designed to practice CRUD operations, fetching data from an external API, and implementing user authentication.

## Features

* Create Watchlists: Users can create different watchlists for organizing movies.
* Save Movies: Users can search for and save movies to their watchlists.
* CRUD Operations: Full support for creating, reading, updating, and deleting watchlists and movies.
* API Integration: Fetch movie data from an external API to display movie details and images.

## Technologies Used
* Ruby on Rails
* Bootstrap and SASS for styling
* External Movie API 


## Getting Started

To set up the project locally, follow these steps:

1. Clone the repository:

```
git clone https://github.com/your-username/movies-watchlist.git
```

2. Navigate to the project directory:

```
cd movies-watchlist
```

3. Install dependencies:

Make sure you have Ruby and Rails installed. You can then install the necessary gems with:

```
bundle install
```

4.Set up the database:

Create and migrate the database:

```
rails db:create
rails db:migrate
```

5. Set up API keys:

* If using an external API, ensure you have the necessary API keys and add them to your .env file or Rails credentials.

6. Start the Rails server:

Run the application locally:

```
rails server
```

Open your browser and navigate to http://localhost:3000 to view your application.

## Usage
Users can view their saved movies, update details, or remove movies from their watchlists.

## Contributing
Contributions are welcome! If you have suggestions for improvements or would like to add new features, feel free to open an issue or submit a pull request.

## License
This project is licensed under the MIT License.
