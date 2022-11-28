//
//  UIImageView+.swift
//  AluraChallenge
//
//  Created by Diego Llopis on 27/11/22.
//

import UIKit
import Kingfisher

extension UIImageView {
    func configPosterImage(_ imageUrl: String) {
        self.kf.setImage(with: URL(string:"\(BaseUrl.posterBaseUrl)\(imageUrl)"))
    }
}
