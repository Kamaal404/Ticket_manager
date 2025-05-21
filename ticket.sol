// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventTicket {
    struct Event {
        string name;
        uint256 totalTickets;
        uint256 ticketsSold;
        uint256 price;
        uint256 eventDate;
        address owner;
        bool isActive;
    }

    // Mapping from event ID to Event struct
    mapping(uint256 => Event) public events;
    
    // Mapping to track ticket ownership: eventId => userAddress => hasTicket
    mapping(uint256 => mapping(address => bool)) public ticketOwners;
    
    // Counter for event IDs
    uint256 private eventCounter;

    // Events
    event EventCreated(uint256 indexed eventId, string name, uint256 totalTickets, uint256 price, uint256 eventDate);
    event TicketSold(uint256 indexed eventId, address buyer);
    event SalesActivated(uint256 indexed eventId, bool isActive);
    event FundsWithdrawn(uint256 indexed eventId, uint256 amount);

    // Modifiers
    modifier onlyEventOwner(uint256 eventId) {
        require(events[eventId].owner == msg.sender, "Only event owner can perform this action");
        _;
    }

    modifier eventExists(uint256 eventId) {
        require(events[eventId].owner != address(0), "Event does not exist");
        _;
    }

    modifier eventNotPassed(uint256 eventId) {
        require(block.timestamp < events[eventId].eventDate, "Event has already passed");
        _;
    }

    // Create a new event
    function createEvent(
        string memory name,
        uint256 totalTickets,
        uint256 price,
        uint256 eventDate
    ) public {
        require(eventDate > block.timestamp, "Event date must be in the future");
        require(totalTickets > 0, "Must have at least one ticket");
        require(price > 0, "Price must be greater than 0");

        uint256 eventId = eventCounter++;
        
        events[eventId] = Event({
            name: name,
            totalTickets: totalTickets,
            ticketsSold: 0,
            price: price,
            eventDate: eventDate,
            owner: msg.sender,
            isActive: false
        });

        emit EventCreated(eventId, name, totalTickets, price, eventDate);
    }

    // Activate or deactivate ticket sales
    function toggleSales(uint256 eventId, bool isActive) 
        public 
        onlyEventOwner(eventId)
        eventExists(eventId)
        eventNotPassed(eventId)
    {
        events[eventId].isActive = isActive;
        emit SalesActivated(eventId, isActive);
    }

    // Buy a ticket
    function buyTicket(uint256 eventId) 
        public 
        payable 
        eventExists(eventId)
        eventNotPassed(eventId)
    {
        Event storage event_ = events[eventId];
        
        require(event_.isActive, "Ticket sales are not active");
        require(event_.ticketsSold < event_.totalTickets, "No tickets available");
        require(msg.value == event_.price, "Incorrect ETH amount sent");
        require(!ticketOwners[eventId][msg.sender], "Already owns a ticket");

        event_.ticketsSold++;
        ticketOwners[eventId][msg.sender] = true;

        emit TicketSold(eventId, msg.sender);
    }

    // Check if a user owns a ticket
    function hasTicket(uint256 eventId, address user) public view returns (bool) {
        return ticketOwners[eventId][user];
    }

    // Withdraw funds from ticket sales
    function withdrawFunds(uint256 eventId) 
        public 
        onlyEventOwner(eventId)
        eventExists(eventId)
    {
        uint256 balance = address(this).balance;
        require(balance > 0, "No funds to withdraw");

        (bool success, ) = msg.sender.call{value: balance}("");
        require(success, "Transfer failed");

        emit FundsWithdrawn(eventId, balance);
    }

    // Get event details
    function getEventDetails(uint256 eventId) 
        public 
        view 
        eventExists(eventId)
        returns (
            string memory name,
            uint256 totalTickets,
            uint256 ticketsSold,
            uint256 price,
            uint256 eventDate,
            address owner,
            bool isActive
        )
    {
        Event storage event_ = events[eventId];
        return (
            event_.name,
            event_.totalTickets,
            event_.ticketsSold,
            event_.price,
            event_.eventDate,
            event_.owner,
            event_.isActive
        );
    }
} 
