function updateTime() {
    const clock = document.getElementById('clock');
    const darkModeToggle = document.getElementById('darkModeToggle');

    const now = new Date();
    const hours = now.getHours().toString().padStart(2, '0');
    const minutes = now.getMinutes().toString().padStart(2, '0');
    const seconds = now.getSeconds().toString().padStart(2, '0');

    const timeString = `${hours}:${minutes}:${seconds}`;
    clock.textContent = timeString;

    document.body.classList.toggle('dark-mode', darkModeToggle.checked);
}

updateTime();
setInterval(updateTime, 1000);
