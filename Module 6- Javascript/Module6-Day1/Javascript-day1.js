   let item1= 'Michael2026';
let item2= 'LargePopcorn';
let item3= 'FantaOrange';
let item4= 'threeDGlasses';
let item5= 'Skittles';

let Michael2026Price = 90;
let LargePopcornPrice = 35.50;
let FantaOrangePrice = 22.50;
let threeDGlassesPrice = 20.50;
let SkittlesPrice = 29.40;

let total= Michael2026Price + LargePopcornPrice + FantaOrangePrice + threeDGlassesPrice + SkittlesPrice;

let discount = 10;

let discountAmount= (discount/100)*total;

let finaltotal= total-discountAmount;

console.log('======Movie Ticket Receipt======')

console.log(item1= item1 + " -R" + Michael2026Price);
console.log(item2= item2 + " -R" + LargePopcornPrice);
console.log(item3= item3 + " -R" + FantaOrangePrice);
console.log(item4= item4 + " -R" + threeDGlassesPrice);
console.log(item5= item5 + " -R" + SkittlesPrice);

console.log('========================');
console.log('total:' +'R' + total);
console.log('discount:' +discount + '%');
console.log('discount amount:' +'R' +discountAmount );

console.log('finaltotal:'+ 'R'+finaltotal);
