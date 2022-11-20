//
//  MoviesListTableViewCell.swift
//  07DaysOfCode
//
//  Created by Diego Llopis on 20/11/22.
//

import UIKit
import SnapKit

class MoviesListTableViewCell: UITableViewCell {
    
    //MARK: - Cell Identifier
    static let identifier: String = "MoviesListTableViewCell"
    
    //MARK: - Layout Variables
    lazy var moviePoster: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 18
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var textStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()
    
    lazy var movieTitle: UILabel = {
        let title = UILabel()
        title.textColor = .white
        title.font = .systemFont(ofSize: 16.0, weight: .bold)
        return title
    }()
    
    lazy var movieRelease: UILabel = {
        let text = UILabel()
        text.textColor = .gray
        text.font = .systemFont(ofSize: 14.0, weight: .regular)
        return text
    }()
    
    //MARK: - Inits
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setups
    private func setupView() {
        addSubview(moviePoster)
        addSubview(textStackView)
        
        textStackView.addArrangedSubview(movieTitle)
        textStackView.addArrangedSubview(movieRelease)
    }
    
    private func setupConstraints() {
        moviePoster.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(30)
            make.bottom.equalToSuperview().inset(20)
            make.width.equalTo(90)
            make.height.equalTo(120)
        }
        
        textStackView.snp.makeConstraints { make in
            make.centerY.equalTo(moviePoster)
            make.leading.equalTo(moviePoster.snp.trailing).offset(16)
        }
    }
    
    func setupCell(movie: Movie) {
        moviePoster.backgroundColor = .red
        movieTitle.text = movie.title
        movieRelease.text = movie.releaseDate
    }
}
