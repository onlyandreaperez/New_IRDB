//
//  DetailViewController.swift
//  New_IRDB
//
//  Created by Andrea Perez on 3/24/19.
//  Copyright © 2019 Andrea Perez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var studio: UILabel!
    @IBOutlet weak var episode: UILabel!
    @IBOutlet weak var format: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    
    
    @IBOutlet weak var moviename: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
//            if let label = studio{
//                label.text = detail.studio
//            }
//            if let label = episode {
//                label.text = "\(detail.episodes)"
//            }
//            if let label =  format{
//                label.text = detail.format
//            }
//            if let label = yearLabel {
//                label.text = detail.yearEnd
//            }
//            if let label = yearLabel {
//                label.text = detail.yearStart
//            }
//            if let label = topLabel {
//                label.text = detail.studio
//            }
//            if let label = imageURL {
//                label.text = detail.imageURL
//            }
//            if let label = description {
//                label.text = detail.description
//            }
            if let episodes = detail.episodes{
                episode.text = "\(episodes)"

            }
            moviename.text = detail.name
            year.text = detail.yearStart
            format.text = detail.format
            studio.text = detail.studio
            topLabel.text = detail.description
            bottomLabel.text = detail.summary
            
            let url = URL(string: detail.imageURL)
            let data = try! Data(contentsOf: url!)
            let image = UIImage(data: data)
            picture.image = image
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Entry? {
        didSet {
            // Update the view.
//            configureView()
        }
    }


}

