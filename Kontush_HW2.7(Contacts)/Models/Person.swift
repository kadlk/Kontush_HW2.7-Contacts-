//
//  Person.swift
//  Kontush_HW2.7(Contacts)
//
//  Created by Vadim Kontush on 10.11.21.
//


struct Person{
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(surname) \(name)"
    }
    
    init(name: String, surname: String, email: String, phone: String){
        self.name = name
        self.surname = surname
        self.email = email
        self.phone = phone
    }
}

extension Person{
    static func getPersonsFixed(personCount: Int) -> [Person]{
        let data: DataManager = DataManager()
        
        var persons: [Person] = []
        for _ in 1...personCount {
            let person: Person = Person(name: data.getName(), surname: data.getSurname(),
                                        email: data.getEmail(), phone: data.getPhone())
            persons.append(person)
        }
        return persons
    }
}


