//
//  ViewController.swift
//  DataBase
//
//  Created by Tarun Sharma on 27/06/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(NSHomeDirectory())
        fetchData()
        
    }
    
    func writeData() {
        
        let person1 = Person(context: context)
        person1.name = "Peter"
        person1.email = "peter.123@email.com"
        person1.age = 37
        
        let person2 = Person(context: context)
        person2.name = "Robert"
        person2.email = "robert.jobs@email.com"
        person2.age = 22
        
        let person3 = Person(context: context)
        person3.name = "Ned"
        person3.email = "ned.deck@email.com"
        person3.age = 27
        
        let person4 = Person(context: context)
        person4.name = "Oniel"
        person4.email = "oniel.russel@email.com"
        person4.age = 54
        
        do {
            try context.save()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
    func fetchData() {
        do {
           let people = try context.fetch(Person.fetchRequest()) as! [Person]
            for person in people {
                print(person.name!)
            }
        } catch let error {
            print(error.localizedDescription )
        }
    }
    
    
    


}

