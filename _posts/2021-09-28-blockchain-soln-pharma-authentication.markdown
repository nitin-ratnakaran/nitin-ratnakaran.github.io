---
title:  "Pharma verification using Blockchain"
date:   2021-09-28 00:00:00 +0530
categories: 
  - blockchain 
tags: 
  - hyperledger-fabric
  - java
  - blockchain
  - tutorial
  - project
excerpt: "Can blockchain help to counter fake medicines and vaccines from entering the market?"
header:
  overlay_image: /assets/images/vaccine-schluditsch-unsplash.jpg
  overlay_filter: 0.7
  caption: "Photo by [Daniel Schludi](https://unsplash.com/@schluditsch?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/vaccine?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)"
toc: true
toc_sticky: true
---

**News Headline:** Over 2,000 in Mumbai duped in fake vaccine drives, says Govt [<i class="fas fa-xs fa-link" aria-hidden="true"></i>][1]{:target="_blank"}
{: .notice--warning}

**News Headline:** WHO issues medical alert on fake Covishield vaccines [<i class="fas fa-sm fa-link" aria-hidden="true"></i>][2]{:target="_blank"}
{: .notice--warning}

**News Headline:** 2,73,000 doses of fake Remdesivir injections seized in Gujarat [<i class="fas fa-sm fa-link" aria-hidden="true"></i>][3]{:target="_blank"}
{: .notice--warning}


Covid-19 has been bad enough for all of us, but these kind of incidents reveal just how much worse things can get when you throw in human greed. It is said that we should never let a crisis go waste. These peddlers of fake vaccines and medicines seem to have taken this saying to heart and tried to make quick bucks. 

Recently at work, we had a hackathon to ideate and build solutions around the theme of Covid. A bunch of us decided to tackle the above problem and develop a prrof-of-concept solution to verify the authenticity of the medicines and vaccines we consume. After some brainstorming, we decided to explore blockchain as a tool for building this solution. As none of us were familiar with blockchain, this was also a great opportunity to familiarize ourselves with the various blockchain platforms available. The below post gives an introduction to blockchain as we understood and the very simple app that we created. 


## What is Blockchain?
Blockchain, in very simple terms, is a technology that allows us to record information in a way that makes it practically impossible to modify or tamper with. This [Wikipedia article][4]{:target="_blank"} is a good place to start if you are new to Blockchain.

## Permissionless and Permissioned Blockchains
While searching for a simple open-sourced blockchain platform that we could use for our mini-project, we encountered two types of blockchain platforms. **Permissionless** and **Permissioned**. A brief comparison is given below. For a more detailed comparison, check [here][5]{:target="_blank"}.

| Permissionless | Permissioned |
|----------------|--------------|
| Participants are anonymous. Anyone can join and conduct transactions on the blockchain network. | All participants are known and verified before they are allowed to join the network and perform transactions.  
| Transactions are public, ie known to all participants in the network. | Transactions are private and only known to select participants.
| Since anyone can submit transactions, a *proof of work* has to be performed, before the transaction is verified and added to the chain. | Transactions are digitally signed by certificates and once the signature is verified by all participants, the transaction is added to chain. No proof of work required.



## Principal actors
- **Manufacturer** of the vaccine or medicine (asset)
- **Traders**, both wholesale and retail, who form the supply chain between the manufacturer and the end consumer. 
- A **Regulator** who administers the entire system
- The end **consumer** who would like to verify the authenticity 



## Use Cases
- Manufacturers would like to have all the assets manufactured by them to be recorded on the blockchain so that they can assure their end customers that they are buying a genuine product. Only a certified manufacturer would have permission to add assets on to the blockchain 
- Certified traders would be the only ones to participate in transfer of asset from one owner to another. 
- Spurious traders or black marketeers would not have access to the system and would not be able to add fake products on to the blockchain.
- End customer would be able to query the asset id on a website controlled by regulators. Only genuine products would be available on the website that is internally backed by the blockchain.

{% include figure image_path="/assets/images/asset-tracking-usecase-fig01.svg" alt="" caption="Use Case Diagram" %}

## Architecture

The overall architecture of the system would look something like this
{% include figure image_path="/assets/images/App-Design-blockchain-architecture.png" alt="" caption="Architecture diagram" %}

{% include figure image_path="/assets/images/App-Design-state-diagram.png" alt="" caption="State diagram" %}


## Key Components
- **Blockchain network**: The actors like manufacturer, traders, client applications connect to each other on the blockchain network. The network consists of distributed nodes that can be hosted by any of the parties involved in the network. Follow this link for more details about [blockchain networks][6].

For our POC we just used the [default test network][8] provided by hyperledger fabric and got it running on our local machine. For a [production grade network setup][9], you would have to design the configuration of your network, set up clusters, peers and nodes and CAs (certificate authorites) that can be used to validate and sign transactions. 

- **Smart Contracts**: These contracts capture the logic of business transactions between actors as executable code. The contracts are executed on the blockchain network and can create, update or read entries made into the blockchain. In our case, we are going to capture the functions of creating an asset and transfer of asset as smart contracts. You can read more about there [here][7]

- **Client application**: These contain client code to invoke smart contracts. These can be in the form of mobile, web or backend applications. 

{% include figure image_path="https://hyperledger-fabric.readthedocs.io/en/release-2.2/_images/AppConceptsOverview.png" alt="" caption="Sourced from https://hyperledger-fabric.readthedocs.io/en/release-2.2/_images/AppConceptsOverview.png" %}


## Code Samples
You can refer the complete code here. This is a very basic application that can create some assets on a hyperledger using simple smart contracts. 


