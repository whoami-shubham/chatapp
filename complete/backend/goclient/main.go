package main

import (
	"context"
	"log"
	"rpc/chat"

	"google.golang.org/grpc"
)

func main() {
	var conn *grpc.ClientConn
	conn, err := grpc.Dial(":7777", grpc.WithInsecure())
	if err != nil {
		log.Fatalf("did not connect: %s", err)
	}
	defer conn.Close()

	joinrequest(&chat.JoinRequest{Name: ""}, conn)
	joinrequest(&chat.JoinRequest{Name: "alice"}, conn)
	joinrequest(&chat.JoinRequest{Name: "bob"}, conn)
	getusers(&chat.GetUser{}, conn)
	send(&chat.SendRequest{From: "alice", To: "xyz", Message: "Hello !"}, conn)
	send(&chat.SendRequest{From: "alice", To: "bob", Message: "Hello !"}, conn)
	message(&chat.GetMessages{User: "alice"}, conn)
	message(&chat.GetMessages{User: "bob"}, conn)
	message(&chat.GetMessages{User: "xyz"}, conn)
}

func joinrequest(req *chat.JoinRequest, conn *grpc.ClientConn) {
	c := chat.NewChatClient(conn)
	response, err := c.Join(context.Background(), req)
	if err != nil {
		log.Println(err)
		return
	}
	log.Println("Response from server: ", *response)

}
func getusers(req *chat.GetUser, conn *grpc.ClientConn) {
	c := chat.NewChatClient(conn)
	response, err := c.Users(context.Background(), req)
	if err != nil {
		log.Println(err)
		return
	}
	log.Println("Response from server: ", *response)
}
func send(req *chat.SendRequest, conn *grpc.ClientConn) {
	c := chat.NewChatClient(conn)
	response, err := c.Send(context.Background(), req)
	if err != nil {
		log.Println(err)
		return
	}
	log.Println("Response from server: ", *response)
}
func message(req *chat.GetMessages, conn *grpc.ClientConn) {
	c := chat.NewChatClient(conn)
	response, err := c.Message(context.Background(), req)
	if err != nil {
		log.Println(err)
		return
	}
	log.Println("Response from server: ", *response)
}
