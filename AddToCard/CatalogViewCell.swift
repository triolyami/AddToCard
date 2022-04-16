//
//  CatalogView.swift
//  AddToCard
//
//  Created by Me on 09.04.2022.
//

import UIKit

class CatalogViewCell: UITableViewCell {
    
    static var cellIdentifier = "Cell"
    var cellLabel: UILabel!
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //contentView.addSubview(button)
        
        
        contentView.addSubview(button)
        contentView.addSubview(authorTextLabel)
        contentView.addSubview(trackTextLabel)

        setupConstraints()
//        cellLabel = UILabel(frame: CGRect(x: self.frame.width - 100, y: 10, width: 100.0, height: 40))
//        cellLabel.text = ""
//        cellLabel.textColor = UIColor.black
//        addSubview(cellLabel)
        

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.setTitle("add to card", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    lazy var authorTextLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.textColor = .black
        textLabel.backgroundColor = .white
        textLabel.text = "mamagfhfghgfhfghfghfggfhgfhdgfhdgfhdgfhgdhgfdhdfg"
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    
    lazy var trackTextLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.text = "dgfdgfdgdfgdfgdfgdf"
        textLabel.textColor = .black
        textLabel.backgroundColor = .white
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    

    private func setupConstraints() {
        NSLayoutConstraint.activate([

            button.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            button.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            button.widthAnchor.constraint(equalToConstant: 100)

        ])
        
        NSLayoutConstraint.activate([
            authorTextLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            authorTextLabel.rightAnchor.constraint(equalTo: button.leftAnchor, constant: -16),
            authorTextLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            

            authorTextLabel.heightAnchor.constraint(equalToConstant: self.frame.size.height - 20)

        ])
        
        NSLayoutConstraint.activate([
//            trackTextLabel.topAnchor.constraint(equalTo: authorTextLabel.bottomAnchor, constant: 5),
            trackTextLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            trackTextLabel.rightAnchor.constraint(equalTo: button.leftAnchor, constant: -16),
            trackTextLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            trackTextLabel.widthAnchor.constraint(equalToConstant: self.frame.size.width - 52),
            trackTextLabel.heightAnchor.constraint(equalToConstant: self.frame.size.height - 20)

        ])
        
                
  
    }
    
    

}
