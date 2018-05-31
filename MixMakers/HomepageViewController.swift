//
//  HomepageViewController.swift
//  MixMakers
//
//  Created by Jack Dewinter on 30/05/2018.
//  Copyright © 2018 MixMakers. All rights reserved.
//

import UIKit

class HomepageViewController: UIViewController {

    @IBOutlet weak var searchTerm: UITextField!
    
    @IBAction func searchPressed(_ sender: Any) {
        let resultView = storyboard?.instantiateViewController(withIdentifier: "Cocktails") as! CocktailListViewController
        resultView.searchTerm = searchTerm.text!
        navigationController?.pushViewController(resultView, animated: true)
        let cocktail = CocktailService()
    }
    
    
    @IBAction func vodkaPressed(_ sender: Any) {
        let resultView = storyboard?.instantiateViewController(withIdentifier: "Cocktails") as! CocktailListViewController
        resultView.searchTerm = "Vodka"
        navigationController?.pushViewController(resultView, animated: true)
    }
    
    @IBAction func ginPressed(_ sender: Any) {
        let resultView = storyboard?.instantiateViewController(withIdentifier: "Cocktails") as! CocktailListViewController
        resultView.searchTerm = "Gin"
        navigationController?.pushViewController(resultView, animated: true)
    }
    
    @IBAction func tequilaPressed(_ sender: Any) {
        let resultView = storyboard?.instantiateViewController(withIdentifier: "Cocktails") as! CocktailListViewController
        resultView.searchTerm = "Tequila"
        navigationController?.pushViewController(resultView, animated: true)
    }
    
    @IBAction func brandyPressed(_ sender: Any) {
        let resultView = storyboard?.instantiateViewController(withIdentifier: "Cocktails") as! CocktailListViewController
        resultView.searchTerm = "Brandy"
        navigationController?.pushViewController(resultView, animated: true)
    }
    
    @IBAction func rumPressed(_ sender: Any) {
        let resultView = storyboard?.instantiateViewController(withIdentifier: "Cocktails") as! CocktailListViewController
        resultView.searchTerm = "Rum"
        navigationController?.pushViewController(resultView, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
