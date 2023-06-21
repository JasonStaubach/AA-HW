function Elephant(name, height, tricks){
    this.name = name;
    this.height = height;
    this.tricks = tricks;

    
    Elephant.prototype.trumpet = function () {
        console.log(`${name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
    };

    Elephant.prototype.grow = function () {
        this.height += 12;
    };

    Elephant.prototype.addTrick = function(trick) {
        this.tricks.push(trick);
    }

    Elephant.prototype.play = function() {
        randomT = (Math.floor(Math.random() * this.tricks.length));
        console.log(this.tricks[randomT]);
    }
}
let larry = new Elephant('Larry', 60, ["Stomping around"]);
console.log(larry.height);
console.log(larry.trumpet());
console.log(Elephant.prototype);
larry.grow();
console.log(larry.height);
larry.addTrick("Shake trunk");
console.log(larry.tricks);
console.log(larry.play())
console.log(larry.play())
console.log(larry.play())