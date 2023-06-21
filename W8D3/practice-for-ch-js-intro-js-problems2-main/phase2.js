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
    // Elephant.prototype.paradeHelper = function(elephant){
    //     console.log(`${elephant.name} is trotting by!`)
    // }
    
}

function paradeHelper(elephant){
    console.log(`${elephant.name} is trotting by!`)
}

function parade(herd, callback){
    herd.forEach( el => { callback(el) } );
}


let larry = new Elephant('Larry', 60, ["stomping around", "shaking trunk", "shenanigans"]);
let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [larry, ellie, charlie, kate, micah];

parade(herd, paradeHelper);
// console.log(larry.height);
// console.log(larry.trumpet());
// console.log(Elephant.prototype);
// larry.grow();
// console.log(larry.height);
// larry.addTrick("Shake trunk");
// console.log(larry.tricks);
// console.log(larry.play())
// console.log(larry.play())
// console.log(larry.play())