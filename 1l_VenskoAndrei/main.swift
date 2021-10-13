//  main.swift
//  1l_VenskoAndrei

import Foundation

// Решить квадратное уравнение

print("\n Решить квадратное уравнение \n")

let a, b, c, x1, x2: Double

a = 1
b = 9
c = 13

if a > 0, b > 0, c > 0 {
    let d = b * b - 4 * a * c
    print("Дискриминант = ", d)

        if d < 0 {
            print("Дискриминант меньше нуляю. Корней нет(((((")
        } else if d == 0 {
            x1 = -(b / (2 * a))
            print(x1)
        } else {
            x1 = ( -b + sqrt(b * b - 4 * a * c)) / (2 * a)
            x2 = ( -b - sqrt(b * b - 4 * a * c)) / (2 * a)
            print(" x1 = ", x1, "\n x2 = ", x2)
        }
}
// Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника

print("\n Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника \n")

let a1, b1, c1, p, s: Double

    a1 = 10
    b1 = 15

    s = (a1 * b1) / 2
    c1 = sqrt(a1 * a1 + b1 * b1)
    p = a1 + b1 + c1

print (" Площадь = ", s, "\n Периметр = ", p, "\n Гипотенуза = ", c1)

//Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет

print("\n Найти сумму вклада через 5 лет \n")

print("Введите сначала сумму депотиза")

if let deposit1 = readLine(), let deposit = Double(deposit1){
    
    print("Введие процентную ставку")
    
    if let percent1 = readLine(), let percent = Double(percent1){
        
// C капитализацией раз в год

        var depositKap: Double = deposit
        let percentKap: Double = 1 + percent / 100

        for _ in 0...4 {
            depositKap = depositKap * percentKap
        }

        print("Сумма вклада с ежегодной капитализацией за 5 лет = ", depositKap)

    // Без капитализации

        let percentNotKap = percent / 100
        let depositPercent: Double = (deposit * percentNotKap)
        let depositNotKap = deposit + (depositPercent * 5)

        print("Сумма вклада без капитализации за 5 лет = ", depositNotKap)

    }
}

