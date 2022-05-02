
import UIKit

class AddDataViewController: UIViewController {
    
    //MARK: Outlets
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var mobNoTF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var clgNameTF: UITextField!
    
    weak var delegate: addDataVCDataPassing?
    
    //MARK: Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Add Data VC"
        addSaveBarButtonItem()
    }
    
    //MARK: Other methods
    func addSaveBarButtonItem() {
        let addButton = UIBarButtonItem(barButtonSystemItem: .save,
                                        target: self,
                                        action: #selector(saveButtonAction))
        
        self.navigationItem.leftBarButtonItem = addButton
    }
    
    func navigateToShowDataVC() {
        
        if let delegate = self.delegate {
            
            let nameToPass = self.nameTF.text
            let mobNoToPass = self.mobNoTF.text
            let cityToPass = self.cityTF.text
            let collageToPass = self.clgNameTF.text
            
            delegate.passData(name: nameToPass, mobNo: mobNoToPass, city: cityToPass, collage: collageToPass)
            
            self.navigationController?.popViewController(animated: true)
            
        } else {
            print("delegateVC2 is does not value")
        }
        
    }
    
    @objc func saveButtonAction() {
        
        navigateToShowDataVC()
        
    }
    
}
