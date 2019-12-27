//
//  SwipingController.swift
//  ProgrammaticPageControl
//
//  Created by sayyid maulana khakul yakin on 20/12/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    //  to handle orientation of page control
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        coordinator.animate(alongsideTransition: { (_) in
            
            if self.pageControl.currentPage == 0 {
                self.collectionView.contentOffset = .zero
            } else {
                let indexPath = IndexPath(item: self.pageControl.currentPage, section: 0)
                self.collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            }
                self.collectionViewLayout.invalidateLayout()
            }) { (_) in
        }
    }

        let pages = [
            Page(imageName: "zero", headerText: "Join us", bodyText: "Are youu ready for anything"),
            Page(imageName: "one", headerText: "Subssribe and get", bodyText: "Notify for something"),
            Page(imageName: "two", headerText: "VIP members", bodyText: "")
        ]

    //    let imagesName = ["zero", "one", "two"]
    //    let headerStrings = ["Join us", "Subscribe and get", "VIP members"]
    
    private let prevButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("PREV", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        btn.addTarget(self, action: #selector(handlePrev), for: .touchUpInside)
        btn.setTitleColor(.mainPink, for: .normal)
        return btn
    }()
    private let nextButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("NEXT", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        btn.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        btn.setTitleColor(.mainPink, for: .normal)
        return btn
    }()
    // use lazy var to access member of pages and count that
    private lazy var pageControl: UIPageControl = {
        let page = UIPageControl()
        page.currentPage = 0
        page.numberOfPages = pages.count
        let pinkColor = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
        page.currentPageIndicatorTintColor = pinkColor
        page.pageIndicatorTintColor = UIColor(red: 249/255, green: 207/255, blue: 224/255, alpha: 1)
        return page
    }()
    
    lazy var searchNavBar: UISearchController = {
        let searchBar = UISearchController(searchResultsController: nil)
        
        return searchBar
    }()
    
    @objc private func handlePrev() {
        let nextIndex = max(pageControl.currentPage - 1, 0)
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageControl.currentPage = nextIndex
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    @objc private func handleNext() {
        print("Trying to advance to next") // just test the button next are running well or not
        let nextIndex = min(pageControl.currentPage + 1, pages.count - 1)
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageControl.currentPage = nextIndex
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    fileprivate func setupButtomControls() {
        
        let bottomControllStackView = UIStackView(arrangedSubviews: [prevButton, pageControl, nextButton])
        bottomControllStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControllStackView.distribution = .fillEqually
        
        view.addSubview(bottomControllStackView)

        NSLayoutConstraint.activate([
            bottomControllStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControllStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControllStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControllStackView.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let x = targetContentOffset.pointee.x
        pageControl.currentPage = Int(x / view.frame.width)
        print(x, view.frame.width, x / view.frame.width) 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtomControls()
        
        collectionView.backgroundColor = .white
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView?.isPagingEnabled = true
        
        collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
        
        let btnLeft = UIBarButtonItem(image: #imageLiteral(resourceName: "arrowleft"), style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        
        navigationItem.leftBarButtonItem = btnLeft
        
        navigationController?.navigationBar.tintColor = .mainPink
        navigationItem.title = "Feed Yeah!"

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell

        let page = pages[indexPath.item]
        cell.page = page

        // no longer access because of encapsulation method applied
//        cell.zeroImageView.image = UIImage(named: page.imageName)
//        cell.descriptionText.text = page.headerText

//        let imageName = imagesName[indexPath.item]
//        cell.zeroImageView.image = UIImage(named: imageName)
//        cell.descriptionText.text = headerStrings[indexPath.item]
//        cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
        
        // don't try this its very bad idea
//        let imageView = UIImageView()
//        cell.addSubview(imageView)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}
