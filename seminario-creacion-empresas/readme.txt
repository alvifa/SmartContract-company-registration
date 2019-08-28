﻿company registration smart contract

simple ethereum contract to validate registration of company registration formalities

Prerequisites 
Node.js 
Truffle 
Ganache 
Metamask

*-------------------------------------------------------------------------------------------------------Step by step guide

1- Install node.js: First of all, we must have installed Node.js version 8 or higher and version npm 5 or higher on the computer.
the oficial site is : https://nodejs.org/en/

2- Install Git : You need to have installed Git, it is a software that allows you to download code from remote repositories, and npm uses it to access the latest versions of certain packages. https://git-scm.com/downloads

3- Install Visual Studio Code: We must have installed some IDE of development or some editor of text.
EXAMPLE: Atom, Sublime Text, Visual Studio code.

4- Then proceed to verify the version of node.js and npm installed on the computer, if we have a Windows computer, we proceed to open Windows powershell of Microsoft at administrator or CMD.

5- Execute the node-v, npm -v commands to see the versions.

---

6-Install c / c ++ compilation tools: Must be installed in npm
In Linux: 
          sudo apt-get update
          sudo apt-get install build-essential
          
In Windows: we execute the following code as administrator in Windows power Shell:
          npm install --global --production windows-build-tools.

7-Install extension solidity: We proceed to open our text editor "visual studio code" to install an extension called Solidty 
Developed by Juan Blanco.

8-Install Truffle: You must install truffle framework in its version 4.1.13 specifically for the project globally using the following command: 
        npm install truffle@4.1.13 -g the site oficial is https://truffleframework.com/truffle.

9-Install Ganache: It is a software that allow us to stablish an Ethereum test network in a simple way, it can display contracts, execute performance tests, execute transaction inspection commands that take place in the network, the download link It is the following: https://truffleframework.com/ganache .

10-Install Metamask : It is necessary to install in the browser preferably a
extension called Metamask which allow the management of the wallets that in turn allow identifying identities and signing Blockchain transactions from the following link can be downloaded: https://metamask.io/   .

--- 

11-Clone repository: Next we will locate ourselves in any part of our pc, we will create a folder called use case, inside we open the GIT BASH and execute the following command: 

          git clone https://github.com/mvargasc85/CompanyRegistrationSmartContract 

Once downloaded we verify the weight of the folder where it was downloaded.

12-Install project dependencies: Next proceed to install the dependencies of the entire project of smart contracts so that it works effectively according to its development dependencies until the current version of the repository, once completed verify the size of the folder in where was located case of use.


IMPORTANT

13-Connect ganache with metamask: Next in this step we will show how to connect to a private network in metamask and import our available accounts in ganache.

Once installed the software requirements mentioned in the step-by-step guide, you can perfectly replicate and continue to share this project with the smart contracts project.


13.1
Set the ganache info in the truffle-config.js
module.exports = { 
  networks: { 
      development: {
      host: 'localhost', 
      port: 7545, 
      network_id: '*', 
      gas: 5000000 
    } 
  } 
}

IMPORTANT
14-Execute the project: Once the dependencies were downloaded, proceed to execute the following commands from visual studio code within the terminal located in the project, specifically in the following order:

   14.1 command: truffle compile in the project directory
   14.2 command: truffle deploy --reset
   14.3 command: npm start

--- 

 Once executed, the project running will be displayed in the default browser.