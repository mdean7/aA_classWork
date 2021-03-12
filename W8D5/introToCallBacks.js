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

function addNumbers(sum, numsLeft, completionCallback){
if (numsLeft > 0 ){
    completionCallback(sum)   
    reader.question('Enter a number: ', function(answer){
    console.log(`You have chosen ${answer}.`);
    answer = parseInt(answer);
    sum += answer;   
    addNumbers(sum, numsLeft-1, completionCallback);    
  } );  
};
reader.close;
}

addNumbers(0, 3, sum =>  console.log(`Total Sum: ${sum}`));
