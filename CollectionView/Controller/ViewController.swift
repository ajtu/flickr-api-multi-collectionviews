
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!


    let searchDisplayArray:[String] = [ "Bread", "Coffee", "Bouldering", "Vietnam", "Poodle"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 120
        tableView.tableFooterView = UIView()
        
        }
    


    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return searchDisplayArray[section]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   


    func numberOfSections(in tableView: UITableView) -> Int {
        return searchDisplayArray.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? TableViewCell
        {
            
        cell.imageView?.image = nil
        cell.displayDataForString(string: searchDisplayArray[indexPath.section])
            
   
            return cell
        }
        return UITableViewCell()
    }
}

