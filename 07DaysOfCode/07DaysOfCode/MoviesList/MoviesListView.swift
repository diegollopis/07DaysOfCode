//
//  MoviesListView.swift
//  07DayOfCode
//
//  Created by M2Y on 19/11/22.
//

import UIKit
import SnapKit

class MoviesListView: UIView {
    
    let identifier = "MoviesListTableViewCell"
    
    //MARK: - Layout variables
    lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.text = "Filmes Populares"
        title.textColor = .white
        title.font = .systemFont(ofSize: 28.0, weight: .bold)
        return title
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.register(MoviesListTableViewCell.self, forCellReuseIdentifier: identifier)
        return tableView
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setups
    private func setupView() {
        addSubview(titleLabel)
        addSubview(tableView)
    }
    
    private func setupConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(87)
            make.centerX.equalToSuperview()
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(42)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    public func setupGradientBackground() {
        let topColor = UIColor(red: 46/255, green: 19/255, blue: 113/255, alpha: 1.0).cgColor
        let bottomColor = UIColor(red: 19/255, green: 11/255, blue: 43/255, alpha: 1.0).cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor, bottomColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
