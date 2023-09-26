//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation
import MapKit  // Import MapKit for CLLocationCoordinate2D

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var coordinates: CLLocationCoordinate2D?  // Added this line
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
        self.coordinates = location.coordinate  // Update the coordinate as well
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local restaurant. 🍔",
                 description: "Dine on your favorite dish by yourself or with others."),
            Task(title: "Your favorite local cafe. ☕",
                 description: "Start off your morning with a warm cup of coffee."),
            Task(title: "Your favorite hiking spot. 🥾",
                 description: "Show us where you go to be one with nature."),
            Task(title: "Your go-to brunch place. 🍳🥓",
                 description: "When you want to sit down and eat something simple, what is your first choice?")
        ]
    }
}




