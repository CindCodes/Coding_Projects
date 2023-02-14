weight = 41.5
cost_ground = 0
# Ground Shipping
flat_charge = 20.00
if weight <= 2:
  cost_ground = 1.50*weight + flat_charge
elif 2 < weight <= 6:
  cost_ground = 3.00*weight + flat_charge
elif 6 < weight <= 10:
  cost_ground = 4.00*weight + flat_charge
else:
  cost_ground = 4.75*weight + flat_charge

print(cost_ground)

cost_premium = 125
# Premium Ground Shipping
print(cost_premium)

# Drone Shipping
drone_weight = 41.5
cost_drone = 0
if drone_weight <= 2:
  cost_drone = 4.50 * drone_weight 
elif 2 < drone_weight <= 6:
  cost_drone = 9.00 * drone_weight
elif 6 < drone_weight <= 10:
  cost_drone = 12.00 * drone_weight
else:
  cost_drone = 14.25 * drone_weight

print(cost_drone)
