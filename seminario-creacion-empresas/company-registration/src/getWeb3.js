import Web3 from 'web3';
import { rejects } from 'assert';

const getWeb3 = () => {
    // Return promise to how use the function
    return new Promise((resolve, reject) => {
        // Wait until the page is loaded or the event Load is emit
        window.addEventListener('load', function(){
            // Declaration of web3 variable and store the actual web3 variable from the browser
            let web3 = this.window.web3;

            // Verify if we have web3 available in the browser
            // and recreate web3 with the version located in package.json
            if (typeof web3 !== undefined){
                web3 = new  Web3(web3.currentProvider);
                // Enable the use of Ethereum from Metamask
                ethereum.enable();
                //Resolve the promise and return web3
                resolve(web3);
            }else{
                // If we do not have web3 defined in the browser
                console.error("No provider found, please install Metamask");
                reject();
            }
        });
    });
};

// Export the function
export default getWeb3;