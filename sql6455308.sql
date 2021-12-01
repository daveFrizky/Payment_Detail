-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql6.freesqldatabase.com
-- Generation Time: Dec 01, 2021 at 08:55 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql6455308`
--

-- --------------------------------------------------------

--
-- Table structure for table `AspNetRoleClaims`
--

CREATE TABLE `AspNetRoleClaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(100) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetRoles`
--

CREATE TABLE `AspNetRoles` (
  `Id` varchar(100) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `NormalizedName` varchar(100) DEFAULT NULL,
  `ConcurrencyStamp` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserClaims`
--

CREATE TABLE `AspNetUserClaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(100) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserLogins`
--

CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserRoles`
--

CREATE TABLE `AspNetUserRoles` (
  `UserId` varchar(100) NOT NULL,
  `RoleId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUsers`
--

CREATE TABLE `AspNetUsers` (
  `Id` varchar(100) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `NormalizedUserName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `NormalizedEmail` varchar(100) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext,
  `SecurityStamp` longtext,
  `ConcurrencyStamp` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AspNetUsers`
--

INSERT INTO `AspNetUsers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('010de78f-7495-4e9a-8bed-18b7adc84ffb', 'asd', 'ASD', 'asd@example.com', 'ASD@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAEM5Ai4Hb3pYh/1/d8Y72uhzeOCpopqbwzvQkv4+mPz5dn2TZ2j+ca1AvpxcDmm1njA==', 'TSNA3MH7MN2UHNGXUKUZXLM2FAHG7EMT', '5b2a05b3-d2d9-4e33-8ebb-0082f7809248', NULL, 0, 0, NULL, 1, 0),
('2aad9123-50ed-4be5-863b-1cab0b92557e', 'string', 'STRING', 'user@example.com', 'USER@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAECZ/jQN4GPkgV8IwcmzDueHRvCsjq4HM0XfZWek+DuIo1cKbz8diG5v+nyln8M9Zvg==', 'YBGTX2GSCG5M53FHQ6IUUBHEN4ZTNQMK', '093778a3-d86b-46c6-9eeb-ea5fe7dcc8e5', NULL, 0, 0, NULL, 1, 0),
('6f4b732b-415c-461e-9d3b-735d491f8ff5', 'dav', 'DAV', 'dav@example.com', 'DAV@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAEIIQGr4dljFw1FOBfXMdgPfhJ2p4Sb+jYoty1Ik8laXN8VwbO0GhqomnVnxCRo7i9w==', 'D2ANSK2IJQDMZOTFHINJYW7LXB5TYWLG', '2663712b-7134-448c-bf54-5060c799d899', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserTokens`
--

CREATE TABLE `AspNetUserTokens` (
  `UserId` varchar(100) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Payment_Details`
--

CREATE TABLE `Payment_Details` (
  `PaymentDetailId` int(11) NOT NULL,
  `cardOwnerName` longtext,
  `cardNumber` longtext,
  `expirationDate` longtext,
  `securityCode` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Payment_Details`
--

INSERT INTO `Payment_Details` (`PaymentDetailId`, `cardOwnerName`, `cardNumber`, `expirationDate`, `securityCode`) VALUES
(1, 'John Cena', '14045', '01/22', '141414'),
(2, 'Jackson', '123456', '11/23', '112233'),
(4, 'Alfred', '711231234', '11/23', '112223');

-- --------------------------------------------------------

--
-- Table structure for table `RefreshToken`
--

CREATE TABLE `RefreshToken` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(100) DEFAULT NULL,
  `Token` longtext,
  `JwtId` longtext,
  `IsUsed` tinyint(1) NOT NULL,
  `IsRevoked` tinyint(1) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `ExpiryDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RefreshToken`
--

INSERT INTO `RefreshToken` (`Id`, `UserId`, `Token`, `JwtId`, `IsUsed`, `IsRevoked`, `AddedDate`, `ExpiryDate`) VALUES
(1, '2aad9123-50ed-4be5-863b-1cab0b92557e', '6E78WUW48GVO7XWRX2MV2XIR94D8EFESA1Feb5c13a2-27a3-4eea-93fb-97000814f656', '0e774e48-0063-4d17-9cfb-c8c4416cafb2', 0, 0, '2021-12-01 06:26:24', '2022-06-01 06:26:24'),
(2, '2aad9123-50ed-4be5-863b-1cab0b92557e', 'A34B6N6I4R63R50C0PYBP7RVC9O36CISOTT55bf8fed-d62e-4988-945e-dcf7f5f1777c', '11f304cf-20a0-4685-9a17-ce981c65a071', 0, 0, '2021-12-01 06:29:23', '2022-06-01 06:29:23'),
(3, '2aad9123-50ed-4be5-863b-1cab0b92557e', '9GT2HM4OICCKQ8DZB51TF5TOMMEFA1VJ531b013bc03-2a92-4b6f-b7e1-95dea83aefcd', 'c8c6e458-77b7-4081-a4c8-6afc2598af66', 0, 0, '2021-12-01 06:31:16', '2022-06-01 06:31:16'),
(4, '2aad9123-50ed-4be5-863b-1cab0b92557e', 'MP968H10P3QI285YTXSM8VLGTM50DAAD19N10f53590-eff5-4a7b-a13e-eae044495ec1', '32700507-e4bf-4182-a110-ceb19ecf1302', 0, 0, '2021-12-01 07:12:29', '2022-06-01 07:12:29'),
(5, '2aad9123-50ed-4be5-863b-1cab0b92557e', '80VEG4MBHBCBD06VZR9ZRBAWF8LM4Y9143Lf2fbd801-3bd8-4e5f-a31d-6e297ccc9d22', '827b0152-1a42-4598-a0ce-13d1b362ab8a', 0, 0, '2021-12-01 07:16:06', '2022-06-01 07:16:06'),
(6, '2aad9123-50ed-4be5-863b-1cab0b92557e', '3NPCIL8U30R2IFNQ8SBUEZS1DZA54YVVELHc1703f5d-d603-438d-b738-02e271bd4d44', '2284ce2b-e28a-4479-93c3-467beb857b69', 0, 0, '2021-12-01 07:16:44', '2022-06-01 07:16:44'),
(7, '2aad9123-50ed-4be5-863b-1cab0b92557e', 'QPIFMN5LR4P2UODPB15KP3PT093FZC1MJ6F8443f041-1d6b-4999-aee3-8e655b942d61', '4b63f060-0a54-40ca-a573-a14ab0a9972d', 0, 0, '2021-12-01 07:18:05', '2022-06-01 07:18:05'),
(8, '6f4b732b-415c-461e-9d3b-735d491f8ff5', 'KHGT9RNYG361XMUBGR7QB4ZY70L61DUVDTAca768e4c-c730-4fb5-a5a7-09cdcb0ef68b', 'f208f347-34c3-4e70-a5e4-abdc75570fd1', 0, 0, '2021-12-01 07:19:31', '2022-06-01 07:19:31'),
(9, '2aad9123-50ed-4be5-863b-1cab0b92557e', 'VQYMQD71LIVVAFZGMUCYQLSHMNLLVGBJY9W421565ed-10d1-4361-aa22-5c1bf059821d', '0bd5f104-ecad-42b2-a7e6-c9ca0b139d70', 0, 0, '2021-12-01 07:22:09', '2022-06-01 07:22:09'),
(10, '2aad9123-50ed-4be5-863b-1cab0b92557e', '5I682OPVAOGTVKAFJWGJJLPQFY5XGBO0EH691f5eb8a-0022-4cb1-b4b1-eddc8b721ccf', '1dbfdc97-bbf4-4010-bf9c-10e9c9f732fe', 0, 0, '2021-12-01 07:26:19', '2022-06-01 07:26:19'),
(11, '2aad9123-50ed-4be5-863b-1cab0b92557e', 'KKOB1N1B9G6JDHWNT6JZHD9YE0UIJOZ69NR5f25c21a-3749-4931-9539-64870126aab1', 'f17c7ebd-5204-4bc4-beef-2c1ada178f34', 0, 0, '2021-12-01 07:31:48', '2022-06-01 07:31:48'),
(12, '2aad9123-50ed-4be5-863b-1cab0b92557e', '9O2F6JKXE08OYBS5SP7DN7L6TC5UGLVDJYY80130964-5ba3-47e9-9cfc-f21fb876689f', 'bfb82dfe-eb2c-4d86-ab8e-f199ff839c90', 0, 0, '2021-12-01 07:49:18', '2022-06-01 07:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `__EFMigrationsHistory`
--

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
('20211201042756_Init', '5.0.12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetRoles`
--
ALTER TABLE `AspNetRoles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetUsers`
--
ALTER TABLE `AspNetUsers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `Payment_Details`
--
ALTER TABLE `Payment_Details`
  ADD PRIMARY KEY (`PaymentDetailId`);

--
-- Indexes for table `RefreshToken`
--
ALTER TABLE `RefreshToken`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_RefreshToken_UserId` (`UserId`);

--
-- Indexes for table `__EFMigrationsHistory`
--
ALTER TABLE `__EFMigrationsHistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Payment_Details`
--
ALTER TABLE `Payment_Details`
  MODIFY `PaymentDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `RefreshToken`
--
ALTER TABLE `RefreshToken`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `RefreshToken`
--
ALTER TABLE `RefreshToken`
  ADD CONSTRAINT `FK_RefreshToken_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
