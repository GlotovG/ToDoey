//
//  ViewController.swift
//  ToDoey
//
//  Created by Gennadiy Glotov on 24/10/2018.
//  Copyright © 2018 Gennadiy Glotov. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    var itemArray = ["Купить чай", "Позвонить Алексею", "Сделать ToDoList"]
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let items = defaults.array(forKey: "ToDoListArray") as? [String] {
            itemArray = items
        }
        
    }

    //MARK - Описание таблицы VC
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - Описание delegete методов
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK - добавление новой задачи
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Добавление задачи", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Добавить", style: .default) { (action) in
            // что будет если пользовтаель нажмет на кнопку
            
            self.itemArray.append(textField.text!)
            
            //запись данных в память для сохранения
            self.defaults.set(self.itemArray, forKey: "ToDoListArray")
            
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Напомни мне о"
            textField = alertTextField
        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
}

