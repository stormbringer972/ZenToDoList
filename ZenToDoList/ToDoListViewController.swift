//
//  ViewController.swift
//  ZenToDoList
//
//  Created by joao gouveia on 17/12/2017.
//  Copyright © 2017 joao gouveia. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["Pay bills", "Buy Groceries", "Help Nature"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK - Tableview Datasource Methods - Criar listagem
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    // MARK - TableView Delegate Methods - Acrescentar delaçao quando selecionamos o item da lista
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print (itemArray[inddexPath.row])
        //aparece numero do Array - print (indexPath.row)
        
       
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
        // Effeito visual quando solta o dedo do ecran e a cor dissolve
        
    }
}


