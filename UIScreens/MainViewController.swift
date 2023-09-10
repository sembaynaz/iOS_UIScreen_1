//
//  MainViewController.swift
//  UIScreens
//
//  Created by Nazerke Sembay on 10.09.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    var criptoArray: [Cripto] = []

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Портфолио"
        label.tintColor = UIColor(named: "labelColor")
        label.font = UIFont(
            name: "Segoe UI Bold",
            size: 32
        )
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let settingsButton: UIButton = {
       let button = UIButton()
        button.setBackgroundImage(
            UIImage(systemName: "gearshape"),
            for: .normal
        )
        button.tintColor = UIColor(
            red: 185/255,
            green: 193/255,
            blue: 217/255,
            alpha: 1
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let viewAllButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("посмотреть все", for: .normal)
        let buttonFont = UIFont(name: "Segoe UI Light", size: 14)
        button.titleLabel?.font = buttonFont
        button.setTitleColor(
            UIColor(
                red: 246/255,
                green: 84/255,
                blue: 62/255,
                alpha: 1),
            for: .normal
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.rowHeight = 89
        table.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.identifier)
        table.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        table.layer.backgroundColor = UIColor.white.cgColor
        table.allowsSelectionDuringEditing = true
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureView()
        arrayData()
    }
    
    func arrayData() {
        criptoArray = [Cripto(
            posterBGImage: "image1bg",
            posterImage: "image1",
            titleLabel: "Bitcoin",
            subtitleLabel: "+1,6%",
            priceLabel: "$29,850.15 ",
            exchangeLabel: "2.73 BTC"
        ),
        Cripto(
            posterBGImage: "image2bg",
            posterImage: "image2",
            titleLabel: "Ethereum",
            subtitleLabel: "-0,82%",
            priceLabel: "$10,561.24",
            exchangeLabel: "47.61 ETH"
        ),
        Cripto(
            posterBGImage: "image3bg",
            posterImage: "image3",
            titleLabel: "Litecoin",
            subtitleLabel: "-2,10%",
            priceLabel: "$3,676.76",
            exchangeLabel: "39,27 LTC"
        ),
        Cripto(
            posterBGImage: "image4bg",
            posterImage: "image4",
            titleLabel: "Ripple",
            subtitleLabel: "+1,6%",
            priceLabel: "$5,241.62",
            exchangeLabel: "16447,65 XRP"
        ),
        Cripto(
            posterBGImage: "image4bg",
            posterImage: "image4",
            titleLabel: "Ripple",
            subtitleLabel: "+1,6%",
            priceLabel: "$5,241.62 ",
            exchangeLabel: "16447,65 XRP"
        ),
        Cripto(
            posterBGImage: "image4bg",
            posterImage: "image4",
            titleLabel: "Ripple",
            subtitleLabel: "+1,6%",
            priceLabel: "$29,850.15 ",
            exchangeLabel: "2.73 BTC"
        )
        ]
    }
}

extension MainViewController {
    func configureView() {
        labelConfigure()
        settingsButtonConfigure()
        viewAllButtonConfigure()
        tableViewConfigure()
    }
    
    func labelConfigure() {
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 35
            ),
            titleLabel.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 28)
        ])
    }
    
    func settingsButtonConfigure() {
        view.addSubview(settingsButton)
        NSLayoutConstraint.activate([
            settingsButton.widthAnchor.constraint(equalToConstant: 24),
            settingsButton.heightAnchor.constraint(equalToConstant: 24),
            settingsButton.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -28
            ),
            settingsButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor)])
    }
    
    func viewAllButtonConfigure() {
        view.addSubview(viewAllButton)
        NSLayoutConstraint.activate([
            viewAllButton.topAnchor.constraint(
                equalTo: settingsButton.topAnchor,
                constant: 44),
            viewAllButton.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -28)
        ])
    }
    
    func tableViewConfigure() {
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(
                equalTo: viewAllButton.bottomAnchor,
                constant: 0),
            tableView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: 0),
            tableView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 28),
            tableView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -28),
        ])
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        criptoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: MainTableViewCell.identifier
        ) as! MainTableViewCell
        cell.setData(cripto: criptoArray[indexPath.row])
        return cell
    }
}
