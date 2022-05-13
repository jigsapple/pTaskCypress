//
//  ViewController.swift
//  pTaskCypress
//
//  Created by Mehul on 12/05/22.
//

import UIKit

class ViewController: UIViewController {

    var albums : Array<Album>? = nil
    var photos : Array<Photos>? = nil
    private let viewModel = AlbumViewModel()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //call api through viewModel
        viewModel.getAllRecords {[weak self] albumRecords in
            DispatchQueue.main.async {
                if(albumRecords != nil && albumRecords?.count != 0){
                    self?.albums = albumRecords
                    self?.tableView.reloadData()
                }
            }
        }
    }
}

