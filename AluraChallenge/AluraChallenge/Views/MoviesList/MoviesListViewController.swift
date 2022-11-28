//
//  MoviesListViewController.swift
//  07DayOfCode
//
//  Created by Diego Llopis on 19/11/22.
//

import UIKit

class MoviesListViewController: UIViewController {
    
    //MARK: - Constants and variables
    private let screenView = MoviesListView()
    private let viewModel = MoviesListViewModel()

    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        screenView.tableView.delegate = self
        screenView.tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        screenView.setupGradientBackground()
    }
    
    override func loadView() {
        super.loadView()
        view = screenView
    }
}

extension MoviesListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: screenView.identifier, for: indexPath) as? MoviesListTableViewCell else {
                    return UITableViewCell() }
        cell.backgroundColor = .clear
        cell.setupCell(movie: viewModel.movies[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let viewController = MovieDetailsViewController(movie: viewModel.movies[indexPath.row])
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 212
    }
}
