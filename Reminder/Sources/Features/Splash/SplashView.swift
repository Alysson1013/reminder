//
//  SplashView.swift
//  Reminder
//
//  Created by Alysson Eduardo on 14/07/25.
//

import Foundation;
import UIKit;

class SplashView: UIView {
    
    private let logoImageView: UIImageView = {
        let image = UIImageView();
        image.image = UIImage(named: "Logo");
        image.contentMode = .scaleAspectFit;
        image.translatesAutoresizingMaskIntoConstraints = false;
        return image;
    }();
    
    private let titleLogoLabel: UILabel = {
        let label = UILabel();
        label.text = "Remind"
        label.font = UIFont.boldSystemFont(ofSize: 32);
        label.textColor = .white;
        label.translatesAutoresizingMaskIntoConstraints = false;
        return label;
    }()
    
    init(){
        super.init(frame: .zero);
        
        setupUI();
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        self.backgroundColor = .systemRed;
        
        addSubview(logoImageView);
        addSubview(titleLogoLabel)
        
        setupConstraints();
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLogoLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 24),
            titleLogoLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -24),
            
            logoImageView.trailingAnchor.constraint(equalTo: titleLogoLabel.leadingAnchor, constant: -8),
            logoImageView.bottomAnchor.constraint(equalTo: titleLogoLabel.bottomAnchor)
        ]);
    }
}
