package main

import (
	"database/sql"
	"fmt"
	"rpc/chat"

	_ "github.com/lib/pq"
)

type Message struct {
	Id       int32
	Sender   string
	Receiver string
	Message  string
	Time     string
}

var db *sql.DB

func init() {
	var err error
	db, err = sql.Open("postgres", "postgres://testuser:password@localhost/chat?sslmode=disable")
	checkError(err)
}

func find(user string) bool {
	row := db.QueryRow("SELECT * FROM users WHERE name = $1", user)
	var usr string
	err := row.Scan(&usr)
	if err == sql.ErrNoRows {
		return false
	}
	return true
}

func getUsers() []string {
	usrs := make([]string, 0)
	rows, err := db.Query("SELECT * FROM users;")
	defer rows.Close()
	if err != nil {
		fmt.Println(err)
	} else {
		for rows.Next() {
			var usr string
			err := rows.Scan(&usr)
			if err != nil {
				fmt.Println(err)
				break
			}
			usrs = append(usrs, usr)
		}
	}
	return usrs
}

func getMessages(user string) []*chat.Result {

	messages := make([]*chat.Result, 0)
	rows, err := db.Query("SELECT * FROM messages WHERE Sender = $1 OR Receiver = $1", user)
	defer rows.Close()
	if err != nil {
		fmt.Println(err)
	} else {
		for rows.Next() {
			msg := Message{}
			res := chat.Result{}
			err := rows.Scan(&msg.Id, &msg.Sender, &msg.Receiver, &msg.Message, &msg.Time)
			if err != nil {
				fmt.Println(err)
				break
			}
			res.Id = msg.Id
			res.From = msg.Sender
			res.To = msg.Receiver
			res.Message = msg.Message
			res.Time = msg.Time
			messages = append(messages, &res)
		}
	}
	return messages

}

func insertMessages(sender string, receiver string, message string, t string) (bool, chat.Result) {

	row := db.QueryRow("INSERT INTO messages(Sender,Receiver,Message,Time) VALUES($1,$2,$3,$4) RETURNING *;", sender, receiver, message, t)
	var msg Message = Message{}
	var res = chat.Result{}
	err := row.Scan(&msg.Id, &msg.Sender, &msg.Receiver, &msg.Message, &msg.Time)
	if err == sql.ErrNoRows {
		return false, res
	}
	res.Id = msg.Id
	res.From = msg.Sender
	res.To = msg.Receiver
	res.Message = msg.Message
	res.Time = msg.Time
	return true, res
}

func insertUser(user string) bool {

	_, err := db.Exec("INSERT INTO users(name) values($1);", user)
	return checkError(err)
}

func checkError(err error) bool {
	if err != nil {
		fmt.Println("error : ", err)
		return true
	}
	return false
}
