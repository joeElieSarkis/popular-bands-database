# Popular Bands Database

This repository contains a simple beginner SQL database project that manages information about popular bands, their members, albums, songs, playlists, and users. It was designed as a way to explore basic database design and implementation using strong entity sets and various relationships. The database is structured around bands, members, albums, songs, and playlists, with users interacting with playlists through a many-to-many relationship.

## Database Overview

The **Popular Bands Database** consists of several entities and relationships that model the following:

- **Bands**: Each band has multiple members and has released one or more albums.
- **Members**: A member belongs to only one band, plays an instrument, and has a specific role within the band.
- **Albums**: Each album contains many songs and is linked to a specific band.
- **Songs**: Songs are part of an album, and each song can be featured in one playlist.
- **Playlists**: A playlist features multiple songs, has tags, and is played by users.
- **Users**: Users can play multiple playlists, and each playlist can be played by many users.

## Schema Design

The schema is composed of the following tables:

### 1. **Member**
This table stores information about band members.

| Column   | Data Type | Description            |
|----------|------------|------------------------|
| `MName`  | VARCHAR    | Name of the member     |
| `MBId`   | INT        | Unique ID of the band the member belongs to (foreign key to `Band`) |
| `MRole`  | VARCHAR    | The role of the member in the band (e.g., Lead Singer, Drummer) |
| `PNumber`| VARCHAR    | Phone number of the member |
| `Instrument` | VARCHAR | The instrument played by the member |

### 2. **Band**
This table stores information about bands.

| Column   | Data Type | Description            |
|----------|------------|------------------------|
| `BId`    | INT        | Unique ID of the band  |
| `BName`  | VARCHAR    | Name of the band       |

### 3. **Album**
This table stores information about albums.

| Column   | Data Type | Description            |
|----------|------------|------------------------|
| `AId`    | INT        | Unique ID of the album |
| `ABId`   | INT        | Band ID (foreign key to `Band`) |
| `Genre`  | VARCHAR    | Genre of the album     |
| `ATitle` | VARCHAR    | Title of the album     |

### 4. **Song**
This table stores information about songs.

| Column   | Data Type | Description            |
|----------|------------|------------------------|
| `SId`    | INT        | Unique ID of the song  |
| `SAId`   | INT        | Album ID (foreign key to `Album`) |
| `SPId`   | INT        | Playlist ID (foreign key to `Playlist`) |
| `STitle` | VARCHAR    | Title of the song      |
| `Duration` | TIME     | Duration of the song   |

### 5. **Playlist**
This table stores information about playlists.

| Column   | Data Type | Description            |
|----------|------------|------------------------|
| `PId`    | INT        | Unique ID of the playlist |
| `PName`  | VARCHAR    | Name of the playlist   |
| `Tags`   | VARCHAR    | Tags for the playlist  |

### 6. **Play**
This table manages the many-to-many relationship between users and playlists.

| Column   | Data Type | Description            |
|----------|------------|------------------------|
| `PEmail` | VARCHAR    | Email of the user (foreign key to `UserInf`) |
| `PPId`   | INT        | Playlist ID (foreign key to `Playlist`) |

### 7. **UserInf**
This table stores user information.

| Column   | Data Type | Description            |
|----------|------------|------------------------|
| `Email`  | VARCHAR    | Unique email of the user |
| `Username` | VARCHAR  | Username of the user   |
| `Country` | VARCHAR   | Country of the user    |
| `Age`    | INT        | Age of the user        |

## Database Relationships

- **1-to-Many** Relationships:
  - A **band** has many **members** (`Band.BId` → `Member.MBId`).
  - A **band** has released many **albums** (`Band.BId` → `Album.ABId`).
  - An **album** has many **songs** (`Album.AId` → `Song.SAId`).
  - A **playlist** features many **songs** (`Playlist.PId` → `Song.SPId`).

- **Many-to-Many** Relationship:
  - **Users** play many **playlists**, and **playlists** are played by many **users** (`UserInf.Email` → `Play.PEmail`, `Playlist.PId` → `Play.PPId`).

## How to Use This Database

1. **Set up MySQL or MariaDB**:
   - Install **XAMPP** or any MySQL server.
   - Open **phpMyAdmin** or your preferred MySQL client.

2. **Import the Database**:
   - Download the `database.sql` file from this repository.
   - Create a new database (e.g., `popular_bands_db`).
   - Go to the **Import** tab in phpMyAdmin or your SQL client, and import the `database.sql` file.

3. **Explore the Data**:
   - You can use basic SQL queries to explore the data:
     - List all bands:  
       ```sql
       SELECT * FROM Band;
       ```
     - List all members of a band:  
       ```sql
       SELECT MName, MRole, Instrument FROM Member WHERE MBId = [Band_ID];
       ```

4. **Extend the Project**:
   - Feel free to add more data, modify relationships, or extend the functionality of the database!

## Conclusion

This was a simple beginner project focused on creating and managing a database with bands, albums, songs, playlists, and users. It uses basic relational concepts such as one-to-many and many-to-many relationships. The project can be extended to include more complex queries, data, and functionalities.

---

If you have any suggestions or find issues, feel free to submit a pull request or raise an issue in the repository.
