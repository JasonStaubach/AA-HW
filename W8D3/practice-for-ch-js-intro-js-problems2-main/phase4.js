function dinerBreakfast(){
    const order = ["waffles"];
    console.log(`I'd like ${order} please`)
    return function(add) {
        
        order.push(add);

        process.stdout.write(`I'd like`);
        for(let i = 0; i < order.length; i++){
            process.stdout.write(` and ${order[i]}`);
        }
        console.log(` please`);
    }
};

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");
bfastOrder("hash browns");



// > let bfastOrder = dinerBreakfast();
// "I'd like cheesy scrambled eggs please"
// > bfastOrder("chocolate chip pancakes");
// "I'd like cheesy scrambled eggs and chocolate chip pancakes please."
// > bfastOrder("grits");
// "I'd like cheesy scrambled eggs and chocolate chip pancakes and grits please."