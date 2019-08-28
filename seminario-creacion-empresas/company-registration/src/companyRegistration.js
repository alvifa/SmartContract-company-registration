import CompanyRegistrationContract from "../build/contracts/CompanyRegistration.json";
import contract from "truffle-contract";

// Receive as provider the Metamask In Page Provider
export default async(provider) => {
    // Definition of the companyRegistration contract
    // Send as parameter the jason that corresponds to the truffle compilation output
    const companyRegistration = contract(CompanyRegistrationContract);
    // Send the provider to let it know that will be working with Metamask
    companyRegistration.setProvider(provider);

    // Create and return the companyRegistration instance
    let instance = await companyRegistration.deployed();
    return instance;
}