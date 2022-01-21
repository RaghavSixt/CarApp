//
//  ViewController.swift
//  CarApp
//
//  Created by Raghav Saboo on 18/01/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
   

    
    let tableView = UITableView()
    
    var data = ["Nissan_Sentra","Tesla_Model3","Tesla_ModelS","Tesla_ModelX","Tesla_ModelY"]
    var dataCarDescription = ["Highs Handsome inside and outside, front seats are endlessly comfy, notable standard tech features. Lows Finding speed is a chore, sporty SR model has a choppy ride, optional sunroof reduces headroom. Verdict The Sentra is a comfortable and good-looking compact car, but it's not an above-average one.", "The Model 3 gains speed smoothly and almost silently, with the electric motor providing strong power from a stop. And it's fast—extremely so in some trims. The rear-wheel-drive Long Range model we tested sprinted from zero to 60 mph in 5.1 seconds.","Model S is built from the ground up as an electric vehicle, with a high-strength architecture and floor-mounted battery pack for incredible occupant protection and low rollover risk. Every Model S includes Tesla's latest active safety features, such as Automatic Emergency Braking, at no extra cost.","The Tesla Model X is a mid-size all-electric luxury crossover made by Tesla, Inc. The vehicle is notable in that it uses falcon-wing doors for passenger access.","Model Y is capable in rain, snow, mud and off-road. Tesla All-Wheel Drive has two ultra-responsive, independent electric motors that digitally control torque to the front and rear wheels—for far better handling, traction and stability control. Model Y is capable in rain, snow, mud and off-road."]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
        
        view.addSubview(tableView)
       
        
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .black
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
        
        cell.textLabel?.text = data[indexPath.row]
        cell.imageView?.image = UIImage(named: "\(data[indexPath.row])main.jpeg")
        cell.backgroundColor = .systemOrange
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    
        let secondController = secondViewController()
        secondController.carName = data[indexPath.row]
        secondController.carDescription = dataCarDescription[indexPath.row]
        
        
        
        navigationController?.pushViewController(secondController, animated: true)
        
        
        print("The car \(data[indexPath.row]) is tapped")
        print("The descriiptioin of the car is \(dataCarDescription[indexPath.row]) ")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0;//Choose your custom row height
    }
    
}
