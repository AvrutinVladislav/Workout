//
//  Date + ext.swift
//  Workout
//
//  Created by Vladislav Avrutin on 20.09.2024.
//

import Foundation

extension Date {
    private var calendar: Calendar {
        return Calendar.current
    }
    
    //Определяем дату начала недели
    var startOfWeek: Date {
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstDay = calendar.date(from: components) else { return self }
        return calendar.date(byAdding: .day, value: 0, to: firstDay) ?? self
    }
    
    //совмещаем день недели и число. индекс берется из массива дней недели встроенного календаря(см. WeekView)
    func agoForward(by days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    //обрезаем компоненты даты до числа, месяца и года. Необходимо для сравнения только дня без остальных параметров.
    func stripTime() -> Date {
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: components) ?? self
    }
}
