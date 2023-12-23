# Monty Hall Paradox

### About paradox
*A guest on the show has to choose among three doors, behind one of which is a prize. The guest states his choice, and the host opens one of the two remaining closed doors, always being careful that it is one behind which there is no prize. Should the guest switch to the remaining closed door? Most people choose to stay with their original choice, which is wrong—switching would increase their chance of winning from 1/3 to 2/3. (There is a 1/3 chance that the guest's original pick was correct, and that does not change.)* 

--------------------------------------------------------
### About application

The application is an emulator of game "Let's make a deal", presented in two working versions.

#### Version v1:    trial, simple version

Doors are modulated by an array of boolean values.

Includes
* emulator model
* game
* statistics runner

#### Version v2:    main version.
Implemented in OOP-way.

Includes
* emulator model
* game
* statistics runner
* unit tests

--------------------------------------------------------

### **Interaction with the application**

#### Installation

   
   `git clone https://github.com/electromysh/Monty-Hall-Paradox.git`


#### to play a game:
`cd v2/demonstration/main.rb`

#### feel like a scientist and run through statistics:
`cd v2/demonstration/statistics.rb`

#### run tests:
`cd v2/src/tests bundle exec rspec box_spec.rb`
