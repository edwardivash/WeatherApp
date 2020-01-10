//
//  WeatherIconManager.swift
//  Weather App
//
//  Created by Эдуард on 1/6/20.
//  Copyright © 2020 Eduard Ivash. All rights reserved.
//

import Foundation
import UIKit

enum WeatherIconManager:String {
    
    case ClearDay = "clear-day"
    case ClearNight = "clear-night"
    case Rain = "rain"
    case Snow = "snow"
    case Sleet = "sleet"
    case Wind = "wind"
    case Fog = "fog"
    case Cloudy = "cloudy"
    case PartlyCloudyDay = "party-cloudy-day"
    case PartyCloudyNight = "party-cloudy-night"
    case Hail = "hail"
    case Thunderstorm = "thunderstorm"
    case Tornado = "tornado"
    case UnpredictedIcon = "unpredicted-icon"
    
    init(rawValue:String){
        switch rawValue{
        case "clear-day": self = .ClearDay
        case "clear-night": self = .ClearNight
        case "rain": self = .Rain
        case "snow": self = .Snow
        case "sleet": self = .Sleet
        case "wind": self = .Wind
        case "fog": self = .Fog
        case "cloudy": self = .Cloudy
        case "party-cloudy-day": self = .PartlyCloudyDay
        case "party-cloudy-night": self = .PartyCloudyNight
        case "hail": self = .Hail
        case "thunderstorm": self = .Thunderstorm
        case "tornado": self = .Tornado
        default: self = .UnpredictedIcon
            
        }
    }
}

extension WeatherIconManager {
    var image:UIImage {
        return UIImage(named: self.rawValue)!
    }
}
