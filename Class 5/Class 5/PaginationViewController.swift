//
//  PaginationViewController.swift
//  Class 5
//
//  Created by syan k on 2024/7/6.
//

import UIKit

class PaginationViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageControl.numberOfPages = 3
        
        scrollView.delegate = self
    }
}

extension PaginationViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let width = view.bounds.width
        let currentOffset = scrollView.contentOffset.x
        let currentPage = round(currentOffset / width)
        /*
         width = 393
         offset = 0
         0/393 = 0 (first page)
         393/393 = 1 (second page)
         806/393 = 2 (third page)
         */
        
        pageControl.currentPage = Int(currentPage)
        
        //print(scrollView.contentOffset.x)
    }
}
