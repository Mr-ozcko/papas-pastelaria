 if (timer > 0) {
    timer -= delta_time / 1000000; // Subtract time in seconds
}

if (timer <= 0) {
    timer = 0; // Ensure it doesn't go negative
    // You can add any additional actions here when the timer ends
}
