item1= "BuffaloWings"
item2= "Wedges"
item3= "SerloinSteak" 
item4= "MashPotatoes"
item5= "CheeseCake" 
item6= "VanillaIceCream"

#Item Prices
BuffalloWings_price = 45.80
Wedges_price = 32.40
SerloinSteak_price = 127.40
MashPotatoes_price = 34.20
CheeseCake_price = 62.40
VanillaIceCream_price = 25.00

#Total calculations
total= BuffalloWings_price + Wedges_price + SerloinSteak_price + MashPotatoes_price + CheeseCake_price + VanillaIceCream_price

#VAT percentage
vat_percentage = 15

#VAT Amount
vat_amount = (vat_percentage/100) *total

#Final Total
final_total = total + vat_amount

#Display

print("=============Dii's Delicacies===========")
print(" ")
print(item1, "-R" , BuffalloWings_price)
print(item2, "-R" , Wedges_price)
print(item3, "-R" , SerloinSteak_price)
print(item4, "-R" , MashPotatoes_price)
print(item5, "-R" , CheeseCake_price)
print(item6, "-R" , VanillaIceCream_price)
print(" ")
print("-----------------------------------------")
print("Subtotal: R",total)
print("VAT: ", vat_percentage, "%")
print("Final Total: R", final_total )

