let MyPet={
    Name: "Rosie",
    Age : 2,
    Gender : "Female",
    Breed: "Rottweiler",
    Coat : "Black and brown",
    Immunization: "Yes"
}
function displayMyPet(MyPet){

    let FoodCost=700;

console.log('============PET DETAILS==============')
console.log('Name: ' + MyPet.Name);
console.log('Age: '+ MyPet.Age);
console.log('Gender: '+ MyPet.Gender);
console.log('Breed: '+ MyPet.Breed);
console.log('Coat: ' + MyPet.Coat);
console.log('Immunization: ' + MyPet.Immunization);
console.log('=============COST===============');
console.log('Food Cost: ' + "R" + FoodCost);

}
displayMyPet(MyPet);