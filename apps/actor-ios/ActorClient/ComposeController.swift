//
//  ComposeController.swift
//  ActorClient
//
//  Created by Stepan Korshakov on 23.03.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import UIKit

class ComposeController: ContactsBaseController, UISearchBarDelegate, UISearchDisplayDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var searchView: UISearchBar?
    var searchDisplay: UISearchDisplayController?
    var searchSource: ContactsSource?
    
    override init() {
        super.init(nibName: "ComposeController", bundle: nil)
        
        self.navigationItem.title = "New Message";
        self.extendedLayoutIncludesOpaqueBars = true
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
        bindTable(tableView)
        
        searchView = UISearchBar()
        searchView!.searchBarStyle = UISearchBarStyle.Default
        searchView!.barStyle = UIBarStyle.Default
        searchView!.translucent = false

        let image = UIImage(named: "SearchBarBg")!
        searchView?.setSearchFieldBackgroundImage(image.stretchableImageWithLeftCapWidth(7, topCapHeight: 0), forState: UIControlState.Normal)

        // Enabled color
        searchView!.barTintColor = UIColor.whiteColor()
        
        // Disabled color
        searchView!.backgroundImage = Imaging.imageWithColor(UIColor.whiteColor(), size: CGSize(width: 320, height: 44))
        searchView!.backgroundColor = UIColor.whiteColor()
        
        // Enabled Cancel button color
        searchView!.tintColor = Resources.TintColor
        
        searchView!.placeholder = "";
        searchView!.delegate = self
        searchView!.frame = CGRectMake(0, 0, 0, 44)
        
        searchDisplay = UISearchDisplayController(searchBar: searchView, contentsController: self)
        searchDisplay?.searchResultsDelegate = self
        searchDisplay?.searchResultsTableView.rowHeight = 56
        searchDisplay?.searchResultsTableView.separatorStyle = UITableViewCellSeparatorStyle.None
        searchDisplay?.searchResultsTableView.backgroundColor = Resources.BackyardColor
        searchDisplay?.searchResultsTableView.frame = tableView.frame
        
        tableView.tableHeaderView = searchView
        
        searchSource = ContactsSource(searchDisplay: searchDisplay!)

        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if (tableView == self.tableView) {
            var contact = objectAtIndexPath(indexPath) as! AMContact
            navigateToMessagesWithPeerId(contact.getUid())
        } else {
            var contact = searchSource!.objectAtIndexPath(indexPath) as! AMContact
            navigateToMessagesWithPeerId(contact.getUid())
        }
    }
    
    // MARK: -
    // MARK: Navigation
    
    private func navigateToMessagesWithPeerId(peerId: jint) {
        var messagesController = MessagesViewController(peer: AMPeer.userWithInt(peerId))
        navigationController!.pushViewController(messagesController, animated: true)
    }

}