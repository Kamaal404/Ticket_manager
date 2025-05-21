
# 🎫 TicketChain – Système de billetterie décentralisé sur la blockchain Ethereum

## 📌 Contexte  
Le secteur de la billetterie (concerts, événements sportifs, conférences, etc.) fait face à plusieurs problèmes récurrents :  

- Falsification ou duplication de billets  
- Revente illégale ou abusive (scalping)  
- Manque de transparence sur les transactions  
- Frais élevés dus aux intermédiaires  
- Absence de contrôle sur les reventes  

🎯 **TicketChain** propose une alternative décentralisée et sécurisée grâce à la blockchain Ethereum.

## 🎯 Objectifs du projet  

TicketChain est un **smart contract Ethereum** permettant :  

- La création d’événements par des organisateurs  
- La génération et mise en vente de billets par les utilisateurs  
- La réservation de places spécifiques à l’achat  
- La gestion automatisée des tickets et des paiements  
- La validation des billets à l’entrée d’un événement  
- Une interface simple et compatible avec **MetaMask**

## ✅ Pourquoi la blockchain ?

| Problème                  | Solution via Blockchain                             |
|--------------------------|------------------------------------------------------|
| Falsification de tickets | Chaque ticket est unique, immuable, et traçable     |
| Revente illégale         | Les transferts sont gérés et enregistrés on-chain   |
| Manque de traçabilité    | Historique transparent et public                    |
| Frais d’intermédiaires   | Transactions directes entre utilisateurs            |
| Attribution de places    | Réservation liée au ticket, sans risque de conflit  |

## 🪑 Réservation de sièges

Chaque billet correspond à une place numérotée (ex. : Rangée A, Siège 3).  
Lors de l’achat :  
- L’utilisateur choisit une place encore disponible  
- Le contrat vérifie sa disponibilité  
- Une fois achetée, la place devient indisponible  

Cela permet de reproduire fidèlement un système de billetterie classique avec plan de salle.

## 🔧 Fonctionnalités principales

- ✅ Création d’événements avec plans de places  
- ✅ Vente de billets avec places numérotées  
- ✅ Achat de tickets avec **MetaMask (ETH ou testnet)**  
- ✅ Revente entre utilisateurs  
- ✅ Validation des tickets à l’entrée via smart contract  
- ✅ Historique public des transactions  

## 🛠️ Stack technique

- **Solidity** – Développement du smart contract  
- **Ganache** – Environnement local de test  
- **Remix IDE** – Déploiement et tests rapides  
- **MetaMask** – Connexion des utilisateurs et paiements  

## 💡 Exemple d’utilisation

1. 🎤 Un organisateur crée un concert avec 100 places (10 rangées × 10 sièges)  
2. 👤 Alice crée et met en vente 3 billets (A1, A2, A3)  
3. 🧑 Bob achète le billet A2 via l’interface et paie en ETH avec MetaMask  
4. 🔁 Il transfère ensuite son billet à Charlie  
5. ✅ Charlie présente son ticket à l’entrée ; celui-ci est validé on-chain  

## 🧠 Cas d’usage

- Concerts, festivals, conférences  
- Billetterie de cinéma ou théâtre  
- Événements privés ou sur invitation  
- Systèmes NFT avec droits d’entrée  

## 🔐 Sécurité & Transparence

- Toutes les actions sont enregistrées sur la blockchain  
- Les places sont réservées de manière immuable  
- Zéro risque de fraude, duplication ou survente  
- Transactions peer-to-peer, sans tiers de confiance  

## 📦 Fonctionnalités futures

- 🎨 Interface graphique avec visualisation des sièges  
- 🧾 QR Code généré pour chaque billet  
- 🎫 Intégration IPFS (images, vidéos ou données liées au billet)  
- 🛂 Vérification d’identité (KYC) pour accès restreint  
- 📈 Statistiques de vente pour les organisateurs  

## 📚 Projet académique

Ce projet a été réalisé dans le cadre d’un module universitaire sur la **blockchain** et les **smart contracts**. Il illustre l’usage d’Ethereum pour résoudre des problématiques concrètes de la vie réelle.

## 📬 Contact

Pour toute question, retour ou contribution, n'hésitez pas à me contacter via [GitHub](#https://github.com/Kamaal404) ou [LinkedIn](#https://www.linkedin.com/in/kamal-saalaoui-69400b297/).
