//
//  CarDetailViewController.swift
//  CarApp
//
//  Created by Raghav Saboo on 18/01/22.

import UIKit

class secondViewController:UIViewController
{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        
        createStackView()
    }
    
    
    var carName:String=""
    var carDescription:String=""
    
    
    func setName(name:String)
    {
        carName = name
    }
    
    func setDescription(desName:String)
    {
        carDescription = desName
    }
   
    
    
    
    @objc  func buttonClicked(_ : UIButton)
    {
        let thirdController = thirdViewController()
        
        
        
        navigationController?.pushViewController(thirdController, animated: true)
        
        print("Just Pressed The button so time to show more images")
    }
    
    func createStackView()
    {
        
        let imageView = UIImageView()
        
    
        imageView.backgroundColor = .white
        imageView.image = UIImage(named: "\(carName)pic1.jpeg")
        imageView.contentMode = .scaleAspectFill
        imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height/3).isActive = true
        
        let label = UILabel()
        
        label.text = carName
        label.textColor = .white
        label.textAlignment = .center
        label.backgroundColor = .black
        label.font = .systemFont(ofSize: 21, weight: .bold)
        label.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        label.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        let label2 = UILabel()
        
        label2.text = carDescription
        label2.contentMode = .scaleToFill
        label2.numberOfLines = 0
    
        label2.font = .systemFont(ofSize: 18 )
        label2.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        label2.heightAnchor.constraint(equalToConstant: view.frame.size.height/3).isActive = true
        
        
        
        
        let button = UIButton()
        button.frame = CGRect(x:100 , y:100, width: 100, height: 50)
        button.backgroundColor = .black
        button.setTitle("Click here for more Images", for: .normal)
        button.addTarget(self, action: #selector(buttonClicked(_ :)), for: .touchUpInside)
        
        
        
        let stackView = UIStackView(arrangedSubviews: [imageView,label2,button,label])
        stackView.frame = view.bounds
        
        //config
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        
        view.addSubview(stackView)
        
    }

}

struct Car
{
    let name:String
    let description:String
}
