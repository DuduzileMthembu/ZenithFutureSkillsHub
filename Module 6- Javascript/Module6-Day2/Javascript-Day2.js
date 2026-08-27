let stepcount=[4460,6520,5462,4785,6895,6202,7400,5420,3505,3204];
    let total=0;

    console.log('===========FITNESS TRACKER==========');

    for (let i=0; i<stepcount.length; i++){
         let totalstepcount= stepcount[i];
         total+= totalstepcount;

    if(totalstepcount>=5000){
    console.log('Trainee'+(i+1)+' Goal Achieved -'+ totalstepcount + ' steps');
}else{
    console.log('Trainee'+(i+1)+' Goal NotAchieved -'+ totalstepcount + ' steps');
 }

}
let average= total/stepcount.length ;

 console.log('=============================');
 console.log( 'Average Steps :'+ average);
 