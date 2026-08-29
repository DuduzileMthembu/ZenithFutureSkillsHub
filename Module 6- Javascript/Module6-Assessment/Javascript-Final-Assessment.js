let today = new Date();

console.log("====== PERSONAL STUDY PLANNER ======");
console.log("STUDY PLANNER :" + today.toLocaleDateString());
console.log(' ');
let Subjects = new Set();

let studySubjects = [
    { name: "JavaScript", 
        hours: 6, 
        difficulty: "medium" 
    },
    { name: "HTML", 
        hours: 4, 
        difficulty: "easy" 
    },
    { name: "PYTHON", 
        hours: 8, 
        difficulty: "hard" },
    { name: "CSS",
         hours: 6, 
         difficulty: "medium" 
    }
];



for (let i = 0; i < studySubjects.length; i++) {
    Subjects.add(studySubjects.name);
}
console.log('Subjects:');
for(let subject of Subjects){
 console.log('Javascript');
 console.log('HTML');
 console.log('PYTHON');
 console.log('CSS');
}
 console.log(' ')



let schedule = new Map();
schedule.set("Monday", "JavaScript");
schedule.set("Tuesday", "CSS");
schedule.set("Wednesday", "Python");
schedule.set("Thursday", "HTML");
schedule.set("Friday", "JavaScript");


let deadlines = new Map();
deadlines.set("JavaScript", new Date("2026-09-10"));
deadlines.set("HTML", new Date("2026-09-15"));
deadlines.set("PYTHON", new Date("2026-09-20"));
deadlines.set("CSS", new Date("2026-09-25"));

function calculateTotalHours(subjects) {
    let total = 0;
    for (let i = 0; i < subjects.length; i++) {
        total = total + subjects[i].hours; // 
    }
    return total;
}


console.log("Subject Details:");
for (let i = 0; i < studySubjects.length; i++) {
    console.log(studySubjects[i].name + " -> hours: " + studySubjects[i].hours + " -> " + studySubjects[i].difficulty);
  
}
  console.log(' ');


console.log("Schedule:");
    
for (let [day, subject] of schedule) {
    console.log(day + " -> " + subject);
    
}
console.log(' ');


function displayDeadlines() {
    console.log("Deadlines:");
    for (let [subject, date] of deadlines) {
        console.log(subject + " -> " + date.toLocaleDateString());
    }
    console.log(' ');
}

function checkStudyStatus(subjects) {
    for (let i = 0; i < subjects.length; i++) {
        let name = subjects[i].name;
        let hours = subjects[i].hours;
        
        if (hours > 6) {
            console.log("Good study progress for " + name);
        } else {
            console.log("Needs more study time for " + name);   
        }
        
    }
}


let total = calculateTotalHours(studySubjects);
console.log("Total Study Hours: " + total);
console.log(' ');

displayDeadlines();

checkStudyStatus(studySubjects);
