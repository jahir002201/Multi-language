// Define a class
class Animal {
    name: string;

    constructor(name: string) {
        this.name = name;
    }

    speak(): void {
        console.log(`${this.name} makes a sound.`);
    }
}

// Inherit the class
class Dog extends Animal {
    constructor(name: string) {
        super(name);
    }

    speak(): void {
        console.log(`${this.name} barks.`);
    }
}

let dog = new Dog("Rex");
dog.speak();
