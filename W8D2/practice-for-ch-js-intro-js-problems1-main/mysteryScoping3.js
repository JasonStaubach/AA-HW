function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
      var x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }

mysteryScoping3();

//breaks bc you are trying to reassign a constant with a let