import React, { useState, useEffect } from 'react';
import axios from 'axios';

const apiUrl = process.env.REACT_APP_API_URL;

function App() {
  const [message, setMessage] = useState('');
  const [error, setError] = useState(null);

  useEffect(() => {
    axios.get(apiUrl)
      .then((response) => {
        setMessage(response.data.message);
        console.log(response);
      })
      .catch((error) => {
        setError(error);
      });
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        {error ? (
          <p>Error fetching data from the backend: {error.message}</p>
        ) : (
          <p>{message}</p>
        )}
      </header>
    </div>
  );
}

export default App;
