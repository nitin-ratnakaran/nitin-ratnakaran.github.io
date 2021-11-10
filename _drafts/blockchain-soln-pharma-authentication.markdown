---
title:  "Pharma authentication using Blockchain"
date:   2021-09-28 00:00:00 +0530
categories: 
  - blockchain 
tags: 
  - hyperledger-fabric
  - java
excerpt: "Can blockchain help to counter fake medicines and vaccines from entering the market?"
header:
  overlay_image: /assets/images/vaccine-schluditsch-unsplash.jpg
  overlay_filter: 0.7
  caption: "Photo by [Daniel Schludi](https://unsplash.com/@schluditsch?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/vaccine?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)"
---

**News Headline:** Over 2,000 in Mumbai duped in fake vaccine drives, says Govt [<i class="fas fa-xs fa-link" aria-hidden="true"></i>][1]{:target="_blank"}
{: .notice--warning}

**News Headline:** WHO issues medical alert on fake Covishield vaccines [<i class="fas fa-sm fa-link" aria-hidden="true"></i>][2]{:target="_blank"}
{: .notice--warning}

**News Headline:** 2,73,000 doses of fake Remdesivir injections seized in Gujarat [<i class="fas fa-sm fa-link" aria-hidden="true"></i>][3]{:target="_blank"}
{: .notice--warning}


Covid-19 has been bad enough for all of us, but these kind of incidents reveal just how much worse things can get when you throw in human greed. It is said that we should never let a crisis go waste. These peddlers of fake vaccines and medicines seem to have taken this saying to heart and also profited handsomely. 

Recently at work, we had a hackathon to ideate and build solutions around the theme of Covid. A bunch of us decided to tackle the above problem and develop a solution to verify the authenticity of the medicines and vaccines we consume. After some brainstorming, we decided to explore blockchain as a tool for building this solution. As none of us were familiar with blockchain, we spent some time familiarizing ourselves with the various blockchain platforms available and coming up with a very basic design. The below post gives an introduction to blockchain as we understood and the very simple app that we created. 

{% include toc %}


## What is Blockchain?
Blockchain, in very simple terms, is a technology that allows us to record information in a way that makes it practically impossible to modify or tamper with. The [Wikipedia article][4]{:target="_blank"} is a good place to start if you are new to Blockchain.

## Permissionless and Permissioned Blockchains
While searching for a simple open-sourced blockchain platform, that we could use for our mini-project, we encountered two types of blockchain platforms. **Permissionless** and **Permissioned**. A brief comparison is given below. For a more detailed comparison, check [here][5]{:target="_blank"}.

| Permissionless | Permissioned |
|----------------|--------------|
| Participants are anonymous. Anyone can join and conduct transactions on the blockchain network. | All participants are known and verified before they are allowed to join the network and perform transactions.  
| Transactions are public, ie known to all participants in the network. | Transactions are private and only known to select participants.
| Since anyone can submit transactions, a *proof of work* has to be performed, before the transaction is verified and added to the chain. | Transactions are digitally signed by certificates and once the signature is verified by all participants, the transaction is added to chain. No proof of work required.



This is a nother para

---
[1]: https://timesofindia.indiatimes.com/india/over-2000-in-mumbai-duped-in-fake-vaccine-drives-says-govt/articleshow/83827768.cms
[2]: https://www.livemint.com/science/health/who-issues-medical-alert-on-fake-covishield-vaccines-11629224524851.html
[3]: https://economictimes.indiatimes.com/news/india/273000-doses-of-fake-remdesivir-injections-seized-in-gujarat/videoshow/82369088.cms?from=mdr
[4]: https://en.wikipedia.org/wiki/Blockchain
[5]: https://searchcio.techtarget.com/tip/Permissioned-vs-permissionless-blockchains-Key-differences