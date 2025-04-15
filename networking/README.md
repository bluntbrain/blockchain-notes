# Computer Networking Notes

## Topics
- [Computer Networking Notes](#computer-networking-notes)
  - [Topics](#topics)
    - [Core Networking Concepts](#core-networking-concepts)
  - [The Internet Evolution](#the-internet-evolution)
  - [Network Protocols (Standards)](#network-protocols-standards)
    - [Checksums](#checksums)
  - [IP Addresses (IPv4 vs IPv6) and Ports](#ip-addresses-ipv4-vs-ipv6-and-ports)
  - [Ports, Sockets](#ports-sockets)
    - [Ports and Network Communication](#ports-and-network-communication)
    - [Sockets](#sockets)
  - [Types of Networks](#types-of-networks)
    - [Network Topologies](#network-topologies)
  - [Network Infrastructure](#network-infrastructure)
    - [Connection Methods](#connection-methods)
  - [OSI Model](#osi-model)
  - [TCP/IP Model](#tcpip-model)
    - [1. Network Access Layer (Link Layer)](#1-network-access-layer-link-layer)
    - [2. Internet Layer](#2-internet-layer)
    - [3. Transport Layer](#3-transport-layer)
    - [4. Application Layer](#4-application-layer)
  - [HTTP vs HTTPS](#http-vs-https)
    - [HTTP (Hypertext Transfer Protocol)](#http-hypertext-transfer-protocol)
    - [HTTPS (Hypertext Transfer Protocol Secure)](#https-hypertext-transfer-protocol-secure)
  - [CORS (Cross-Origin Resource Sharing)](#cors-cross-origin-resource-sharing)
    - [The Problem](#the-problem)
    - [How CORS Works](#how-cors-works)
    - [Fixing CORS Issues](#fixing-cors-issues)
      - [Backend Solutions](#backend-solutions)
      - [Frontend Solutions](#frontend-solutions)
    - [Key CORS Headers](#key-cors-headers)
  - [What Happens When You Click a Link?](#what-happens-when-you-click-a-link)
  - [Detailed Process](#detailed-process)
    - [1. URL Parsing and DNS Resolution](#1-url-parsing-and-dns-resolution)
    - [2. TCP Connection and TLS Handshake](#2-tcp-connection-and-tls-handshake)

### Core Networking Concepts
1. **Packets**
   - Data is broken into packets
   - Each packet contains source and destination information
   - Packets can take different routes to destination
   - Reassembled at destination

2. **Circuit Switching vs Packet Switching**
   - Circuit switching: Dedicated path (e.g., traditional phone lines)
   - Packet switching: Shared path (e.g., internet)
   - Advantages of packet switching: Scalable

3. **Network Topologies**
   - Star: Central hub with connected nodes
   - Bus: Single communication line
   - Ring: Circular connection
   - Mesh: Multiple interconnections
   - Hybrid: Combination of topologies

## The Internet Evolution

The internet's development can be traced back to the Cold War era:

1. **ARPANET (1969)**
   - First packet-switched network
   - Connected four universities
   - Used NCP (Network Control Protocol)
   - Key innovations:Packet switching, Distributed network, Fault tolerance

2. **TCP/IP Protocol (1974)**
   - Developed by Vint Cerf and Bob Kahn
   - Standardized communication between different networks
   - Key components:
     - TCP: Reliable data delivery
     - IP: Addressing and routing
   - Became standard in 1983

3. **World Wide Web (1989)**
   - Invented by Tim Berners-Lee
   - Key components:
     - URLs: Uniform Resource Locators
     - HTTP: Hypertext Transfer Protocol
     - HTML: Hypertext Markup Language
     - Web browsers
   - Revolutionized information sharing

## Network Protocols (Standards)

### Checksums

**Checksum** is a small fixed-size value calculated from a block of data for detecting errors in transmission. It functions like a digital fingerprint of data.

**Why checksums are needed:**
- **Data Integrity**: Detect accidental changes during transmission
- **Wide Application**: Used in protocols (TCP/UDP), file downloads, and data storage

**How checksums work:**
1. Sender calculates checksum from data using an algorithm
2. Checksum is transmitted with the data
3. Receiver recalculates checksum using same algorithm 
4. Checksums are compared - match indicates intact data

**Checksum Calculation Methods:**
   - **One's Complement Sum**: Used in TCP/IP (Internet Checksum)
     - Add all data words
     - Wrap any carries back into the sum
     - Flip all bits (one's complement)
   
   - **Two's Complement**: Alternative approach
     - Add all values
     - Negate the result using two's complement math
   
   - **Modular Sum**: Simple approach
     - Add all bytes
     - Take modulo of sum (typically mod 255 or 256)
   
   - **XOR Checksum**: Simplest implementation
     - Start with initial value (often 0)
     - XOR with each byte sequentially
**Limitations:**
- Can only detect errors, not correct them
- Some errors might go undetected if they cancel each other out

1. **TCP (Transmission Control Protocol)**
   - Connection-oriented protocol
   - Features:Reliable data delivery, Error checking and correction, Flow control, Congestion control
   - Three-way handshake:
     ```mermaid
     sequenceDiagram
         participant Client
         participant Server
         Client->>Server: SYN
         Server->>Client: SYN-ACK
         Client->>Server: ACK
     ```
   - TCP Header Structure:
     ```
     ┌─────────────────────────────────────────────────┐
     │ Source Port (16 bits) │ Destination Port (16 bits) │
     ├─────────────────────────────────────────────────┤
     │ Sequence Number (32 bits)                        │
     ├─────────────────────────────────────────────────┤
     │ Acknowledgment Number (32 bits)                  │
     ├─────────────────────────────────────────────────┤
     │ Data Offset │ Reserved │ Flags │ Window Size     │
     ├─────────────────────────────────────────────────┤
     │ Checksum (16 bits) │ Urgent Pointer (16 bits)    │
     ├─────────────────────────────────────────────────┤
     │ Options (variable)                               │
     └─────────────────────────────────────────────────┘
     ```

2. **UDP (User Datagram Protocol)**
   - Connectionless protocol
   - Features:
     - No connection establishment
     - No error recovery
     - No flow control
     - Lower overhead
   - Use cases:
     - Video streaming
     - Online gaming
     - DNS queries
     - VoIP
   - UDP Header Structure:
     ```
     ┌─────────────────────────────────────────────────┐
     │ Source Port (16 bits) │ Destination Port (16 bits) │
     ├─────────────────────────────────────────────────┤
     │ Length (16 bits) │ Checksum (16 bits)             │
     └─────────────────────────────────────────────────┘
     ```

3. **HTTP/HTTPS**
   - Application layer protocol
   - HTTP Methods:
     - GET: Retrieve data
     - POST: Send data
     - PUT: Update data
     - DELETE: Remove data
     - HEAD: Get headers only
     - OPTIONS: Get allowed methods
   - HTTP Status Codes:
     - 1xx: Informational
     - 2xx: Success
     - 3xx: Redirection
     - 4xx: Client Error
     - 5xx: Server Error
   - HTTPS:
     - SSL/TLS encryption
     - Certificate verification
     - Secure key exchange

## IP Addresses (IPv4 vs IPv6) and Ports

| Feature | IPv4 | IPv6 |
|---------|------|------|
| Address Length | 32-bit (4 bytes) | 128-bit (16 bytes) |
| Address Format | xxx.xxx.xxx.xxx | xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx |
| Address Space | Limited (4.3 billion) | Virtually unlimited |
| Address Classes | A: 1.0.0.0 to 126.255.255.255<br>B: 128.0.0.0 to 191.255.255.255<br>C: 192.0.0.0 to 223.255.255.255<br>D: 224.0.0.0 to 239.255.255.255 (Multicast)<br>E: 240.0.0.0 to 255.255.255.255 (Reserved) | Not applicable (uses different addressing scheme) |
| Private IP Ranges | 10.0.0.0/8<br>172.16.0.0/12<br>192.168.0.0/16 | Uses Unique Local Addresses (ULA) |
| Security | Optional (IPSec) | Built-in (IPSec) |
| Multicast Support | Limited | Enhanced |
| Header Complexity | Complex | Simplified |
| Address Types | Unicast, Broadcast, Multicast | Unicast, Multicast, Anycast |
| Current Usage | Still dominant (95%+ of traffic) | Growing but limited adoption |

> **Note:** Despite IPv6's advantages, IPv4 remains the primary protocol for internet traffic due to the slow transition process and compatibility concerns. Most networks use a dual-stack approach supporting both protocols.

| Port Range | Type | Description | Common Examples |
|------------|------|-------------|-----------------|
| 0-1023 | Well-Known | System/root services | 20/21: FTP<br>22: SSH<br>80: HTTP<br>443: HTTPS<br>53: DNS |
| 1024-49151 | Registered | Assigned by IANA for applications | 3306: MySQL<br>5432: PostgreSQL<br>27017: MongoDB<br>6379: Redis |
| 49152-65535 | Dynamic/Private | Temporary/ephemeral connections | Assigned by OS for client connections |

## Ports, Sockets

### Ports and Network Communication

**Ports** are virtual endpoints that allow a single device with one IP address to run multiple network services. They act like numbered doors on a building (the IP address), each leading to a different service.

1. **How Ports Work**
   - 16-bit numbers (0-65535) that identify specific processes
   - Combined with IP addresses to form a complete address (IP:Port)
   - Example: 192.168.1.5:80 (web server at IP 192.168.1.5, port 80)

2. **Port Assignment**
   - Server applications bind to specific well-known ports
   - Client applications use dynamic ports assigned by the OS
   - Local port tables track active connections

### Sockets

A **socket** is the combination of an IP address and port number that represents one endpoint of a communication channel. Sockets are the foundation of network programming.

1. **Socket Basics**
   - Created by the operating system when applications request network connections
   - Identified by a unique 5-tuple: (Protocol, Local IP, Local Port, Remote IP, Remote Port)
   - Allows bidirectional communication between applications

2. **Socket Programming**
   - Socket API: Standard interface for network programming
   - Socket states: LISTEN, ESTABLISHED, CLOSE_WAIT, etc.
   - Example socket address: 10.1.1.5:3000 to 192.168.1.10:80
  
## Types of Networks

| Network Type | Description | Key Features | Common Use |
|-------------|-------------|-------------|------------|
| **LAN (Local Area Network)** | Connects devices in a small area | - High speed<br>- Low latency<br>- Private | Offices, homes, schools |
| **WAN (Wide Area Network)** | Spans large geographic areas | - Connects multiple LANs<br>- Lower speed<br>- Higher latency | Internet, global organizations |
| **WLAN (Wireless LAN)** | Wireless local network | - No cables<br>- Mobility<br>- Variable signal | Mobile devices, IoT, hotspots |
| **VPN (Virtual Private Network)** | Secure network over public internet | - Encrypted<br>- Remote access<br>- Secure tunneling | Remote work, secure access |

### Network Topologies
![Network Diagram](/networking/assets/topologies.png)

## Network Infrastructure

### Connection Methods

1. **Wired Connections**
   - Ethernet: Speeds: 10Mbps to 10Gbps, Distance: Up to 100m
   - Fiber Optics: Speeds: Up to 100Gbps, Distance: Up to 40km
   - Coaxial: Speeds: Up to 1Gbps, Distance: Up to 500m

1. **Wireless Connections**
   - Wi-Fi
   - Cellular:
     - 3G: Up to 2Mbps
     - 4G: Up to 100Mbps
     - 5G: Up to 10Gbps
   - Bluetooth:
     - Range: Up to 100m
     - Speed: Up to 2Mbps

## OSI Model

- consists of 7 layers

![OSI](/networking/assets/osi.png)

## TCP/IP Model

The TCP/IP model is a more practical and widely implemented networking framework than the OSI model. It consists of 4 layers that map roughly to the 7 layers of the OSI model.

```
┌─────────────────┐  ┌───────────────────────┐
│   APPLICATION   │  │      Application      │
├─────────────────┤  │      Presentation     │
│    TRANSPORT    │  │       Session         │
├─────────────────┤  ├───────────────────────┤
│    INTERNET     │  │       Transport       │
├─────────────────┤  ├───────────────────────┤
│  NETWORK ACCESS │  │       Network         │
│                 │  ├───────────────────────┤
│                 │  │    Data Link          │
│                 │  │    Physical           │
└─────────────────┘  └───────────────────────┘
    TCP/IP Model           OSI Model
```

### 1. Network Access Layer (Link Layer)
- **Equivalent to**: OSI Physical and Data Link layers
- **Function**: Handles physical connection to the network and data framing
- **Protocols**: Ethernet, Wi-Fi (802.11), PPP, ARP
- **Addressing**: MAC addresses

### 2. Internet Layer
- **Equivalent to**: OSI Network layer
- **Function**: Handles logical addressing and routing of packets
- **Protocols**: IP, ICMP, IPsec, IGMP
- **Addressing**: IP addresses (IPv4, IPv6)
- **Units**: Packets
- **Devices**: Routers, layer 3 switches

### 3. Transport Layer
- **Equivalent to**: OSI Transport layer
- **Function**: Provides end-to-end communication, reliability, flow control
- **Protocols**: TCP, UDP, SCTP
- **Addressing**: Ports
- **Units**: Segments (TCP) or Datagrams (UDP)
- **Features**: 
  - TCP: Connection-oriented, reliable, ordered delivery
  - UDP: Connectionless, faster, no guarantees

### 4. Application Layer
- **Equivalent to**: OSI Session, Presentation, and Application layers
- **Function**: Provides network services directly to end-users
- **Protocols**: HTTP, HTTPS, FTP, SMTP, DNS, SSH, Telnet
- **Units**: Data/Messages
- **Focus**: User interfaces and data representation

## HTTP vs HTTPS

### HTTP (Hypertext Transfer Protocol)

**Basic Characteristics**
- Stateless protocol
- Text-based
- Port 80
- No encryption
- Faster than HTTPS


### HTTPS (Hypertext Transfer Protocol Secure)

1. **Basic Characteristics**
   - Secure version of HTTP
   - Port 443
   - Uses SSL/TLS encryption
   - Slower than HTTP
   - Requires certificates
  
2. **SSL (Secure Sockets Layer)/TLS (Transport Layer Security) Handshake**
   ```mermaid
   sequenceDiagram
       participant Client
       participant Server
       Client->>Server: Initial Hello
       Server->>Client: Hello + Certificate
       Client->>Server: Exchange Keys
       Client->>Server: Begin Encryption
   ```

3. **Certificate Components**
   - Public key
   - Subject information
   - Issuer information
   - Validity period
   - Digital signature

## CORS (Cross-Origin Resource Sharing)

**CORS** is a security mechanism that restricts web pages from making requests to domains different from the one that served the page. It uses HTTP headers to define permissions.

### The Problem

- Browser's same-origin policy blocks cross-origin requests
- Affects API calls from frontend to backend when domains differ
- Applies to AJAX requests, fetch API, and some HTML tags
- Triggers "Access-Control-Allow-Origin" errors in console

### How CORS Works

1. **Browser** sends request to different origin
2. **Server** must respond with correct CORS headers
3. **Browser** enforces policy based on response headers

### Fixing CORS Issues

#### Backend Solutions

**Express.js (Node.js)**
   ```javascript
   // Using cors middleware
   const cors = require('cors');
   
   // Allow all origins
   app.use(cors());
   
   // Or with options
   app.use(cors({
     origin: 'https://yourdomain.com',
     methods: ['GET', 'POST', 'PUT', 'DELETE'],
     allowedHeaders: ['Content-Type', 'Authorization'],
     credentials: true
   }));
   ```

#### Frontend Solutions

**Proxy in Development**
   - In React (package.json): `"proxy": "http://localhost:5000"`
   - Avoids CORS in development only

### Key CORS Headers

- `Access-Control-Allow-Origin`: Which origins can access the resource
- `Access-Control-Allow-Methods`: HTTP methods allowed
- `Access-Control-Allow-Headers`: Headers allowed in requests
- `Access-Control-Allow-Credentials`: Whether cookies can be included
- `Access-Control-Max-Age`: How long results can be cached

## What Happens When You Click a Link?

## Detailed Process
![Click Link](/networking/assets/clicklink.png)

### 1. URL Parsing and DNS Resolution

1. **URL Parsing**
   - Browser breaks down the URL into components:
     - Protocol: `https://`
     - Domain: `www.google.com`
     - Path: `/`
   - Determines if the request needs to be secure (HTTPS)

2. **DNS Cache Check**
   - **Browser Cache**: First checks its own DNS cache
   - **OS Cache**: If not found, checks operating system's DNS cache
   - **Resolver Cache**: If still not found, checks ISP's DNS resolver cache
   - **DNS Resolution Process**:
     - Root DNS servers (13 worldwide)
     - TLD (Top-Level Domain) servers (.com, .org, etc.)
     - Authoritative DNS servers (google.com's nameservers)

3. **DNS Query Types**
   - **Recursive Query**: Client asks resolver to find the answer
   - **Iterative Query**: Resolver asks other DNS servers
   - **Caching**: Results are cached at each level

### 2. TCP Connection and TLS Handshake

1. **TCP Three-Way Handshake**
   ```mermaid
   sequenceDiagram
       participant Client
       participant Server
       Client->>Server: SYN (Synchronize)
       Server->>Client: SYN-ACK (Synchronize-Acknowledge)
       Client->>Server: ACK (Acknowledge)
   ```
   - **SYN**: Client initiates connection with sequence number
   - **SYN-ACK**: Server acknowledges and sends its sequence number
   - **ACK**: Client acknowledges server's sequence number

2. **TLS Handshake**
    ```mermaid
   sequenceDiagram
       participant Client
       participant Server
       Client->>Server: Initial Hello
       Server->>Client: Hello + Certificate
       Client->>Server: Exchange Keys
       Client->>Server: Begin Encryption
   ```

   - **Certificate Verification**: Client verifies server's SSL certificate
   - **Key Exchange**: RSA key exchange - Public/private key pair system for secure data encryption
   - **Cipher Suite**: Agree on encryption algorithms
   - **Session Keys**: Generate keys for secure communication

### 4. Browser Rendering

1. **HTML Parsing**
2. **Resource Loading**
3. **Rendering Pipeline**
4. **Page Load Events**

## Technical Terms Explained

1. **DNS (Domain Name System)**
   - Hierarchical naming system
   - Converts domain names to IP addresses
   - Uses UDP port 53

2. **TCP (Transmission Control Protocol)**
   - Connection-oriented protocol
   - Reliable data delivery
   - Flow control and congestion control
   - Error checking and recovery

3. **TLS (Transport Layer Security)**
   - Cryptographic protocol
   - Provides secure communication
   - Uses asymmetric and symmetric encryption
   - Certificate-based authentication

4. **HTTP/HTTPS**
   - Application layer protocol
   - Stateless request-response model
   - Headers for metadata
   - Methods for different operations (eg. POST, GET)

5. **Rendering Engine**
   - Parses HTML/CSS
   - Paints pixels
   - Handles JavaScript execution

6. **Cache**
   - Temporary storage
   - Reduces network requests & Improves performance
   - Multiple levels (browser, OS, DNS)

7. **CDN (Content Delivery Network)**
   - Distributed server network
   - Caches content closer to users
   - Reduces latency & Improves availability 

## Advanced Networking Concepts

### Network Security

**Firewalls: Your Network's Security Guard**
   
   A firewall is a security system that monitors and controls network traffic based on predetermined security rules.
   
   ```
   Internet                   Firewall                 Internal Network
   ┌─────────┐              ┌─────────┐                ┌─────────┐
   │ External │ → Malicious │ Inspect │                │Protected│
   │ Traffic  │ → Traffic   │  and    │ → Legitimate → │   LAN   │
   │         │ →           │ Filter  │ → Traffic      │         │
   └─────────┘              └─────────┘                └─────────┘
   ```

   **How Firewalls Make Decisions:**
   - Source/destination IP addresses (Who's sending/receiving?)
   - Port numbers (Which service/application?)
   - Packet type/protocol (How is data being sent?)
   - Application data (What's in the message?)
   
   **Simple Example Rule:**
   ```
   ALLOW TCP traffic FROM any address TO 192.168.1.10 ON PORT 443 (HTTPS)
   DENY all other traffic TO 192.168.1.10
   ```

