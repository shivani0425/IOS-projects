

import UIKit

class ShowDataViewController: UIViewController, addDataVCDataPassing {
    
    //MARK: outlets
    
    
    @IBOutlet weak var showNameLabel: UILabel!
    @IBOutlet weak var showMobileNoLabel: UILabel!
    @IBOutlet weak var showCityLabel: UILabel!
    @IBOutlet weak var showCollageNameLabel: UILabel!
    
    //MARK: Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Show Data VC"
    }
    
    
    @IBAction func addButtonAction(_ sender: AnyObject) {
        if let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "AddDataViewController") as? AddDataViewController {
            
            vc2.delegate = self
            
            self.navigationController?.pushViewController(vc2, animated: true)
            
            if showNameLabel.text == "" || showMobileNoLabel.text == "" || showCityLabel.text == "" || showCollageNameLabel.text == "" {
                sender.setTitle("Update", for: .normal)
            } else {
                sender.setTitle("Add", for: .normal)
            }
            
        }
    }
    
    func passData(name: String?, mobNo: String?, city: String?, collage: String?) {
        self.showNameLabel.text = name
        self.showMobileNoLabel.text = mobNo
        self.showCityLabel.text = city
        self.showCollageNameLabel.text = collage
    }
    
}

