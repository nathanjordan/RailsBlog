CREATE TABLE messages
(
  "messageID" serial NOT NULL,
  "fromUser" integer,
  "toUser" integer,
  subject character(50),
  content text,
  CONSTRAINT "PK_Messages" PRIMARY KEY ("messageID" )
);

CREATE TABLE posts
(
  "postID" serial NOT NULL,
  "userID" integer,
  "time" timestamp without time zone,
  title character(50),
  content text,
  CONSTRAINT "PK_Posts" PRIMARY KEY ("postID" )
);

CREATE TABLE posttags
(
  "postID" integer NOT NULL,
  "tagID" integer NOT NULL,
  CONSTRAINT "PK_posttags" PRIMARY KEY ("postID" , "tagID" )
);

CREATE TABLE tags
(
  "tagID" serial NOT NULL,
  tag character(30),
  CONSTRAINT "PK_Tags" PRIMARY KEY ("tagID" )
);

CREATE TABLE users
(
  "userID" serial NOT NULL,
  username character(30),
  full_name character(40),
  password character(50),
  CONSTRAINT "PK_Users" PRIMARY KEY ("userID" )
)

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

-- User Actions --

INSERT INTO users(username,full_name,password)
VALUES( 'njordan' , 'Nathan Jordan', 'trivial' );

DELETE FROM users WHERE userID = 1;

UPDATE users SET password = 'slightly-less-trivial' WHERE userID = 1;


-- Tag Actions --

INSERT INTO tags(tag)
VALUES('tag');

DELETE FROM tags WHERE tag = 'tag';

--Post Actions--

INSERT INTO posts(userID,title,content)
VALUES(1,'A Post','Relevant monologue');

UPDATE posts SET title = 'updated title', content = 'updated content'
WHERE postID = 1;

DELETE FROM posts WHERE postID = 1;

-- Message actions

INSERT INTO messages(fromUser,toUser,subject,content)
VALUES(1,2,'Question','How do these messages work?');

DELETE FROM messages WHERE messageID = 1;

-- PostTag Actions --

INSERT INTO posttags(postID,tagID)
VALUES(1,1);

DELETE FROM posttags WHERE postID = 1 AND tagID = 1;




