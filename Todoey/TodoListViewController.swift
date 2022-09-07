//
//  ViewController.swift
//  Todoey
//
//  Created by Yasaman on 9/6/22.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArrey = ["Milk", "Eggos", "Demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArrey.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArrey[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        if tableView.cellForRow(at: indexPath)? .accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)? .accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)? .accessoryType = .checkmark
            
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}

