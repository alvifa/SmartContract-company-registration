# SmartContract-company-registration
* [Readme][Readme]

Company registration - Smart Contract

System developed with React to register a new company using a smart contract and Ethereum test network (Ganache) to validate accomplish  of needed formalities

Prerequisites

Node.js 
Truffle 
Ganache 
Metamask

--------------------------------------------------------------------------------------------------------------------------------

Follow the next steps in order to get the system working using virtual machine, the needed environment to be used in other computer is documented in readme located in [Readme]: https://github.com/alvifa/SmartContract-company-registration/tree/master/seminario-creacion-empresas folder.

1. Download virtual machine .ova file.

1. Load .ova, using virtual box software, you can download it here: "https://www.virtualbox.org/wiki/Downloads".

2. Once the virtual machine is loaded. Start the virtual machine.

3. Windows will start without asking for credentials.

4. Start Ganache application. There is a shortcut on desktop. Click on Quickstart.

5. Go to folder: "C:\source\seminario-creacion-empresas\seminario-company-registration".

6. Once there, do right click, select "Git Bash Here". A new console window will be displayed. Or you can open the folder using any desired terminal.

7. If folder "node_modules" is not in the path location run command: "npm install". I other case continue to step 8.

9. Run the command "code .", this will open Visual Studio Code.

10. Once Visual Studio Code is launched with the project loaded open a new terminal in Visual Studio Code.

11. Execute the following commands:

	1) truffle compile
	2) truffle deploy --reset
	3) npm start

12. Once latest command is executed, web browser will be launched with web application.

13. There will be a Metamask window opened, log in if necessary, use following password: "seminario2019".

14. There is a text file in desktop with the password and also the Mnemonic words to restore Metamask accounts if needed.

15. On Metamask window once the password was introduced, select "Connect".

16. If the formalities were not thrown automatically reload the website.

17. Once the web page is running and formalities are loaded you can start to interact with the web page.
