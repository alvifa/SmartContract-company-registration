Company registration using a smart contract

Simple ethereum contract to validate registration of company registration formalities

Step by step guide

1- Install node.js: First of all, we must have installed Node.js version 8 or higher, and version npm 5 or higher on the computer.

Desirable versions are:
* Node.js - 10.7.0
* npm - 6.1.0

The oficial site is : https://nodejs.org/en/
The required version of node.js can be found here: https://nodejs.org/download/release/v10.7.0/

2- Install Git : You need to have installed Git, it is a software that allows you to download code from remote repositories, and npm uses it to access the latest versions of certain packages. https://git-scm.com/downloads

3- Install Visual Studio Code: We must have installed some IDE of development or some text editor.
EXAMPLE: Atom, Sublime Text, Visual Studio code.

4- Then proceed to verify the version of node.js and npm installed on the computer, if we have a Windows computer, we proceed to open Windows powershell of Microsoft at administrator or any terminal program as administrator.

5- Execute the node-v, npm -v commands to see the versions.

6- Install c / c ++ compilation tools and python (Windows Build Tools): Must be installed in npm

Using Linux:

          sudo apt-get update
          sudo apt-get install build-essential
          
Using Windows: We execute the following code as administrator in Windows power Shell:

          npm install --global --production windows-build-tools.

IMPORTANT

In case of failure is recommended restart the machine and then try again the installation of Windows Build Tools.

7- Install solidity extension: We proceed to open our text editor "visual studio code" to install an extension called Solidty 
Developed by Juan Blanco.

8- Install Truffle: You must install truffle framework in its version 4.1.13 specifically for the project globally using the following command: 
        npm install truffle@4.1.15 -g 

The web site oficial is https://truffleframework.com/truffle

9- Install Ganache: It is a software that allow us to stablish an Ethereum test network in a simple way, it can display contracts, execute performance tests, execute transaction inspection commands that take place in the network, the download link It is the following: https://truffleframework.com/ganache .

10- Install Metamask: It is necessary to install in the browser preferably a extension called Metamask which allow the management of the wallets that in turn allow identifying identities and signing Blockchain transactions from the following link can be downloaded: https://metamask.io/

11- Clone repository: Next we will locate ourselves in any part of our pc, we will create a folder, inside we open the GIT BASH and execute the following command: 

          git clone https://github.com/alvifa/SmartContract-company-registration
          
Once downloaded we verify the weight of the folder where it was downloaded, and go to the folder: SmartContract-company-registration\seminario-creacion-empresas\company-registration

12- Install project dependencies: Next proceed to install the dependencies of the entire project of smart contracts so that it works effectively according to its development dependencies until the current version of the repository, once completed verify the size of the folder in where was located case of use.

Open a terminal in the downloaded folder and execute the command "npm install".

13- Open the project with the following command using terminal from the main folder: "code .". This will open Visual Studio Code.

IMPORTANT

14- In Visual Studio Code we need to point the Solidity compilator to the version desired. Click on File->Preferences->Settings go to Extensions and find "Solidity Configuration", once there, Click on link for "Compile Using Remote Version" the file must contain the following:

{
    "solidity.compileUsingRemoteVersion" : "v0.4.24+commit.e67f0147"
}

IMPORTANT

15- Connect ganache with metamask: Next in this step we will show how to connect to a private network in metamask and import our available accounts in ganache.

Once installed the software requirements mentioned in the step-by-step guide, you can perfectly replicate and continue to share this project with the smart contracts project.

15.1 Introduce the password if needed.

15.2 Open Ganache and Quickstart.

15.3 Open Metamask extension in explorer and click on Networks->Custom RPC and enter the following information:

       - Network Name: Could be any name
       - New RPC URL: http://127.0.0.1:7545
       - Finally click on Save

15.4 Set the ganache info in the truffle-config.js

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

16- Execute the project: Once the dependencies were downloaded, proceed to execute the following commands from visual studio code within the terminal located in the project, specifically in the following order:

   16.1 command: truffle compile in the project directory
   16.2 command: truffle deploy --reset
   16.3 command: npm start

 Once executed, the project running will be displayed in the default browser.
