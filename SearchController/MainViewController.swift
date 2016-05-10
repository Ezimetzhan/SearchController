//
//  MainViewController.swift
//  SearchController
//
//  Created by Ben Chatelain on 5/9/16.
//  Copyright © 2016 Ben Chatelain. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet private var searchBar: UISearchBar!
    @IBOutlet var keywordLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        keywordLabel.text = "Select a Keyword"
    }
}

// MARK: - UISearchBarDelegate
extension MainViewController: UISearchBarDelegate {
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        debugPrint("searchBar:textDidChange: \(searchText)")
    }

    func searchBar(searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        debugPrint("searchBar:shouldChangeTextInRange:replacementText: - range: \(range), text: \(text)")
        return true
    }

    func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool {
        debugPrint("searchBarShouldBeginEditing")
        return true
    }

    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        debugPrint("searchBarTextDidBeginEditing")
    }

    func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool {
        debugPrint("searchBarShouldEndEditing")
        return true
    }

    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        debugPrint("searchBarTextDidEndEditing")
    }

    func searchBarBookmarkButtonClicked(searchBar: UISearchBar) {
        debugPrint("searchBarBookmarkButtonClicked")
    }

    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        debugPrint("searchBarCancelButtonClicked")
    }

    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        debugPrint("searchBarSearchButtonClicked")
    }

    func searchBarResultsListButtonClicked(searchBar: UISearchBar) {
        debugPrint("searchBarResultsListButtonClicked")
    }

    func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        debugPrint("searchBar:selectedScopeButtonIndexDidChange: selectedScope: \(selectedScope)")
    }
}

// MARK: - UISearchControllerDelegate
extension MainViewController: UISearchControllerDelegate {
    func presentSearchController(searchController: UISearchController) { debugPrint("presentSearchController") }
    func willPresentSearchController(searchController: UISearchController) { debugPrint("willPresentSearchController") }
    func didPresentSearchController(searchController: UISearchController) { debugPrint("didPresentSearchController") }
    func willDismissSearchController(searchController: UISearchController) { debugPrint("willDismissSearchController") }
    func didDismissSearchController(searchController: UISearchController) { debugPrint("didDismissSearchController") }
}
