# 🎫 TicketChain - Système de billetterie décentralisé sur la Blockchain

## 📌 Contexte

Le secteur de la billetterie (concerts, événements sportifs, conférences…) est confronté à des problèmes majeurs :

- Falsification ou duplication de billets
- Revente abusive ou illégale (scalping)
- Manque de transparence
- Frais élevés dus aux intermédiaires
- Absence de contrôle sur les reventes

Grâce à la blockchain, nous pouvons construire un **système sécurisé, transparent et décentralisé** pour gérer les tickets.

---

## 🎯 Objectifs du projet

TicketChain est un smart contract Ethereum qui permet :

- La **création d'événements** par des organisateurs
- La **création et mise en vente de billets** par tout utilisateur
- La **sélection d'une place spécifique** lors de l'achat
- La **gestion automatique des billets et des transactions**
- La **validation d’un ticket** à l'entrée de l'événement
- Une interface compatible avec **Metamask** pour les utilisateurs

---

## ✅ Pourquoi utiliser la blockchain ?

| Problème | Solution blockchain |
|---------|---------------------|
| Falsification de tickets | Chaque ticket est unique, stocké sur la blockchain |
| Revente illégale | Le contrat contrôle et enregistre chaque transfert |
| Manque de traçabilité | Historique des ventes transparent et public |
| Frais d'intermédiaires | Transactions directes entre vendeur et acheteur |
| Attribution de places | Réservation immuable liée au ticket |

---

## 🪑 Réservation de places spécifiques

Chaque billet est **lié à une place numérotée** (ex: Rangée A, Siège 3). Lors de l'achat :

- L'acheteur peut **choisir une place disponible**
- Le système vérifie que la place n’est pas déjà réservée
- Une fois achetée, la place devient **indisponible**

Cela imite parfaitement un système réel de billetterie avec plan de salle.

---

## 🔧 Fonctionnalités principales

- ✅ Création d’événements avec plan de places
- ✅ Création et mise en vente de billets
- ✅ Réservation de sièges uniques
- ✅ Achat via Metamask (ETH ou testnet)
- ✅ Revente entre utilisateurs
- ✅ Validation du ticket à l’entrée
- ✅ Historique transparent des transactions

---

## 🛠️ Stack technique

- **Solidity** : Smart contract
- **Ganache** : Test local
- **Remix IDE** : Déploiement rapide
- **Metamask** : Wallet utilisateur

---

## 💡 Exemple d'utilisation

> 🎤 L'organisateur crée un concert avec 100 places (10 rangées x 10 sièges)  
> 👤 Alice crée 3 tickets pour l'événement (A1, A2, A3) et les met en vente  
> 🧑 Bob ouvre l’interface, voit les places disponibles, choisit A2, paie avec Metamask  
> 🔁 Il transfère ensuite son billet à Charlie  
> ✅ Charlie se présente à l’entrée, et son ticket est validé grâce au smart contract

---

## 🧠 Cas d’usage possibles

- Concerts, festivals, conférences
- Billets de cinéma ou théâtre
- Événements privés ou exclusifs
- Systèmes d’invitation basés sur NFT

---

## 🔐 Sécurité & Transparence

- Toutes les actions sont stockées sur la blockchain
- Les places sont réservées de manière immuable
- Aucune fraude ou duplication possible
- Paiement direct sans intermédiaire

---

## 📦 Fonctionnalités futures

- 🎨 Interface graphique avec plan interactif des places
- 🧾 Génération de QR Code liés à chaque billet
- 🎫 Intégration IPFS pour attacher des fichiers au billet (ex: image, vidéo)
- 🛂 Vérification de l’identité des participants (KYC)
- 📈 Statistiques de vente pour les organisateurs

---

## 📚 Projet académique

> Ce projet a été réalisé dans le cadre d’un module universitaire sur la **blockchain et les smart contracts**, pour démontrer l'utilité d’Ethereum dans les systèmes réels.

---

## 📬 Contact

Pour toute question ou contribution, merci de me contacter sur GitHub ou LinkedIn.

---

