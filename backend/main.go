package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"strings"
	"time"
)

type Packet struct {
	Id      string
	From    string
	To      string
	Message string
	Time    time.Time
}
type response struct {
	message string
}

var users = make(map[string]bool)
var messages = make(map[string][]Packet)
var id int64 = 0

func main() {
	users["Norman Powers"] = true
	users["krishna"] = true
	users["ritesh"] = true
	users["Tom Matthews"] = true
	users["Norman Powers"] = true
	users["shubham"] = true
	users["aman"] = true
	users["aprameya"] = true
	users["deepak"] = true
	users["ankit"] = true
	users["jitesh"] = true
	users["Marther"] = true

	http.HandleFunc("/users", getUser)
	http.HandleFunc("/join", join)
	http.HandleFunc("/login", login)
	http.HandleFunc("/messages", getMessage)
	http.HandleFunc("/send", sendMessage)
	log.Fatal(http.ListenAndServe(":4300", nil))

}

func join(w http.ResponseWriter, req *http.Request) {

	if req.Method != http.MethodPost {
		fmt.Println("join invalid request method")
		setHeaderAndSendResponse("invalid request method", w, http.StatusBadRequest)
		return
	}

	decoder := json.NewDecoder(req.Body)
	var data struct {
		Name string
	}
	err := decoder.Decode(&data)
	checkError(err)
	_, userExist := users[string(data.Name)]
	if userExist {
		fmt.Println("join same user already exist, try different name")
		setHeaderAndSendResponse("same user already exist, try different name", w, http.StatusBadRequest)
		return
	}

	users[data.Name] = true
	setHeaderAndSendResponse("sucess", w, http.StatusOK)
}

func login(w http.ResponseWriter, req *http.Request) {

	if req.Method != http.MethodPost {
		fmt.Println("login same user already exist, try different name")
		setHeaderAndSendResponse("invalid request method", w, http.StatusBadRequest)
		return
	}

	decoder := json.NewDecoder(req.Body)
	var data struct {
		Name string
	}
	err := decoder.Decode(&data)
	checkError(err)
	_, userExist := users[string(data.Name)]
	if !userExist {
		fmt.Println("login user does not exist")
		setHeaderAndSendResponse("user does not exist", w, http.StatusBadRequest)
		return
	}
	setHeaderAndSendResponse("sucess", w, http.StatusOK)
}

func getUser(w http.ResponseWriter, req *http.Request) {
	if req.Method != http.MethodGet {
		fmt.Println("getUser invalid request method", req.Method, req.Body)
		setHeaderAndSendResponse("invalid request method", w, http.StatusBadRequest)
		return
	}
	var usrs []string
	for key, _ := range users {
		usrs = append(usrs, key)
	}
	response, err := json.Marshal(usrs)
	checkError(err)
	setHeader(w, http.StatusOK)
	w.Write(response)
}

func getMessage(w http.ResponseWriter, req *http.Request) {
	user := strings.TrimPrefix(req.URL.String(), "/messages?of=")

	if req.Method != http.MethodGet && len(user) == 0 {
		fmt.Println("getMessage invalid request method", req.Method, user, req.Body)
		setHeaderAndSendResponse("invalid request", w, http.StatusBadRequest)
		return
	}

	_, exists := users[user]
	if !exists {
		fmt.Println("getMessage invalid user", req.Method, user, req.Body)
		setHeaderAndSendResponse("invalid user", w, http.StatusBadRequest)
		return
	}
	response, _ := json.MarshalIndent(messages[user], "", "    ")
	setHeader(w, http.StatusOK)
	w.Write(response)

}

func sendMessage(w http.ResponseWriter, req *http.Request) {
	if req.Method != http.MethodPost {
		fmt.Println("sendMessage invalid request method")
		setHeaderAndSendResponse("invalid request method", w, http.StatusBadRequest)
	}
	decoder := json.NewDecoder(req.Body)
	var data struct {
		From    string
		To      string
		Message string
	}
	var message Packet
	err := decoder.Decode(&data)
	fmt.Println(data)
	message.Id = fmt.Sprintf("%v", id)
	message.From = data.From
	message.To = data.To
	message.Message = data.Message
	message.Time = time.Now()
	checkError(err)
	updateId()
	messages[message.From] = append(messages[message.From], message)
	messages[message.To] = append(messages[message.To], message)
	response, err := json.MarshalIndent(message, "", "    ")
	checkError(err)
	setHeader(w, http.StatusOK)
	w.Write(response)
}

func setHeaderAndSendResponse(res string, w http.ResponseWriter, status int) {
	setHeader(w, status)
	data, err := json.Marshal(response{message: res})
	checkError(err)
	w.Write(data)
}

func setHeader(w http.ResponseWriter, status int) {
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(status)
}

func checkError(err error) {
	if err != nil {
		fmt.Println("error : ", err)
	}
}

func updateId() {
	// lock
	id = id + 1
	// unlock
}
