# Movies-Android-Kata Part3
Movies Android kata for practice Best Practices in iOS implemented by Jorge Sánchez (Xurxodev)

Kata 3

- We are here to practice Clean architecture with domain and data layers.
- We are going to practice pair programming.

## Considerations 

Master branch contains already solved katas, exists a branch for every kata.

## Getting started

This repository contains an iOS application to show movies information:

![](/Art/movies.gif)

The application initial state without dependency injection is ready to just start refactoring. 


## Tasks

Your task as Android Developer is to **refactoring presentation layer to Model View Presenter**.
The recommendation for this exercise is:

* Before starting
 1. Fork this repository and Checkout `kata_domain_data_movies` branch or download zip.
 3. Execute the application, explore it manually and make yourself familiar with the code.

* To help you get started:
 1. Identify domain (application logic and enterprise logic)
 2. Identify domain boundaries
 3. Create usecases or interactors and entities.
 4. Refactoring ViewController, presenters, DI.
 5. Execute the app and verify that all is right

* Estra tasks if you feel with force :)
 1. Abstracts the domain of the technology used to execute asynchronously and to execute in the main thread
 2. Create movies detail screen according to clean architecture
 3. Create navigator for navigate from movies to movie

##Developed By

* Jorge Sánchez Fernández aka [xurxodev](https://twitter.com/xurxodev)

##License


Copyright 2016 Jorge Sánchez Fernández

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
