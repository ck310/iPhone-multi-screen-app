//
//  PlayersTableViewController.swift
//  Assignment01
//
//  Created by C Karthika on 10/03/2022.
//

import UIKit

class PlayersTableViewController: UITableViewController {
    
    var playersData : Players!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //make data available
        playersData = Players(fromXMLFile: "players.xml")

    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return playersData.dataLength()
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PlayersTableViewCell

        // get data for the cell
        let personData = playersData.personData(index: indexPath.row)
        
        // configure the cell
        cell.playersNameLabel.text = personData.name
        cell.playersImageView.image = UIImage(named: personData.image)

        
        //custom cell
        cell.playersListView.layer.cornerRadius = cell.playersListView.frame.height / 2
        cell.playersImageView.layer.cornerRadius = cell.playersListView.frame.height / 2
        
//
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1"{
        // Get the new view controller using segue.destination.
            let destController = segue.destination as! InfoViewController
            
        // find indexPath of sender
            let indexPath = tableView.indexPath(for: sender as! UITableViewCell)
        
        // Pass the selected object to the new view controller.
            let personData = playersData.personData(index: indexPath!.row)
            
            destController.personData = personData
    }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        applyTheme()
    }
    
    func applyTheme() {
        self.view.backgroundColor = ThemeManager.current.primaryColor
    }
    
    func catchNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(reloadTheme), name: NSNotification.Name("ThemeUpdate"), object: nil)
    }
    
    @objc
    func reloadTheme(){
        applyTheme()
    }
    
}
