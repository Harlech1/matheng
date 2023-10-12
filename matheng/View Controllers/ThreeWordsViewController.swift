//
//  ThreeWordsViewController.swift
//  matheng
//
//  Created by Turker Kizilcik on 11.10.2023.
//

import UIKit

class ThreeWordsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    let matematikKelimeleriTurkce = ["toplama", "çıkarma", "çarpma", "bölme", "sayı", "rakam", "karekök", "üs", "logaritma", "eşitlik", "eşitsizlik", "orantı"]
    let matematikKelimeleriIngilizce = ["addition", "subtraction", "multiplication", "division", "number", "digit", "square root", "exponent", "logarithm", "equality", "inequality", "ratio"]
    //var idArray = [UUID]()
    
    var selectedWord = ""
    var selectedWordID : UUID?
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matematikKelimeleriTurkce.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = matematikKelimeleriIngilizce[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetails" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.chosenWord = selectedWord
            //destinationVC.chosenWordID = selectedWordID
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            selectedWord = matematikKelimeleriIngilizce[indexPath.row]
            //indexTurker = indexPath.row
            //selectedWordID = idArray[indexPath.row]
            performSegue(withIdentifier: "toDetails", sender: nil)
        }
    
}
