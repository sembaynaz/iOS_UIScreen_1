//
//  MainTableViewCell.swift
//  UIScreens
//
//  Created by Nazerke Sembay on 10.09.2023.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    public static let identifier = "MainTableViewCell"
    
    let stackTitle: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 2
        return stack
    }()
    
    let stackPrice: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 2
        return stack
    }()
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "labelColor")
        label.font = UIFont(
            name: "Segoe UI Semibold",
            size: 24
        )
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var subtitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "secondLabel")
        label.font = UIFont(
            name: "Segoe UI",
            size: 12
        )
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "labelColor")
        label.font = UIFont(
            name: "Segoe UI Semibold",
            size: 16
        )
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var exchangeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "secondLabel")
        label.font = UIFont(
            name: "Segoe UI",
            size: 12
        )
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var posterBGImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var posterImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setData(cripto: Cripto) {
        posterImage.image = UIImage(named: cripto.posterImage)
        posterBGImage.image = UIImage(named: cripto.posterBGImage)
        titleLabel.text = cripto.titleLabel
        subtitleLabel.text = cripto.subtitleLabel
        priceLabel.text = cripto.priceLabel
        exchangeLabel.text = cripto.exchangeLabel
    }
}
// Constraints
extension MainTableViewCell {
    func configureView() {
        configImage()
        stackTitleConfigure()
        stackPriceConfigure()
    }
    
    func configImage(){
        addSubview(posterBGImage)
        addSubview(posterImage)
        
        NSLayoutConstraint.activate([
            posterBGImage.heightAnchor.constraint(equalToConstant: 56),
            posterBGImage.widthAnchor.constraint(equalToConstant: 56),
            posterBGImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            posterBGImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            posterImage.heightAnchor.constraint(equalToConstant: 22),
            posterImage.widthAnchor.constraint(equalToConstant: 22),
            posterImage.centerYAnchor.constraint(equalTo: posterBGImage.centerYAnchor),
            posterImage.centerXAnchor.constraint(equalTo: posterBGImage.centerXAnchor)
        ])
    }
    
    func stackTitleConfigure() {
        addSubview(stackTitle)
        stackTitle.addArrangedSubview(titleLabel)
        stackTitle.addArrangedSubview(subtitleLabel)
        
        NSLayoutConstraint.activate([
            stackTitle.leadingAnchor.constraint(equalTo: posterBGImage.trailingAnchor, constant: 12),
            stackTitle.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    func stackPriceConfigure() {
        addSubview(stackPrice)
        stackPrice.addArrangedSubview(priceLabel)
        stackPrice.addArrangedSubview(exchangeLabel)
        
        NSLayoutConstraint.activate([
            stackPrice.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackPrice.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
