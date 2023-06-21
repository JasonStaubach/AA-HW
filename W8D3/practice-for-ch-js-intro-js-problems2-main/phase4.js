function dinerBreakfast(add){
    const order = ["waffles"];
    return function(){
        // order.push(add);
        process.stdout.write(`I'd like`);
        for(let i = 0; i < order.length; i++){
            process.stdout.write(` ${order[i]}`);
        }
        console.log(` please`);
    }
};

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");



// > let bfastOrder = dinerBreakfast();
// "I'd like cheesy scrambled eggs please"
// > bfastOrder("chocolate chip pancakes");
// "I'd like cheesy scrambled eggs and chocolate chip pancakes please."
// > bfastOrder("grits");
// "I'd like cheesy scrambled eggs and chocolate chip pancakes and grits please."