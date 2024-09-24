//
//  Resources + Strings.swift
//  Workout
//
//  Created by Vladislav Avrutin on 23.09.2024.
//

import UIKit

extension Resources {
    enum Strings {
        enum TabBar {
            static func title( for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Settings"
                }
            }
        }
        
        enum NavBar {
            static func navTitle( for tab: Tabs) -> String {
                switch tab {
                case .overview: return ""
                case .session: return "High Intensity Cardio"
                case .progress: return "Workout Progress"
                case .settings: return "Settings"
                }
            }
        }
        
        enum Overview {
            static let allWorkoutsButton = "All Workouts"
        }
        
        enum Session {
            static func title( for workout: Resources.Session.WorkoutStats) -> String {
                switch workout {
                case .heartRate:
                    return "HEART RATE"
                case .avaragePace:
                    return "AVERAGE PACE"
                case .totalSteps:
                    return "TOTAL STEPS"
                case .totalDistance:
                    return "TOTAL DISTANCE"
                }
            }
        }
    }
}
