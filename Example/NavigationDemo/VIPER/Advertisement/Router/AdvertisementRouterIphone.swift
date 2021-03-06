import UIKit
import Marshroute

final class AdvertisementRouterIphone: BaseDemoRouter, AdvertisementRouter {
    // MARK: - AdvertisementRouter
    func showSimilarSearchResult(searchResultId searchResultId: SearchResultId) {
        pushViewControllerDerivedFrom { routerSeed -> UIViewController in
            let advertisementAssembly = assemblyFactory.advertisementAssembly()
            
            let viewController = advertisementAssembly.module(
                searchResultId: searchResultId,
                routerSeed: routerSeed
            )
            
            return viewController
        }
    }
    
    func showRecursion(sender: AnyObject) {
        presentModalNavigationControllerWithRootViewControllerDerivedFrom { routerSeed -> UIViewController in
            let recursionAssembly = assemblyFactory.recursionAssembly()
            
            let viewController = recursionAssembly.module(routerSeed: routerSeed)
            
            return viewController
        }
    }
}
