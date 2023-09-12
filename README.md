# iOS_UIScreen_1

<img width = "245" height = "500" src = "https://github.com/sembaynaz/iOS_UIScreen_1/assets/96616194/3aa0760d-7feb-4046-9c4a-0fbe12b50eca">
<img width = "245" height = "500" src = "https://github.com/sembaynaz/iOS_UIScreen_1/assets/96616194/454ce46e-5220-4424-a982-2ec003ecd609">

#3 Project Description

The "UIScreens" project is an iOS application designed to demonstrate a tab-based user interface with three primary screens: "Main," "Reports," and "Profile." The project showcases fundamental navigation and layout concepts without using Storyboard. It provides a foundation for building a more comprehensive cryptocurrency portfolio management app on iOS.

## Installation

To install and run the "UIScreens" project on your iOS device or simulator, follow these steps:

1. Clone or download the project repository from [GitHub](https://github.com/your-github-repo-link).

2. Open the project folder in Xcode.

3. Ensure you have the necessary dependencies and SDKs installed.

4. Build and run the project on your preferred iOS device or simulator.

## Usage
# Usage

This "UIScreens" project provides a user interface with a tab bar, showcasing cryptocurrency-related information. Below are details on how to navigate and understand the code:

## Tab Bar Configuration

The `TabBarController.swift` file handles the setup and appearance of the tab bar:

- The `generateTabBar()` function adds view controllers to the tab bar. In this project, it includes the "Портфолио" (Portfolio), "Отчеты" (Reports), and "Профиль" (Profile) screens. You can customize these screens as per your application's requirements.

- The `generateVC(viewController:image:)` function configures each view controller with an image for the tab bar icon.

- The `setTabBarAppearance()` function customizes the tab bar's appearance. It sets the tab bar's tint color to red and adds a horizontal line at the bottom for visual separation.

## Portfolio Screen

The "Портфолио" (Portfolio) screen demonstrates the following:

- Custom Table View Cell: The `MainTableViewCell.swift` file showcases how to create a custom table view cell with multiple labels and images.

- Data Population: The `arrayData()` function populates an array of `Cripto` objects. These objects are used to display cryptocurrency data in the table view cells. You can replace this data with real cryptocurrency information.

- UI Configuration: The `labelConfigure()`, `settingsButtonConfigure()`, and `viewAllButtonConfigure()` functions set up UI elements such as labels and buttons in the view controller.

- Table View Configuration: The `tableViewConfigure()` function configures the table view's data source and delegate and sets constraints to position it correctly on the screen.

## Table View Handling

The `MainViewController.swift` file also contains extensions for implementing table view data source and delegate methods:

- `UITableViewDataSource`: This extension handles the number of rows in the table view and the creation of individual table view cells.

- `UITableViewDelegate`: While this project does not include specific delegate methods, you can extend this section to manage interactions with table view cells, such as handling cell selection.

## Data Model

The `Cripto.swift` file defines the `Cripto` struct, which represents cryptocurrency data. It includes properties for background images, icons, titles, subtitles, prices, and exchange information. You can use this as a model for your cryptocurrency data.

## Additional Details

- The project uses various custom fonts for labels and buttons.

- Images referenced in the project are assumed to be available in the asset catalog.

By exploring this project, you can gain insights into building a tab-based iOS application, creating custom table view cells, and configuring tab bar controllers. Feel free to use and extend this project as a starting point for developing your cryptocurrency portfolio app or similar iOS projects.


## Contribution
- Customize the Main Screen: Modify the cryptocurrency data and layout to suit your needs. You can update the cryptocurrency data or retrieve it from an external source.

- Develop the Reports and Profile Screens: Implement the Reports and Profile screens based on your application's requirements. These screens can offer valuable insights and user management features.

- Enhance User Experience: Add interactive features, gestures, and animations to create a more engaging user experience.

- Ensure Data Security: If handling sensitive user data, implement security measures to protect user information and transactions.

- Localization: Translate the app's user interface elements into multiple languages to reach a wider audience.

Thank you for considering contributing to the "UIScreens" project. Your contributions can help improve the app and make it more valuable to the community.


## Author

git: sembaynaz

mail: nazerke.sembay11@gmail.com

telegram: @sembaynaz
