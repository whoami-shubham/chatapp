package main

import (
	"context"
	"fmt"
	"log"
	"net"
	"net/http"
	"rpc/chat"
	"sync"
	"time"

	"google.golang.org/grpc"
)

var mu sync.Mutex

type server struct {
}

func (s server) Join(ctx context.Context, req *chat.JoinRequest) (*chat.JoinResponse, error) {

	name := req.GetName()
	if len(name) == 0 {
		return &chat.JoinResponse{Response: &chat.Response{Status: http.StatusBadRequest, Message: "Name field is empty"}}, nil
	}
	mu.Lock()
	defer mu.Unlock()
	exists := find(name)
	if exists {
		return &chat.JoinResponse{Response: &chat.Response{Status: http.StatusBadRequest, Message: "Name already exist try different name."}}, nil
	}
	inserted := insertUser(name)
	if !inserted {
		return &chat.JoinResponse{Response: &chat.Response{Status: http.StatusBadRequest, Message: "Unable to insert user in DB"}}, nil
	}
	return &chat.JoinResponse{Response: &chat.Response{Status: http.StatusOK, Message: "Sucess"}}, nil
}

func (s server) Users(ctx context.Context, req *chat.GetUser) (*chat.SendUser, error) {

	var users = getUsers()

	return &chat.SendUser{User: users}, nil
}

func (s server) Message(ctx context.Context, req *chat.GetMessages) (*chat.SendMessages, error) {

	user := req.GetUser()
	if len(user) == 0 {
		return &chat.SendMessages{Response: &chat.Response{Status: http.StatusBadRequest, Message: "Name field is empty"}}, nil
	}
	exists := find(user)
	if !exists {
		return &chat.SendMessages{Response: &chat.Response{Status: http.StatusBadRequest, Message: "User does not exist"}}, nil
	}
	var messages = getMessages(user)
	return &chat.SendMessages{Response: &chat.Response{Status: http.StatusOK, Message: "Sucess"}, Message: messages}, nil

}
func (s server) Send(ctx context.Context, req *chat.SendRequest) (*chat.SendResponse, error) {
	from := req.GetFrom()
	to := req.GetTo()
	msg := req.GetMessage()

	if len(from) == 0 || len(to) == 0 || len(msg) == 0 {
		return &chat.SendResponse{Response: &chat.Response{Status: http.StatusBadRequest, Message: "Invalid Format"}}, nil
	}

	mu.Lock()
	defer mu.Unlock()

	usr1 := find(from)
	usr2 := find(to)

	if !usr1 || !usr2 {
		return &chat.SendResponse{Response: &chat.Response{Status: http.StatusBadRequest, Message: "User Not Found"}}, nil
	}
	var t = time.Now().String()
	inserted, message := insertMessages(from, to, msg, t)
	if !inserted {
		return &chat.SendResponse{Response: &chat.Response{Status: http.StatusBadRequest, Message: "Error in inserting Message to DB"}}, nil
	}

	return &chat.SendResponse{Response: &chat.Response{Status: http.StatusOK, Message: "Sucess"}, Result: &message}, nil
}

func main() {
	// create a listener on TCP port 7777
	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", 7777))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	// create a server instance
	s := server{}
	// create a gRPC server object
	grpcserver := grpc.NewServer()
	// attach the Ping service to the server
	chat.RegisterChatServer(grpcserver, &s)
	// start the server
	fmt.Println("gRPC server is running on port 7777")
	if err := grpcserver.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %s", err)
	}
	defer db.Close()

}
