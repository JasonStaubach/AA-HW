function Elephant(name, height){
    this.name = name;
    this.height = height;

    
    Elephant.prototype.trumpet = function () {
        console.log(`${name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
    };

    Elephant.prototype.grow = function () {
        this.height += 12;
    };
}
let larry = new Elephant('Larry', 60);
console.log(larry.height);
console.log(larry.trumpet());
console.log(Elephant.prototype);
larry.grow();
console.log(larry.height);