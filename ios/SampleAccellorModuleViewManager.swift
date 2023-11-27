import Foundation
import React
import UIKit

@objc(SampleAccellorModuleViewManager)
class SampleAccellorModuleViewManager: RCTViewManager {
  @objc
  func showScreen(_ token: NSString){    
    DispatchQueue.main.async {
      if let viewController = SampleAccelloriOSFrameworkManager.instantiateViewController() {
          let navigationController = UINavigationController(rootViewController: viewController)
          navigationController.modalPresentationStyle = .fullScreen
          // Use the most appropriate window based on your application's architecture
          if let topViewController = UIApplication.shared.windows.first?.rootViewController {
            topViewController.present(navigationController, animated: true, completion: nil)
          }
      }
    }
  }
}


// @objc(SampleAccellorModuleViewManager)
// class SampleAccellorModuleViewManager: RCTViewManager {

//   override func view() -> (SampleAccellorModuleView) {
//     return SampleAccellorModuleView()
//   }

//   @objc override static func requiresMainQueueSetup() -> Bool {
//     return false
//   }
// }

// class SampleAccellorModuleView : UIView {

//   @objc var color: String = "" {
//     didSet {
//       self.backgroundColor = hexStringToUIColor(hexColor: color)
//     }
//   }

//   func hexStringToUIColor(hexColor: String) -> UIColor {
//     let stringScanner = Scanner(string: hexColor)

//     if(hexColor.hasPrefix("#")) {
//       stringScanner.scanLocation = 1
//     }
//     var color: UInt32 = 0
//     stringScanner.scanHexInt32(&color)

//     let r = CGFloat(Int(color >> 16) & 0x000000FF)
//     let g = CGFloat(Int(color >> 8) & 0x000000FF)
//     let b = CGFloat(Int(color) & 0x000000FF)

//     return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1)
//   }
// }
