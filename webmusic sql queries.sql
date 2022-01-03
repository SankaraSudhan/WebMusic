
Create table user_info (first_Name VARCHAR2(50) NOT NULL, 
                        last_Name VARCHAR2(50) NOT NULL,
                        email_Id VARCHAR2(50) NOT NULL UNIQUE, 
                        user_Name VARCHAR2(50) PRIMARY KEY NOT NULL,
                        password VARCHAR2(20)NOT NULL, 
                        role VARCHAR2(15) NOT NULL,
                        mobile_Number NUMBER(12) NOT NULL, 
                        user_Wallet int NULL,
                        playlist_Id NUMBER(10) NULL); --remove
      
CREATE TABLE library (song_Id int PRIMARY KEY NOT NULL,
                      song_Title VARCHAR2(50)NOT NULL,
                      user_Name VARCHAR2(50)NOT NULL,
                      artists VARCHAR2(50)NOT NULL,
                      album VARCHAR2(100)NOT NULL,
                      genre VARCHAR2(50)NOT NULL,
                      language VARCHAR2(7)NOT NULL,
                      release_Date DATE NOT NULL,
                      FOREIGN KEY (user_Name) REFERENCES user_info (user_Name));
                      
--alter table playlist modify playlist_Id NUMBER(10) no;

    CREATE TABLE playlist (song_Id int NOT NULL, 
                       playlist_Id NUMBER(10) GENERATED AS IDENTITY start with 1 primary key,
                       playlist_Title VARCHAR2(50)NOT NULL, 
                       email_id VARCHAR2(50) not null,
                       FOREIGN KEY (song_Id) REFERENCES library (song_Id));

--desc playlist;
alter table library drop column user_name;



CREATE TABLE user_playlist (user_id,
                            user_email VARCHAR2(50)NOT NULL,
                            playlist_Id NUMBER(10)NOT NULL,
                            role VARCHAR2(15)NOT NULL,
                            FOREIGN KEY (playlist_Id) REFERENCES playlist (playlist_Id));

CREATE TABLE admin (user_Name VARCHAR2(50) NOT NULL,
                    password VARCHAR2(20) NOT NULL,
                    FOREIGN KEY (user_Name) REFERENCES user_info (user_Name)); 
                    
select * from user_info;
select * from library;
select * from playlist;
select * from user_playlist;
select * from admin;
desc user_info;


desc library;