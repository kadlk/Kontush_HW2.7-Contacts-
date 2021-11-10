//
//  DataManager.swift
//  Kontush_HW2.7(Contacts)
//
//  Created by Vadim Kontush on 10.11.21.
//

class DataManager{
    let names = ["Igor", "Peter", "Vadim", "Colin"]
    let surnames = ["Bratishov", "Dickens", "Kontush", "Gurban"]
    let emails = ["he@gmail.com", "ivan@ya.ru", "tut@by.ru", "1989@gmail.com"]
    let phones = ["+375 29 6291058", "+7 916 5212304", "+375 44 1829444", "1 723 4991232"]
    
    func getName() -> String{
        return names.randomElement() ?? ""
    }
    func getSurname() -> String{
        return surnames.randomElement() ?? ""
    }
    func getEmail() -> String{
        return emails.randomElement() ?? ""
    }
    func getPhone() -> String{
        return phones.randomElement() ?? ""
    }
}





