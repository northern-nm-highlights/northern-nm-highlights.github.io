## Summary

Replace this paragraph with one or more paragraphs summarizing the purpose and operation of the software you propose to develop in this project.

## Intended users

Write a bullet list here, including at least 2 different types of intended users. Make it reasonably specific; simply saying "Anyone who likes games" (for example) is not sufficiently specific.

For each type of intended user, include at least 1 _user story_. A user story is usually just 1 simple sentence (no more than 2 sentences), in the voice of the intended user, stating a specific task that the user performs using the app, and the benefit that will be obtained. The simplest user stories take the form 

> As a <type of intended user (_who_)> I want to <use of feature or functionality (_what_)> so that <benefit (_why_).

Please avoid writing too much for the user story. In particular, if the way the user story is written makes it difficult to see the _who_, _what_, and _why_, then you probably need to re-write it more directly. (On the other hand, a user story should not simply be a re-statement of the intended user description.)

Here is one (silly) example of an intended user, along with a user story. Please note not only the conceptual structure, but the Markdown syntax used.

* People who like to use randomness in their decision making.

    > As someone who enjoys randomness in my life, I need an app that lets me flip a virtual coin or roll one or more virtual dice, so that I can base my decisions on randomness, without having to carry coins or dice in my pockets.

## Client component

### Functionality

List the key functional aspects that will be provided by the user interface---i.e. tell us what the user will be able to do in the GUI.

### Persistent data

List the content that will be stored on the client side. This should include any information that a user of your system should expect to be maintained locally (i.e. without connection to a server) across multiple sessions of use, on a single device. 
    
### Device/external services

If the client component will need to access special services of the device (e.g. sensors, contacts, messaging), list them here. Also, if the client component will need to access already-existing external services (e.g. real-time weather data, Open Trivia Database), those should also be listed here; any such references to external services should include links to the main page or API description page for the service.
    
## Server component

### Functionality

List the key functional aspects that will be provided by the server component---i.e. tell us what parts of the system functionality will be performed by the server.

### Persistent data

List the content that will be stored on the server side. This should include any information that a user of your system should expect to be accessible across multiple sessions of use, even if accessed from separate devices. In addition, if there will be data originating from some users that will then be accessible by other users, it should be part of the persistent data on the server. 
    
### External services

If the server component will need to access already-existing external services (e.g. stock prices, Open Movie Database), those should also be listed here. Any such references to external services should include links to the main page or API description page for the service.
    
## Stretch goals/possible enhancements 

If you can identify functional elements of the software that you think might not be achievable in the scope of the project, but which would nonetheless add significant value if you were able to include them, list them here. For now, we recommend listing them in order of complexity/amount of work, from the least to the most.
