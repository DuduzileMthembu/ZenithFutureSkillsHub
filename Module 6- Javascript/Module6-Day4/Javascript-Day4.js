const Friends = new Set();

Friends.add('Lerato');
Friends.add('Nosipho');
Friends.add('Thokozani');
Friends.add('Mpumelelo');
Friends.add('Thabo');
Friends.add('Tumi')

console.log('=========My Friends=========')
console.log('Lerato')
console.log('Nosipho')
console.log('Thokozani')
console.log('Mpumelelo')
console.log('Thabo')
console.log('Tumi')

const Birthdays = new Map();
function addBirthday(name , date){
    console.log(name + 'Birthdate' + date)
}

Birthdays.set('Lerato', '1996-03-20');
Birthdays.set('Nosipho', '1998-02-24');
Birthdays.set('Thokozani', '2000-01-28');
Birthdays.set('Mpumelelo', '1998-01-15');
Birthdays.set('Thabo', '1998-02-03');
Birthdays.set('Tumi', '1997-04-24')


console.log('==========ALL BIRTHDAYS==========');

for (let[name, date] of Birthdays){

console.log( name +'s' +  ' birthday: '+ date);
console.log('========================');
}
