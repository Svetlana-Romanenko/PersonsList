//
//  Person.swift
//  PersonsList
//
//  Created by Светлана Романенко on 16.02.2021.
//

struct Person {
    let name: String
    let surname: String
    let phone: String

    var email: String {
        "\(name).\(surname)@mail.ru"
    }
}

extension Person {
    static func randomPersonList() -> [Person] {
        let dataManager = DataManager()
        var personsList = [Person]()

        var shuffledNames = dataManager.namesList.shuffled()
        var shuffledSurnames = dataManager.surnameList.shuffled()
        var shuffledPhones = dataManager.phoneList.shuffled()

        for _ in dataManager.namesList {
        if !dataManager.namesList.isEmpty {
            personsList.append(
                Person(name: shuffledNames.removeLast(),
                       surname: shuffledSurnames.removeLast(),
                       phone: shuffledPhones.removeLast())
                )
            }
        }
        return personsList
    }
}
