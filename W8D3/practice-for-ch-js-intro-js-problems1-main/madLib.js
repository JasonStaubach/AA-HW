function madLib(verb, adjective, noun){
    let bigverb = verb.toUpperCase();
    let bigadj = adjective.toUpperCase();
    let bignoun = noun.toUpperCase();

    console.log(`We shall ${bigverb} the ${bigadj} ${bignoun}`);

}

madLib("run", 'big', 'goat');

madLib("HOLLER", "Wild", "swamp")