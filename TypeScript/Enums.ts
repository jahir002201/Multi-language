// Define an enum
enum Direction {
    Up = 1,
    Down,
    Left,
    Right
}

// Function using the enum
function move(direction: Direction): void {
    console.log(`Moving in direction: ${direction}`);
}

move(Direction.Up);
move(Direction.Right);
