//
//  DetailsViewController.swift
//  matheng
//
//  Created by Turker Kizilcik on 11.10.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var chosenWord = ""
    //var chosenWordID : UUID?
    
    @IBOutlet weak var englishWordLabel: UILabel!
    @IBOutlet weak var turkishExplainingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        englishWordLabel.text = chosenWord
        turkishExplainingLabel.text = "hello"
        //print(notes.count)

    }

}
