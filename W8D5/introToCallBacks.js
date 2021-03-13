// class Clock {
//   constructor() {
//     // 1. Create a Date object.
//     let date = new Date() 
//     // 2. Store the hours, minutes, and seconds.
//       this.hours = date.getHours();
//       this.mins = date.getMinutes();
//       this.secs = date.getSeconds();
//     // 3. Call printTime.
//       this.printTime()
//     // 4. Schedule the tick at 1 second intervals.
//       setInterval( () => {      
//         this._tick()
//       }, 1000 ); 

    

//     this.printTime = this.printTime.bind(this);
//     this._tick = this._tick.bind(this);
//   };
  
//   printTime() {
//     // Format the time in HH:MM:SS
//     // Use console.log to print it.
//     console.log(`${this.hours}:${this.mins}:${this.secs}`);
//   };
  
//   _tick() {
//     // 1. Increment the time by one second.
//     // 2. Call printTime. 
//     if (this.secs === 60){
//       this.secs = 0;
//       this.mins += 1;
//     };         
//     this.secs += 1;
//     this.printTime();
//   };

// }
// const clock = new Clock();
//  console.log(clock._tick())


//addNumbers


const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

/* function addNumbers(sum, numsLeft, completionCallback){
if (numsLeft > 0 ){
    completionCallback(sum)   
    reader.question('Enter a number: ', function(answer){
    console.log(`You have chosen ${answer}.`);
    answer = parseInt(answer);
    sum += answer;   
    addNumbers(sum, numsLeft-1, completionCallback);    
  });  
};
reader.close;
}

addNumbers(0, 3, sum =>  console.log(`Total Sum: ${sum}`)); */

function askIfGreaterThan(ele1,ele2, cb) {
  reader.question(`is ${ele1} greater than ${ele2}:`, function (answer) {
       if(answer === 'yes') {
         cb(true);
       } else {
          cb(false);
       }
  });
}

console.log(askIfGreaterThan(1, 2, function (bool) { console.log(bool);

}));

// Once you're done testing askIfGreaterThan with dummy arguments, write this.
function innerBubbleSortLoop(arr, i, madeAnySwaps, outerBubbleSortLoop) {
  // Do an "async loop":
  // 1. If (i == arr.length - 1), call outerBubbleSortLoop, letting it
  //    know whether any swap was made.
  // 2. Else, use `askIfGreaterThan` to compare `arr[i]` and `arr[i +
  //    1]`. Swap if necessary. Call `innerBubbleSortLoop` again to
  //    continue the inner loop. You'll want to increment i for the
  //    next call, and possibly switch madeAnySwaps if you did swap.

  if(i == (arr.length - 1)) {
      outerBubbleSortLoop(madeAnySwaps);
      return;
  }

  askIfGreaterThan(arr[i], arr[i+1], function(bool) {
       if(bool) {
         let temp;
         temp = arr[i];
         arr[i] = arr[i+1];
         arr[i+1] = temp;
         madeAnySwaps = true;
       }

     innerBubbleSortLoop(arr, i++, madeAnySwaps, outerBubbleSortLoop)
  });
}

// Once you're done testing innerBubbleSortLoop, write outerBubbleSortLoop.
// Once you're done testing outerBubbleSortLoop, write absurdBubbleSort.

function absurdBubbleSort(arr, sortCompletionCallback) {
  function outerBubbleSortLoop(madeAnySwaps) {
    // Begin an inner loop if you made any swaps. Otherwise, call
    // `sortCompletionCallback`.
  }

  // Kick the first outer loop off, starting `madeAnySwaps` as true.
}

absurdBubbleSort([3, 2, 1], function (arr) {
  console.log("Sorted array: " + JSON.stringify(arr));
  reader.close();
});
