//
//  ViewController.swift
//  testUIlabelInStackviewpadding
//
//  Created by Matthias Ludwig on 15/5/20.
//  Copyright © 2020 Quobject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let mainStackView = UIStackView()
        mainStackView.axis = .vertical
        mainStackView.spacing = 3
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainStackView)
        
        mainStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-(10)-[mainStackView]-(10)-|", options: [], metrics: nil, views: ["mainStackView":mainStackView]))
        
        
        let textLabel = UILabel()
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = "What is a chemical property and how can you observe it?"
        textLabel.numberOfLines = 0
        textLabel.lineBreakMode = .byWordWrapping
        textLabel.backgroundColor = .lightGray
        mainStackView.addArrangedSubview(textLabel)
        
        let textLabel2 = UILabel()
        textLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        let html = "<html lang=\"en\"><head><meta charset=\"UTF-8\"></head><body><div style=\"font-size:36;\"><p>What is a <em>chemical property</em> and how can you observe it?</p></div></body></html>"

        let data = Data(html.utf8)

        if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {

            let a = NSMutableAttributedString.init(attributedString: attributedString)

            let range = (a.string as NSString).range(of: a.string)

            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .left
            paragraphStyle.firstLineHeadIndent = 0.0

            let attributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: UIColor.black,
                .paragraphStyle: paragraphStyle
            ]

            a.addAttributes(attributes, range: range)
            textLabel2.attributedText = a
        }
        textLabel2.numberOfLines = 0
        textLabel2.lineBreakMode = .byWordWrapping
        textLabel2.backgroundColor = .yellow
        
        mainStackView.addArrangedSubview(textLabel2)
       
        let textLabel3 = UILabel()
        textLabel3.translatesAutoresizingMaskIntoConstraints = false
        textLabel3.text = "What is a chemical property and how can you observe it?"
        textLabel3.numberOfLines = 0
        textLabel3.lineBreakMode = .byWordWrapping
        textLabel3.backgroundColor = .lightGray
        mainStackView.addArrangedSubview(textLabel3)
        

    }
    
    
}

