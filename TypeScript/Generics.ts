// Generic function
function identity<T>(arg: T): T {
    return arg;
}

let num = identity<number>(42);
let str = identity<string>("Hello");

console.log(num); 
console.log(str); 
