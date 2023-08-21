function updateTime() {
    const clock = document.getElementById('clock');
    const darkModeToggle = document.getElementById('darkModeToggle');

    const now = new Date();
    const hours = now.getHours().toString().padStart(2, '0');
    const minutes = now.getMinutes().toString().padStart(2, '0');
    const seconds = now.getSeconds().toString().padStart(2, '0');

    const timeString = `${hours}:${minutes}:${seconds}`;
    clock.textContent = timeString;

    if (darkModeToggle.checked) {
        document.body.classList.add('dark-mode');
    } else {
        document.body.classList.remove('dark-mode');
    }
}


// function toggleDarkMode() {
//     const darkModeToggle = document.getElementById('darkModeToggle');
//     document.body.classList.toggle('dark-mode', darkModeToggle.checked);
// }

updateTime(); // Initial call
setInterval(updateTime, 1000); // Update every second


// const darkModeToggle = document.getElementById('darkModeToggle');
// darkModeToggle.addEventListener('change', toggleDarkMode);