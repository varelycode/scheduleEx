//
//  DataService.swift
//  scheduleEx
//
//  Created by viv on 11/18/20.
//

import Foundation
import UIKit

typealias  JSON = [String: Any]

class DataService {

    static func parseData(completion: @escaping (Bool)->(), onError: @escaping (NSError) -> Void) {
        
        let jsonURLString = "http://files.yinzcam.com.s3.amazonaws.com/iOS/interviews/ScheduleExercise/schedule.json"
        guard let url = URL(string: jsonURLString) else {return}
        
        let dataTask = URLSession.shared.dataTask(with: url){ data, response, error in
            print("do stuff here")
            if error != nil{
                print("Ended with error")
                print(error ?? "No Error?")
                return
            }
            if let httpResponse = response as? HTTPURLResponse { // Check response status
                print("statusCode: \(httpResponse.statusCode)")
            }
            guard let data = data else {return}
            
            do {
                
                let instance = try? JSONDecoder().decode(Instance.self, from: data)
                print("JSON Data \(instance?.gameList ?? nil)")
//                let gamelist = try JSONDecoder().decode(instance, from: data)
//                print("JSON Data \(gamelist ?? nil)")
                
                
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }

            
            
            DispatchQueue.main.async {
                completion(true)
            }
        }
        dataTask.resume()
        
    }





    static func getJson() {
        
        
        
        // If image already exists in the cache, then return the image from the cache rather than redownloading it

        parseData(completion: { (data) in
            print("Success: \(data)")
        }) { (error) in
            print(error.domain)
        }
        
//
//        if let image = cache.object(forKey: url.absoluteString as NSString) {
//            completion(image)
//        } else {
//            downloadImage(withURL: url, completion: completion)
//        }
    }

}


