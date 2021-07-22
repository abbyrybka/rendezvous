//
//  thirdViewController.swift
//  rendezvous
//
//  Created by John Houser on 7/22/21.
//

import UIKit

class thirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateEventName.text = eventNameGenerated

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var generateEventName: UILabel!
    var eventNameGenerated = ""
    
    

}
