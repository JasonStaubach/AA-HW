function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
  }

  //error, x has been declared already
  //can be solved by getting rid of let in line 7

  mysteryScoping5();