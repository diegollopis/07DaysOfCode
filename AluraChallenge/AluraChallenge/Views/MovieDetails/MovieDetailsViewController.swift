//
//  MovieDetailsViewController.swift
//  AluraChallenge
//
//  Created by Diego Llopis on 27/11/22.
//

import UIKit
import Kingfisher

class MovieDetailsViewController: UIViewController {
    
    //MARK: - Constants and variables
    private let screenView = MoviesDetailsView()
    private let viewModel = MoviesListViewModel()

    //MARK: - Life cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        screenView.setupGradientBackground()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configBackButton()
    }
    
    //MARK: - Load View
    override func loadView() {
        super.loadView()
        view = screenView
    }
    
    //MARK: - Inits
    init(movie: Movie) {
        super.init(nibName: nil, bundle: nil)
        setScreenContent(with: movie)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setups
    private func setScreenContent(with movie: Movie) {
        screenView.titleLabel.text = movie.title
        screenView.moviePoster.configPosterImage(movie.posterPath)
        screenView.rateLabel.text = "Classificação dos usuários: \(movie.voteAverage)"
        screenView.descriptionLabel.attributedText = NSAttributedString(string:movie.overview).withLineSpacing(12)
    }
    
    private func configBackButton() {
        let backBarBtnItem = UIBarButtonItem()
        backBarBtnItem.title = "Voltar"
        navigationController?.navigationBar.backItem?.backBarButtonItem = backBarBtnItem
        self.navigationController?.navigationBar.tintColor = .white
    }
}
