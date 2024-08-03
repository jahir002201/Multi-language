// Define an interface
interface Person {
    name: string;
    age: number;
}

// Function using the interface
function printPerson(person: Person): void {
    console.log(`${person.name} is ${person.age} years old.`);
}

// Create an object that matches the interface
let person: Person = { name: "Bob", age: 25 };

printPerson(person);
