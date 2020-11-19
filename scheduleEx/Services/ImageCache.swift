//
//  ImageCache.swift
//  scheduleEx
//
//  Created by viv on 11/18/20.
//

import Foundation
import UIKit

class ImageCache {
    
    
    static let cache = NSCache<NSString, UIImage>()
        
    static func downloadImage(withURL url:URL, completion: @escaping (_ image:UIImage?)->()) {
        let dataTask = URLSession.shared.dataTask(with: url) { data, responseURL, error in
            var downloadedImage:UIImage?
            
            if let data = data {
                downloadedImage = UIImage(data: data)
            }
            
            if downloadedImage != nil { // put the images we download in the cache
                cache.setObject(downloadedImage!, forKey: url.absoluteString as NSString)
            }
            
            DispatchQueue.main.async {
                completion(downloadedImage)
            }
            
        }
        
        dataTask.resume()
    }
        
    static func getImage(withURL url:URL, completion: @escaping (_ image:UIImage?)->()) {
        // If image already exists in the cache, then return the image from the cache rather than redownloading it
        if let image = cache.object(forKey: url.absoluteString as NSString) {
            completion(image)
        } else {
            downloadImage(withURL: url, completion: completion)
        }
    }
    
    
    // Usage: Function for using get Image function
    // ImageCache.getImage(withURL: [url here]) { image in
    //      self.profileImageView.image = image
    //}
    
    
    
}
