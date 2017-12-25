install.packages('MASS')
install.packages('reshape2')

# ===> libries to be included 
library(MASS)
library(reshape2)



city <- c("Guntur", "Nellore", "Hyderabad")
state <- c("Andhra", "Andhra", "Telangana")
zipcode <- c(560067, 524236, 543322)

adresses <- cbind(city, state, zipcode)

print(adresses)

new.address <- data.frame(
  city = c("Lowry","Charlotte"),
  state = c("CO","FL"),
  zipcode = c("80230","33949"),
  stringsAsFactors = FALSE
)

print(new.address)

all.addresses <- rbind(adresses, new.address)
print(all.addresses)

print(Pima.te)
print(Pima.tr)

# ===> merge by bp and bmi
result <- merge(x = Pima.te, y = Pima.tr, by.x = c("bp", "bmi"), by.y = c("bp", "bmi"))

print(result)

# ===> merge by specific columns
result <- merge(x = Pima.te, y = Pima.tr, by.x = c("bp", "bmi", "npreg"), by.y = c("bp", "bmi", "npreg"))

print(result)

# ====> melt data

print(ships)

molten.ships <- melt(ships, id = c("type","year"))
print(molten.ships)

recasted.ships <- acast(molten.ships, type+year~variable, sum)

print(recasted.ships)
