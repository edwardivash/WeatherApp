//
//  CurrentWeather.swift
//  Weather App
//
//  Created by Эдуард on 1/6/20.
//  Copyright © 2020 Eduard Ivash. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeather {
    let temperature:Double
    let appearentTemperature:Double
    let himidity:Double
    let pressure:Double
    let icon:UIImage
}

extension CurrentWeather:JSONDecodable {
    init?(JSON:[String : AnyObject]){
        guard let temperature = JSON["temperature"] as? Double, let appearentTemperature = JSON["apparentTemperature"] as? Double, let himidity = JSON["humidity"] as? Double, let pressure = JSON["pressure"] as? Double, let iconString = JSON["icon"] as? String else {
            return nil
        }
        
        let icon = WeatherIconManager(rawValue:iconString).image
        
        self.temperature = temperature
        self.appearentTemperature = appearentTemperature
        self.himidity = himidity
        self.pressure = pressure
        self.icon = icon
    }
}

extension CurrentWeather {
    var pressureString: String {
        return "\(Int(pressure * 0.750062)) mm"
    }
    
    var himidityString: String {
        return "\(Int(himidity * 100)) %"
    }
    
    var temperatureString: String {
        return "\(Int(5 / 9 * (temperature - 32))) ºC"
    }
    
    var appearentTemperatureString: String {
        return "\(Int(5 / 9 * (appearentTemperature - 32))) ºC"
    }
}
