//
//  VC1.swift
//  LostOrFound
//
//  Created by mohamed on 3/13/18.
//  Copyright © 2018 mohamed. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import Kingfisher

import ANLoader


class VC1: UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate{
 
    
    let images=[
        UIImage(named: "1"),
        UIImage(named: "1"),
        UIImage(named: "1"),
        UIImage(named: "1"),
        UIImage(named: "1")
        
        
    ]
    
        var userList:[categoryModel]=[]
    
    
    @IBOutlet weak var tableView: UITableView!
  
    func setupTableView()  {
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        userList.append(categoryModel(photo: UIImage(named: "graph")!, title: "Business"))
        userList.append(categoryModel(photo: UIImage(named: "smartphone-2")!, title: "Technology"))
        
        userList.append(categoryModel(photo: UIImage(named: "confetti")!, title: "Entertainment"))
        userList.append(categoryModel(photo: UIImage(named: "heart-2")!, title: "Health"))

          userList.append(categoryModel(photo: UIImage(named: "chemistry")!, title: "Science"))
         userList.append(categoryModel(photo: UIImage(named: "basketball")!, title: "Sports"))

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorColor=UIColor(white: 0.95, alpha: 1)
        
        setupTableView()
        SetupView()
 
        

    }
    
    // MARK: Setup View
    func SetupView(){
        
        view.backgroundColor = .white
    
    }
    
   
    
 
    
    
    
    
    
    
    
    
    
    
   
    
    
   

  
 

   
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return userList.count
    
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTVCell") as! HomeTVCell
            
            cell.contentView.backgroundColor=UIColor(white: 0.95, alpha: 1)
            cell.set(center: userList[indexPath.row] )
            return cell
        }
        
        
        
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            
//            
//            let vc = storyboard?.instantiateViewController(withIdentifier: "VC2") as? VC2
//            vc?.firstCategoryId=userList[indexPath.row]
//            
//            
//            self.navigationController?.pushViewController(vc!, animated: true)
//            
            
           
            
            
         
            
            
        }
        
        
   


}

