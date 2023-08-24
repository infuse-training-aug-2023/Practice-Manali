const readline = require('readline');
const axios = require('axios');
const moment = require('moment');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Please enter a date (YYYY-MM-DD): ', inputDate => {
  const formattedDate = moment(inputDate).format('MMMM Do YYYY, h:mm:ss a');
  console.log(`Formatted Date: ${formattedDate}`);

  axios.get('https://jsonplaceholder.typicode.com/posts/1')
    .then(response => {
      console.log('API Response:', response.data);
    })
    .catch(error => {
      console.error('API Error:', error.message);
    });

  rl.close();
});
