//
//  AppDetailsViewController.swift
//  App Store
//
//  Created by syan k on 2024/7/26.
//

import UIKit

class AppDetailsViewController: UIViewController {
    
    @IBOutlet weak var appIconImageView: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var shortDescriptionLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var topChartPositionLabel: UILabel!
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var gallery1: UIImageView!
    @IBOutlet weak var gallery2: UIImageView!
    @IBOutlet weak var gallery3: UIImageView!
    @IBOutlet weak var gallery4: UIImageView!
    @IBOutlet weak var gallery5: UIImageView!
    @IBOutlet weak var gallery6: UIImageView!
    
    var topTenApp: AppInfo?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appIconImageView.contentMode = .scaleAspectFill
        appIconImageView.clipsToBounds = true
        appIconImageView.layer.cornerRadius = 20

        if let topTenApp {
            appIconImageView.image = UIImage(named: topTenApp.appIcon)
            appNameLabel.text = topTenApp.appName
            shortDescriptionLabel.text = topTenApp.shortDescription
            ratingLabel.text = "\(topTenApp.rating)"
            ageLabel.text = topTenApp.age
            topChartPositionLabel.text = "\(topTenApp.topChartPosition)"
            detailDescriptionLabel.text = topTenApp.detailedDescription
            let screens = topTenApp.screenshotGallery.count
            if screens <= 3 {
                    gallery1.image = UIImage(named: topTenApp.screenshotGallery[0])
                    gallery2.image = UIImage(named: topTenApp.screenshotGallery[1])
                    gallery3.image = UIImage(named: topTenApp.screenshotGallery[2])
                    gallery4.isHidden = true
                    gallery5.isHidden = true
                    gallery6.isHidden = true
                    
                }
            else if screens == 4 {
                gallery1.image = UIImage(named: topTenApp.screenshotGallery[0])
                gallery2.image = UIImage(named: topTenApp.screenshotGallery[1])
                gallery3.image = UIImage(named: topTenApp.screenshotGallery[2])
                gallery4.image = UIImage(named: topTenApp.screenshotGallery[3])
                gallery5.isHidden = true
                gallery6.isHidden = true
                
            }
            else if screens == 5 {
                gallery1.image = UIImage(named: topTenApp.screenshotGallery[0])
                gallery2.image = UIImage(named: topTenApp.screenshotGallery[1])
                gallery3.image = UIImage(named: topTenApp.screenshotGallery[2])
                gallery4.image = UIImage(named: topTenApp.screenshotGallery[3])
                gallery5.image = UIImage(named: topTenApp.screenshotGallery[4])
                gallery6.isHidden = true
            }
            else {
                gallery1.image = UIImage(named: topTenApp.screenshotGallery[0])
                gallery2.image = UIImage(named: topTenApp.screenshotGallery[1])
                gallery3.image = UIImage(named: topTenApp.screenshotGallery[2])
                gallery4.image = UIImage(named: topTenApp.screenshotGallery[3])
                gallery5.image = UIImage(named: topTenApp.screenshotGallery[4])
                gallery6.image = UIImage(named: topTenApp.screenshotGallery[5])
            }
        }
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
