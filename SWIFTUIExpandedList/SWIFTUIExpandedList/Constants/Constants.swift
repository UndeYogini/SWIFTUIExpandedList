//
//  Constants.swift
//  SWIFTUIExpandedList
//
//  Created by Yogini Unde on 20/05/24.
//

import Foundation
struct Constants
{
    static let navigationTitle = "City List"
    static let fileName = "au_cities"
    static let fileExtension = "json"
    
    // Accessibility VoiceOver Text
    static let list = "My State List"
    static let navigationAccessibilityTitle = "Navigation Title"
    static let city = "City"
    static let temprature = "Temprature"
    static let testCity = "Pune"
    static let changeColorTheme = "Change Color Theme"
    static let done = "Done"
    static let saveWeatherDetails = "Save Weather Details"
    static let colorScheme = "colorScheme"
    static let dark = "Dark"
    static let light = "Light"
    static let system = "System"
    static let filepathUrl = Bundle.main.url(forResource: Constants.fileName, withExtension: Constants.fileExtension)
    
    // Network Error Messages
    static let emptyURL = "URL can't be empty"
    static let fetchCitylist = "Fetched Product List"

}
