//
//  StartViewController.swift
//  Pixelfy
//
//  Created by Zhongheng Sun on 5/7/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//

import UIKit
import FirebaseUI
import GoogleMobileAds

class StartViewController: UIViewController {
    
    //viewcontroller for starting the game
  


    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716" //loading ads
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        }

        // Do any additional setup after loading the view.
    @IBOutlet weak var bannerView: GADBannerView!
    @IBAction func loginTapped(_ sender: UIButton) {
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            return
        }
       
        authUI?.delegate = self
        
        let providers: [FUIAuthProvider] = [
            FUIGoogleAuth(), //google login
            FUIEmailAuth()]  //email login
        
        authUI?.providers = providers
        
        let authViewController = authUI!.authViewController()
        present(authViewController, animated: true, completion: nil)
        
    }
}
    

extension StartViewController: FUIAuthDelegate {

func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?){
    guard error == nil else{
        return
    }
    
    performSegue(withIdentifier: "goHome", sender: self)
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


