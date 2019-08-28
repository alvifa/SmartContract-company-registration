pragma solidity ^0.4.24;

// Contract CompanyRegistration start
contract CompanyRegistration {
    // Address of the actual user
    address public owner;

    // Struct to store companies information
    struct Company {
        uint256 companyId;
        string companyName;
        string status;
        string observations;
    }

    // Struct to store customer information
    struct Customer {
        uint loyaltyPoints;
        uint totalFormality;
    }

    // Struct to store formalities information
    struct Formality {
        uint id;
        string name;
        string entity;
        uint price;
    }

    // Each loyalty point will correspond to 0.5 ether
    uint etherPerPoint = 0.5 ether;

    // Array to store the formalities
    Formality[] public formalities;

    // Mappings
    mapping(address => Company) private companies;
    mapping(address => bool) private registeredCompanies;
    mapping(address => Customer) public customers;
    mapping(address => Formality[]) public customerFormalities;
    mapping(address => uint) public customerTotalFormalities;

    // Event to alert the web page every time a formality is processed
    event FormalityAccomplished(address indexed customer, uint price, string formality);

    // Constructor of the CompanyRegistration contract
    constructor() public {
        owner = msg.sender;
        formalities.push(Formality(1,'Constituir Sociedad','Notario', 4 ether));
        formalities.push(Formality(2,'Inscribir Sociedad','Registro de Propiedad', 3 ether));
        formalities.push(Formality(3,'Registro de Contribuyentes','Ministerio de Hacienda', 3 ether));
        formalities.push(Formality(4,'Seguro de Riesgos de Trabajo','INS', 3 ether));
        formalities.push(Formality(6,'Permiso de Funcionamiento','Ministerio de Salud', 3 ether));
        formalities.push(Formality(5,'Registro como Patrono','CCSS', 3 ether));
        formalities.push(Formality(7,'Abrir Cuenta Bancaria','Bancos', 3 ether));
    }

    // Function to process a formality
    function accomplishFormality(uint formalityIndex) public payable {
        Formality storage formality = formalities[formalityIndex];
        require(msg.value == formality.price, "");

        // With msg.sender (address) the customer will be get from the customers mapping
        Customer storage customer = customers[msg.sender];
        customer.loyaltyPoints += 5; // Increase in 5 loyalty points for the obtained customer
        customer.totalFormality += 1; // Increase in 1 the formalities number for the specific customer
        customerFormalities[msg.sender].push(formality); // Add the formality processed by the customer
        delete formalities[formalityIndex];
        customerTotalFormalities[msg.sender] ++; // Increase in 1 the number of formalities

        // Call to event to process the formality
        emit FormalityAccomplished(msg.sender, formality.price, formality.name);
    }

    // Retunr the quantity of formalities
    function totalFormalities() public view returns (uint) {
        return formalities.length;
    }

    // Assing ether to the customer using the loyalty points
    function redeemLoyaltyPoints() public {
        Customer storage customer = customers[msg.sender];
        uint etherToRefund = etherPerPoint * customer.loyaltyPoints;
        msg.sender.transfer(etherToRefund);
        customer.loyaltyPoints = 0;
    }

    // Return the amount of ether available for the customer if use the loyalty points
    function getRefundableEther() public view returns (uint) {
        return etherPerPoint * customers[msg.sender].loyaltyPoints;
    }

    // Return the balance of the companyRegistration contract
    function getCompanyRegistrationBalance() public isOwner view returns (uint) {
        address companyRegistrationAddress = this;
        return companyRegistrationAddress.balance;
    }

    //To know if the person sending the transaction is the owner of the contract
    modifier isOwner() {
        require(msg.sender == owner, "");
        _;
    }

    // Register a company
    function registerCompany(address account, uint256 companyId, string name, string status, string observations) public {
        require(!companyRegistered(account), "");
        Company storage company = companies[account];
        company.companyId = companyId;
        company.companyName = name;
        company.status = status;
        company.observations = observations;
        registeredCompanies[account] = true;
    }

    // Return true if the company is already registered or false if not
    function companyRegistered(address addr) private view returns  (bool) {
        return registeredCompanies[addr];
    }
}