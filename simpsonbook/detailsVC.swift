//
//  detailsVC.swift
//  simpsonbook
//
//  Created by Doğukan Ahi on 12.07.2023.
//

import UIKit

class detailsVC: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
   
    @IBOutlet weak var namelabel: NSLayoutConstraint!
    
    @IBOutlet weak var joblabel: UILabel!
    
    @IBOutlet weak var nammelabel: UILabel!
    
    var selectedSimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nammelabel.text = selectedSimpson?.name
        joblabel.text = selectedSimpson?.job
        imageview.image = selectedSimpson?.photo
        
        
        
        
    }
    

    
    
    
   

}
