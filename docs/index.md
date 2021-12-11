---
title: Overview
description: Summary of project functionality and resources.
menu: Overview
order: 0
---

## Team Roster

* Nicholas Mitchell- Lead on Javadocs/help with others if needed.
* Layla Coriz- Lead on Controllers/help with others if needed.
* Royce Reano- Lead on Wireframe/help with others if needed. 

## Project Introduction and description.

This app will show you what places to visit and what to see when visiting a certain city or surrounding area, in Northern New Mexico.
The surrounding "Highlights" of that city will appear. "Highlights" being points of interest, historical markers, churches,
or even just a great restaurant! The user will be able to find some of the most interesting and highly recommended
places to visit and see in the great wilderness and cities of Northern New Mexico! My app will use input from the user and turn it into pictures of places to see, as well as a description of the places as well. 
When a person using the app goes to the selected destination, the app will be able to store a map and landmarks when your is not connected with the internet.

I chose to develop this app because I'm interested in having information on trails and hiking maps when my phone does not get service to the internet.
This would be useful to others who are interested in going somewhere they have never been and able to see a map to guide them and interesting landmarks.

This app allows the user to use a map for finding and sorting out different place types in the area interested in visiting. 
This information found by searching the place type can be saved to the phone by favoriting a location or a landmark.

## Summary of current state 

### Current state of completion

* Current state here

### Aesthetic and cosmetic improvements

* The colors and background pictures.

### Functional improvements

* To be able to save more information on the place visiting.

## Intended users

* Users will be an out-of-state visitor, visiting Northern New Mexico and wanting some good advice as where to go.
> As an out-of-state visitor, I want an app that I can use to look up new places to go and explore, when hiking.
> When visiting a certain place and the phone does not service, having a trail map downloaded on the phone from the app beforehand when phone did work.


* Northern New Mexico people needing a place to go where they have never been.
> As a resident of Northern New Mexico wanting to find a new point of interest I've never seen, I want an app that helps me locate new places in my area.
> As an explorer, wanting to find a hot spring or waterfall would be useful to have an app with directions, pictures, and maps.

* Local people who are in need of a quick and fast in state getaway!
> As a resident of New Mexico, I want an app that gives me new places to explore in the Northern region of New Mexico to help me get away from the city! 
> Back country places that are not easily assessable, finding them through this app will be great!  

## Basic user instructions

The user will open the app to a map where they can select a location. Then they will pick a favorite place type from a list to visit.
If the user is interested in downloading the information about the current place type they can favorite it to save it to their phone. 

## Outlines of technology stacks

### Back end

* Ubuntu Linux OS
* Apache HTTP server configured as reverse proxy
* JRE 8
* Apache Tomcat Java application server
* Web service application, incorporating:
  * Data model
    * Embedded Apache Derby database
    * Hibernate ORM
    * Custom entity classes
    * Spring Boot Data
    * Custom data repository interfaces
  * Service controllers
    * Spring MVC
    * Custom controller classes
  * View composition & serialization
    * Jackson JSON
    * Custom view classes & interfaces
  * Authentication
    * Spring Security
    * Google Sign In (external service)
    * Custom authentication verifier method for audience (client ID)

### Front end

* FILLIN

## Client component

### Functionality

* The person using this app will be able to use an inner active map of New Mexico cities, and see the surrounding areas. 

* The local content will consist of different places of interest to that area. 
    
### Device/external services
* This will be a service that you can download to your phone before you get to the area when your phone don't work.
* This will include maps, trail maps, pictures, and landmarks on how to get there.

#### Google Places API

* [Overview](https://developers.google.com/maps/documentation/places/web-service/overview)

[comment]: <> (* TODO Summarize the functional role of google places API in the application.)

[comment]: <> (* TODO What is the impact on the application if google places API is unavailable.)

#### Google Maps

* [Overview](https://developers.google.com/maps/documentation/android-sdk/overview)

[comment]: <> (* TODO Summarize the functional role of google maps API in the application.)

[comment]: <> (* TODO What is the impact on the application if google maps API is unavailable.)

## Server component

* The app would provide pictures and information on the place, being put in by the person, on where points of interest, and cool places to see.


### Functionality

* The app would provide information on the point of interest, and name typed in and surrounding area. Pictures and descriptions of places would also be provided. 
You would be able to search your destination with a map, and find a point of interest.


### Persistent Data

* The user will be able to use a map and be directed to the surrounding area for that place, as well as places of interest in the surrounding area.
I personally would like to have a point of interest, for all the places I know! 

### External services

* So the user will also have a link, if the particular place where they are going has one, to access.
    
## Stretch goals/possible enhancements

* A goal would be to have users add input to their points of interest, as well as pictures.


## Copyright and License

Northern New Mexico highlights: An app that will tell you the highlights of places to go see,
while in or close to a particular city.

Copyright (C) 2021  Layla Coriz, Nicholas Mitchell, Royce Reano

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.