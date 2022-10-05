//
//  MainView.swift
//  ViperApi
//
//  Created by Balla Tamás on 2022. 10. 04..
//

import Foundation
import UIKit


class MainView: UIViewController, AnyView {
    unowned var presenter: AnyPresenter?
    
    // MARK: -  UI elements
    
    private let tableView: UITableView = {
       let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.isHidden = true
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        view.backgroundColor = .cyan
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
    }
    
    func update(with data: [AnyEntity]) {
        
    }
    
    func update(with error: Error) {
        
    }
}

extension MainView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}

extension MainView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        return cell
    }
    
    
}
