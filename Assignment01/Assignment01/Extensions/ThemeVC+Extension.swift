//
//  ThemeVC+Extension.swift
//  Assignment01
//
//  Created by C Karthika on 21/03/2022.
//

import UIKit

extension ThemeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ThemeTableViewCell().reuseID) as? ThemeTableViewCell
        else{
            fatalError("ThemeTableViewCell Error")
        }
        
        cell.themeLabel.text = self.themeNames[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ThemeManager.current = ThemeManager.themes[indexPath.row]
        NotificationCenter.default.post(name: NSNotification.Name("ThemeUpdate"), object: nil)
        dismiss(animated: true, completion: nil)
    }
}
