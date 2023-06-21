function titleize(array, callback){
    let finArray = [];
    finArray = array.map(callback);
};

function printCallback(str){
    console.log(`Mx. ${str} Jingleheimer Schmidt`)
}

titleize(["Mary", "Brian", "Leo"], printCallback);