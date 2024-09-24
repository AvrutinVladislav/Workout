//
//  Resources + Images.swift
//  Workout
//
//  Created by Vladislav Avrutin on 23.09.2024.
//

import UIKit

extension Resources {
    enum Images {
        enum TabBarIcons {
            static func icon(for tab: Tabs) -> UIImage {
                switch tab {
                case .overview: return UIImage(resource: .overview)
                case .session: return UIImage(resource: .session)
                case .progress: return UIImage(resource: .progress)
                case .settings: return UIImage(resource: .settings)
                }
            }
        }
        
        enum Common {
            static let allWorkoutsButton = UIImage(resource: .buttonArrow)
            static let addWorkoutButton = UIImage(systemName: "plus")
        }
        
        enum WorkoutStatsIcons {
            static func icon(for workout: Session.WorkoutStats) -> UIImage {
                switch workout {
                case .heartRate:
                    return UIImage(resource: .heart)
                case .avaragePace:
                    return UIImage(resource: .speed)
                case .totalSteps:
                    return UIImage(resource: .steps)
                case .totalDistance:
                    return UIImage(resource: .distance)
                }
            }
        }
    }
}
