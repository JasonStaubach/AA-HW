function Elephant(name, height){
    this.name = name;
    this.height = height;

    this.trumpet = function () {
        console.log(`${name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
    }
}

let larry = new Elephant('Larry', 60)
console.log(larry.height)
console.log(larry.trumpet())