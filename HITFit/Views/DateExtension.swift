//
//  DateExtension.swift
//  HITFit
//
//  Created by Nick Lilland on 8/25/24.
//
// creating this entire file was skipped in the textbook. I retyped it from the project files (not copy/pasted)

import Foundation

extension Date{
    ///Formated usinng the specified format.
    ///  - parameters:
    ///    - format: A date pattern string like "MM dd"
    func formatted(as format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

    var yearMonthDay: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy MM dd"
        return dateFormatter.string(from: self)
    }

    ///check another date is the same year, month and day
    ///  - parameters:
    ///    - day: the other date
    func isSameDay(as day: Date) -> Bool {
        return self.yearMonthDay == day.yearMonthDay
    }

    var dayName: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
