//
//  ViewControllerTableViewExtension.swift
//  pTaskCypress
//
//  Created by Mehul on 12/05/22.
//

import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Constants.MAX_VALUE
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumTableCell", for: indexPath) as? AlbumTableCell else { return UITableViewCell() }
        let indexPTh = IndexPath(row: Constants.MAX_VALUE / 2, section: 0)
        cell.collectionView.scrollToItem(at: indexPTh, at: .left, animated: false)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        guard let list = self.albums else { return "" }
        let album = list[section % list.count]
        return album.title
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40.0
    }
}
