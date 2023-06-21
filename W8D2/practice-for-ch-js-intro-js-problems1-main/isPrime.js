function isPrime(num){
    let countdown = num - 1
    let prime = true
    while(countdown >= 2){
        if (num % countdown === 0){
            return false;
        }
        countdown--;
    }
    return true;
};

console.log(isPrime(7));
console.log(isPrime(5));
console.log(isPrime(15485863));
console.log(isPrime(14));
console.log(isPrime(15485864));