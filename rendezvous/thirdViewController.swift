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
        
        generateDate.text = "Date Invited: \(dateGenerated)"
        
        generateTime.text = "Time: \(timeGenerated)"
        
        generateNotes.text = "Notes: \(notesGenerated)"

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var generateEventName: UILabel!
    var eventNameGenerated = ""
    

    @IBOutlet weak var generateDate: UILabel!
    var dateGenerated = ""
    
    @IBOutlet weak var generateTime: UILabel!
    var timeGenerated = ""
    
    
    @IBOutlet weak var generateNotes: UILabel!
    var notesGenerated = ""
}
