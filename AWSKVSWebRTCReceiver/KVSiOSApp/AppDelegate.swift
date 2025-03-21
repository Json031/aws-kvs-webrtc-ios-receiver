import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var channelConfigViewController: ChannelConfigurationViewController?
    var navigationController: UINavigationController?
    var storyboard: UIStoryboard?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.


        // setup service configuration
        
            self.navigationController = self.storyboard?.instantiateViewController(withIdentifier: "channelConfig") as? UINavigationController
            self.channelConfigViewController = self.navigationController?.viewControllers[0] as? ChannelConfigurationViewController
            DispatchQueue.main.async {
                self.navigationController?.popToRootViewController(animated: true)
                if (!(self.navigationController?.isViewLoaded ?? false)
                    || self.navigationController?.view.window == nil) && self.navigationController != nil {
                    self.window?.rootViewController?.present(self.navigationController!,
                                                             animated: true,
                                                             completion: nil)
                }
            }
        return true
    }

    var orientationLock = UIInterfaceOrientationMask.all

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return self.orientationLock
    }
    struct AppUtility {
        static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
            if let delegate = UIApplication.shared.delegate as? AppDelegate {
                delegate.orientationLock = orientation
            }
        }

        static func lockOrientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation: UIInterfaceOrientation) {
            self.lockOrientation(orientation)
//             if #available(iOS 16, *) {
//                 DispatchQueue.main.async {
//                     let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
//                         windowScene?.requestGeometryUpdate(.iOS(interfaceOrientations: orientation))
//                 }
//             } else {
            UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
//             }
        }
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state.
        // This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message)
        // or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers,
        // and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:
    }

}