[Github Repo <i class="fas fa-xs fa-link" aria-hidden="true"></i>](https://github.com/nitin-ratnakaran/hyperledger-covid-poc-2021){:target="_blank"} 

### Writing a simple Smart Contract to create and manage an asset on the blockchain
**Defining a class that represents the Smart Contract**
```java
@Contract(name = "MyAssetContract",
        info = @Info(title = "MyAsset contract",
                description = "My Smart Contract",
                version = "0.0.1",
                license =
                @License(name = "Apache-2.0",
                        url = ""),
                contact = @Contact(email = "contact.us@example.com",
                        name = "blockchain",
                        url = "http://example.com")))
@Default
public class MyAssetContract implements ContractInterface {
  ...
}
```

**Adding some basic CRUD operations for assets in blockchain through the smart contract**
```java
    @Transaction()
    public boolean myAssetExists(Context ctx, String myAssetId) {
        byte[] buffer = ctx.getStub().getState(myAssetId);
        return (buffer != null && buffer.length > 0);
    }

    @Transaction()
    public void createMyAsset(Context ctx, String myAssetId, String manufacturer, String manufactureDateTime, String expiryDate, String status, String owner) {
        boolean exists = myAssetExists(ctx, myAssetId);
        if (exists) {
            throw new RuntimeException("The asset " + myAssetId + " already exists");
        }

        MyAsset myAsset = MyAsset.builder()
                .id(myAssetId)
                .manufacturer(manufacturer)
                .manufactureDateTime(manufactureDateTime)
                .expiryDate(expiryDate)
                .status(status)
                .owner(owner)
                .build();

        ctx.getStub().putState(myAssetId, myAsset.toJSONString().getBytes(UTF_8));
    }

    @Transaction()
    public MyAsset readMyAsset(Context ctx, String myAssetId) {
        boolean exists = myAssetExists(ctx, myAssetId);
        if (!exists) {
            throw new RuntimeException("The asset " + myAssetId + " does not exist");
        }

        MyAsset newAsset = MyAsset.fromJSONString(new String(ctx.getStub().getState(myAssetId), UTF_8));
        return newAsset;
    }
```

Finally, get history of the asset to show all the transactions it has gone through. 
```java
    @Transaction()
    public String readMyAssetHistory(Context ctx, String myAssetId) {
        ChaincodeStub stub = ctx.getStub();
        String assetJSON = stub.getStringState(myAssetId);

        if (assetJSON == null || assetJSON.isEmpty()) {
            String errorMessage = String.format("Asset %s does not exist", myAssetId);
            System.out.println(errorMessage);
            throw new ChaincodeException(errorMessage, AssetTransferErrors.ASSET_NOT_FOUND.toString());
        }

        QueryResultsIterator<KeyModification> historyForKey = stub.getHistoryForKey(myAssetId);

        StringBuilder history = new StringBuilder();
        history.append("{\"currentState\": ").append(assetJSON).append(",\"history\": [");

        history.append(StreamSupport.stream(historyForKey.spliterator(), false)
                .map(a -> String.format("{\"txId\": \"%s\", \"state\": %s, \"timestamp\": \"%s\"}",
                        a.getTxId(), a.getStringValue(), a.getTimestamp().toString()))
                .collect(Collectors.joining(","))
        );
        history.append("]}");

        return history.toString();
    }
```

### A client app that can execute the smart contracts written above

Sample code to call the `createMyAsset` smart contract. (Showing only the relevant lines of code)
```java
import org.hyperledger.fabric.gateway.Contract;
import org.hyperledger.fabric.gateway.ContractException;

public class AssetFabricRepository {

    private Contract contract;

    public void createAsset(Asset asset) {
        try {
            byte[] result = getContract().createTransaction("createMyAsset")
                    .submit(asset.getId(), asset.getManufacturer()
                            , asset.getManufactureDateTime(), asset.getExpiryDate(),
                            asset.getStatus(), asset.getOwner());
            log.info("Created transaction : {}", result);
        } catch (ContractException | InterruptedException | TimeoutException e) {
            log.error("Exception while submitting transaction", e);
        }
    }

    private Contract getContract() {
        if (contract != null) return contract;

        contract = GatewayConfig.get()
                .getNetwork("mychannel")
                .getContract("smart-contract");
        return contract;
    }
}

```

The `GatewayConfig` class mentioned above, is a class that handles the connections to the blockchain network. See the github repo for more details on this class. 


# Conclusion
Hope this basic introduction to blockchains and hyperledger will encourage you to get your feet wet into the world of blockchain. This technology is getting more mainstream and more use cases for it are being discovered. The day is not far when blockchains could become as ubiquitous as the relational database.


---
[1]: https://timesofindia.indiatimes.com/india/over-2000-in-mumbai-duped-in-fake-vaccine-drives-says-govt/articleshow/83827768.cms
[2]: https://www.livemint.com/science/health/who-issues-medical-alert-on-fake-covishield-vaccines-11629224524851.html
[3]: https://economictimes.indiatimes.com/news/india/273000-doses-of-fake-remdesivir-injections-seized-in-gujarat/videoshow/82369088.cms?from=mdr
[4]: https://en.wikipedia.org/wiki/Blockchain
[5]: https://searchcio.techtarget.com/tip/Permissioned-vs-permissionless-blockchains-Key-differences
[6]: https://hyperledger-fabric.readthedocs.io/en/release-2.2/network/network.html
[7]: https://hyperledger-fabric.readthedocs.io/en/release-2.2/smartcontract/smartcontract.html
[8]: https://hyperledger-fabric.readthedocs.io/en/release-2.2/test_network.html
[9]: https://hyperledger-fabric.readthedocs.io/en/release-2.2/deployment_guide_overview.html