//
//  MainViewController.swift
//  myPlaces
//
//  Created by piro on 24.01.21.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restauranNames = [ "Dominos", "KFC", "Papa Johns" ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restauranNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restauranNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restauranNames[indexPath.row])
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
