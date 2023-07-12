//
//  ViewController.swift
//  simpsonbook
//
//  Created by Doğukan Ahi on 11.07.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    
    var mySimpsons = [Simpsons]()
   
    var chosenSimpons : Simpsons?
        
     
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        let homer = Simpsons(simpsonName: "Homer", simpsonJob: "Nuclear Safety", simpsonPhoto: UIImage(named: "homer")!)
        let marge = Simpsons(simpsonName: "Marge", simpsonJob: "Housewife", simpsonPhoto: UIImage(named: "marge")!)
        let bart = Simpsons(simpsonName: "Bart", simpsonJob: "Student", simpsonPhoto: UIImage(named: "bart")!)
        let lisa = Simpsons(simpsonName: "Lisa", simpsonJob: "Baby", simpsonPhoto: UIImage(named: "lisa")!)
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
     }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpons = mySimpsons[indexPath.row]
        performSegue(withIdentifier: "detailsVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpons
        }
    }

}

