cars = [1 1 2 1 2 3 1 2 3 4 1 2 3 4 5;
     1 2 1 2 3 1 2 3 4 1 2 3 4 5 1;
     2 1 2 3 1 2 3 4 1 2 3 4 5 1 2];
cars_sum = sum(cars, 2)

pie(cars_sum, {"2023.05.02", "2023.05.03", "2023.05.04"})
title('Сума автомобілів кожного дня протягом трьох днів')