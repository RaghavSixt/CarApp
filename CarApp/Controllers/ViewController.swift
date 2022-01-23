//
//  ViewController.swift
//  CarApp
//
//  Created by Raghav Saboo on 18/01/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
   

    
    let tableView = UITableView()
    
    
    var carLogic = CarLogic()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
        
        view.addSubview(tableView)
       
        registerTable()
        // Do any additional setup after loading the view.
    }
    
    
    
    func gotoNextScreen(indexPath: IndexPath)
    {
        let secondController = CarDetailViewController()
        secondController.carName = carLogic.carsDetails[indexPath.row].name
        secondController.carDescription = carLogic.carsDetails[indexPath.row].description

        navigationController?.pushViewController(secondController, animated: true)
    }
    
    
    
    //Table View Content
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func registerTable()
    {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .black
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
        
        cell.textLabel?.text = carLogic.carsDetails[indexPath.row].name
        
        cell.imageView?.image = UIImage(named: "\(carLogic.carsDetails[indexPath.row].name)main.jpeg")
        
        
    
        
        cell.backgroundColor = .systemOrange
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carLogic.carsDetails.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        gotoNextScreen(indexPath: indexPath)
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0;//Choose your custom row height
    }
    
}
