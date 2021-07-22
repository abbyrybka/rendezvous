//
//  VCPlanParty.swift
//  rendezvous
//
//  Created by  Scholar on 7/21/21.
//

import UIKit

class VCPlanParty: UIViewController {

    @IBOutlet weak var partydatePicker: UITextField!
    @IBOutlet weak var textField: UITextField!
    

    @IBOutlet weak var partyEventTextField: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "Segue2"{
                let destinationController = segue.destination as! thirdViewController
                destinationController.eventNameGenerated = partyEventTextField.text!
            }
        }
    let datePicker = UIDatePicker()
    
    @IBOutlet weak var textNotes: UITextField!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var notesLabel: UILabel!
    
    @IBOutlet weak var partyNameLabel: UILabel!
    
    @IBAction func GenerateInvite(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
createDatePicker()
        
        let time = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:MM a"
        textField.text = formatter.string(from: time)
        textField.textColor = .link
        
    
        let timePicker = UIDatePicker()
        timePicker.datePickerMode = .time
        timePicker.addTarget(self, action: #selector(timePickerValueChanged(sender:)) , for: UIControl.Event.valueChanged)
        timePicker.frame.size = CGSize(width: 0, height: 250)
        textField.inputView = timePicker
    }
    
    @objc func timePickerValueChanged(sender: UIDatePicker) {
        //when time is changed it will appear here
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        textField.text = formatter.string(from: sender.date)
    }
    
    func createDatePicker() {
        
        partydatePicker.textAlignment = .center
        
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        
        
     //assign toolbar
        partydatePicker.inputAccessoryView = toolbar
        
        //aasign date picker to the text field
        partydatePicker.inputView = datePicker
    
        // date picker mode
        datePicker.datePickerMode = .date
    }
      @objc func donePressed() {
        //formatter
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        partydatePicker.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }

    
    }
