//
//  MovieDetailsView.swift
//  AluraChallenge
//
//  Created by Diego Llopis on 27/11/22.
//

import UIKit
import SnapKit

class MoviesDetailsView: UIView {
        
    //MARK: - Layout variables
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    
    lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.textColor = .white
        title.numberOfLines = 0
        title.textAlignment = .center
        title.font = .systemFont(ofSize: 28.0, weight: .bold)
        return title
    }()
    
    lazy var moviePoster: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 40
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var rateLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 18.0, weight: .bold)
        title.textColor = .white
        title.textAlignment = .center
        title.numberOfLines = 0
        return title
    }()
    
    lazy var descriptionLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 16.0)
        title.textColor = .lightGray
        title.numberOfLines = 0
        return title
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
        setupGradientBackground()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setups
    private func setupView() {
        addSubview(titleLabel)
        addSubview(moviePoster)
        addSubview(rateLabel)
        
        addSubview(scrollView)
        scrollView.addSubview(descriptionLabel)
    }
    
    private func setupConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(133)
            make.leading.trailing.equalToSuperview().inset(27)
        }
        
        moviePoster.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(32)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(290)
        }
        
        rateLabel.snp.makeConstraints { make in
            make.top.equalTo(moviePoster.snp.bottom).offset(32)
            make.leading.trailing.equalToSuperview().inset(27)
        }
        
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(rateLabel.snp.bottom).offset(32)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide)
        }

        descriptionLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(scrollView)
            make.width.equalTo(self).inset(27)
            make.bottom.equalToSuperview()
        }
    }
}
