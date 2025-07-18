//
//  SplashViewController.swift
//  Reminder
//
//  Created by Alysson Eduardo on 14/07/25.
//

import Foundation;
import UIKit;

class SplashViewController: UIViewController {
    let contentView = SplashView();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        setup()
    }
    
    private func setup() {
        self.view.addSubview(contentView);
        self.navigationController?.navigationBar.isHidden = true;
        
        setupConstraints();
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
    }
}
