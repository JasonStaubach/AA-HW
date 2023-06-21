function titleize(array, callback){
    let finArray = [];
    finArray = array.map(callback);
    finArray.forEach( el => console.log(el));
};

function printCallback(str){
    return `Mx. ${str} Jingleheimer Schmidt`
}

titleize(["Mary", "Brian", "Leo"], printCallback);