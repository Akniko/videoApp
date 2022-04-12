//
//  MovieTableViewCell.swift
//  videoApp
//
//  Created by Akniyet on 12.04.2022.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieYearLabel: UILabel!
    @IBOutlet var moviePosterImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    static let identifier = "MovieTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: "MovieTableViewCell", bundle: nil)
    }
    
    func configure(with model: Movie){
        self.movieTitleLabel.text = model.Title
        self.movieYearLabel.text = model.Year
        let url = model.Poster
        if let data = try? Data(contentsOf: URL(string: url)!){
            self.moviePosterImage.image = UIImage(data: data)
        }
        
       
    }
    
}
