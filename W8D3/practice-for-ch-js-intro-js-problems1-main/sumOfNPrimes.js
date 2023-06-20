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

function sumOfNPrimes(num){
    let counter = 2
    let sum= 0
    while(num > 0){
        if (isPrime(counter)){
            sum = counter + sum;
            num--;
        };
        counter++;
    }
    return sum;
};

console.log(sumOfNPrimes(2))
console.log(sumOfNPrimes(3))
console.log(sumOfNPrimes(4))
console.log(sumOfNPrimes(0))



