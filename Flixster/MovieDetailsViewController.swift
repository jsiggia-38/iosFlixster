//
//  MovieDetailsViewController.swift
//  Flixster
//
//  Created by PS101k on 9/18/22.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    
    
    @IBOutlet weak var backdropView: UIImageView!
    
    
    @IBOutlet weak var posterView: UIImageView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        descriptionLabel.text = movie["overview"] as? String
        descriptionLabel.sizeToFit()
        
        let baseUrlPoster = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrlPoster + posterPath)
        
        posterView.af.setImage(withURL: posterUrl!)
        
        let baseUrlBackdrop = "https://image.tmdb.org/t/p/w780"
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrlBackdrop + backdropPath)
        
        backdropView.af.setImage(withURL: backdropUrl!)
        
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
