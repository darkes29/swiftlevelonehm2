//
//  mainmenu.swift
//  swiftlevelonehm2
//
//  Created by Александр Ломтев on 06.06.17.
//  Copyright © 2017 Александр Ломтев. All rights reserved.
//

import Foundation

class Menu {
    var a:Int = 0
    var b:Int = 0
func mainmenu () {
    print("Main menu:")
    print("1 Четное число или нет?")
    print("2 Делится ли число без остатка на 3?")
    print("3 Создать возрастающий массив из 100 чисел.")
    print("4 Создать возрастающий массив из 100 чисел. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.")
    print("5 Завершить программу")
    a = Int(readLine()!)!
    switch(a) {
    case 1:
        print("Введите целое число", terminator: " ")
        b = Int(readLine()!)!
        print("Число", b ,Prog().Chornor(input: b))
        print("Выйти в главное меню (m), завершить программу(q)")
        menu()
    case 2:
        print("Введите целое число", terminator: " ")
        b = Int(readLine()!)!
        print(Prog().Del3(input: b))
        print("Выйти в главное меню (m), завершить программу(q)")
        menu()
    case 3:
        print("Массив от 1 до 100")
        print(Prog().array100())
        print("Выйти в главное меню (m), завершить программу(q)")
        menu()
    case 4:
        print("Исходный массив ",Prog().array100(),"\n")
        print(Prog().array100del3())
        print("Выйти в главное меню (m), завершить программу(q)")
        menu()
    case 5:
        ExitProg().exit()
        

    default:
        print("Вы ошиблись, попробуйте еще раз")
        mainmenu()
    }}
func menu()
{
    let m = Character(readLine()!)
    if (m=="M" || m == "m"){
    mainmenu()
    }
    if (m == "q" || m == "Q"){
    ExitProg().exit()
    }
    else {
    print("Вы ошиблись, повторите ввод")
    menu()
    }
    }

}
