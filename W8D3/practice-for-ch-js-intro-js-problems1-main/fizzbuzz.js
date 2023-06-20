function fizzBuzz(array){
    let newArr = [];

    array.forEach( function(num) {
        if(num % 3 === 0 && !(num % 5 === 0) || (num % 5 === 0 && !(num % 3 === 0))){
            newArr.push(num)
        }
    });

    return newArr;
};

console.log(fizzBuzz([1,3,4,5]));

console.log(fizzBuzz([1,4,5,9,15,18]));