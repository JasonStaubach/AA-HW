function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
      const x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }

mysteryScoping2();

// no errors, just scope working the way its expected with const