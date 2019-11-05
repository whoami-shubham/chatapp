// Code generated by protoc-gen-go. DO NOT EDIT.
// source: chat.proto

package chat

import (
	context "context"
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

type Response struct {
	Status               int32    `protobuf:"varint,1,opt,name=status,proto3" json:"status,omitempty"`
	Message              string   `protobuf:"bytes,2,opt,name=message,proto3" json:"message,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *Response) Reset()         { *m = Response{} }
func (m *Response) String() string { return proto.CompactTextString(m) }
func (*Response) ProtoMessage()    {}
func (*Response) Descriptor() ([]byte, []int) {
	return fileDescriptor_8c585a45e2093e54, []int{0}
}

func (m *Response) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_Response.Unmarshal(m, b)
}
func (m *Response) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_Response.Marshal(b, m, deterministic)
}
func (m *Response) XXX_Merge(src proto.Message) {
	xxx_messageInfo_Response.Merge(m, src)
}
func (m *Response) XXX_Size() int {
	return xxx_messageInfo_Response.Size(m)
}
func (m *Response) XXX_DiscardUnknown() {
	xxx_messageInfo_Response.DiscardUnknown(m)
}

var xxx_messageInfo_Response proto.InternalMessageInfo

func (m *Response) GetStatus() int32 {
	if m != nil {
		return m.Status
	}
	return 0
}

func (m *Response) GetMessage() string {
	if m != nil {
		return m.Message
	}
	return ""
}

type JoinRequest struct {
	Name                 string   `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *JoinRequest) Reset()         { *m = JoinRequest{} }
func (m *JoinRequest) String() string { return proto.CompactTextString(m) }
func (*JoinRequest) ProtoMessage()    {}
func (*JoinRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_8c585a45e2093e54, []int{1}
}

func (m *JoinRequest) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_JoinRequest.Unmarshal(m, b)
}
func (m *JoinRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_JoinRequest.Marshal(b, m, deterministic)
}
func (m *JoinRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_JoinRequest.Merge(m, src)
}
func (m *JoinRequest) XXX_Size() int {
	return xxx_messageInfo_JoinRequest.Size(m)
}
func (m *JoinRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_JoinRequest.DiscardUnknown(m)
}

var xxx_messageInfo_JoinRequest proto.InternalMessageInfo

func (m *JoinRequest) GetName() string {
	if m != nil {
		return m.Name
	}
	return ""
}

type JoinResponse struct {
	Response             *Response `protobuf:"bytes,1,opt,name=response,proto3" json:"response,omitempty"`
	XXX_NoUnkeyedLiteral struct{}  `json:"-"`
	XXX_unrecognized     []byte    `json:"-"`
	XXX_sizecache        int32     `json:"-"`
}

func (m *JoinResponse) Reset()         { *m = JoinResponse{} }
func (m *JoinResponse) String() string { return proto.CompactTextString(m) }
func (*JoinResponse) ProtoMessage()    {}
func (*JoinResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_8c585a45e2093e54, []int{2}
}

func (m *JoinResponse) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_JoinResponse.Unmarshal(m, b)
}
func (m *JoinResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_JoinResponse.Marshal(b, m, deterministic)
}
func (m *JoinResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_JoinResponse.Merge(m, src)
}
func (m *JoinResponse) XXX_Size() int {
	return xxx_messageInfo_JoinResponse.Size(m)
}
func (m *JoinResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_JoinResponse.DiscardUnknown(m)
}

var xxx_messageInfo_JoinResponse proto.InternalMessageInfo

func (m *JoinResponse) GetResponse() *Response {
	if m != nil {
		return m.Response
	}
	return nil
}

type GetUser struct {
	Nothing              int32    `protobuf:"varint,1,opt,name=nothing,proto3" json:"nothing,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *GetUser) Reset()         { *m = GetUser{} }
func (m *GetUser) String() string { return proto.CompactTextString(m) }
func (*GetUser) ProtoMessage()    {}
func (*GetUser) Descriptor() ([]byte, []int) {
	return fileDescriptor_8c585a45e2093e54, []int{3}
}

func (m *GetUser) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_GetUser.Unmarshal(m, b)
}
func (m *GetUser) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_GetUser.Marshal(b, m, deterministic)
}
func (m *GetUser) XXX_Merge(src proto.Message) {
	xxx_messageInfo_GetUser.Merge(m, src)
}
func (m *GetUser) XXX_Size() int {
	return xxx_messageInfo_GetUser.Size(m)
}
func (m *GetUser) XXX_DiscardUnknown() {
	xxx_messageInfo_GetUser.DiscardUnknown(m)
}

var xxx_messageInfo_GetUser proto.InternalMessageInfo

func (m *GetUser) GetNothing() int32 {
	if m != nil {
		return m.Nothing
	}
	return 0
}

type SendUser struct {
	User                 []string `protobuf:"bytes,1,rep,name=user,proto3" json:"user,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *SendUser) Reset()         { *m = SendUser{} }
func (m *SendUser) String() string { return proto.CompactTextString(m) }
func (*SendUser) ProtoMessage()    {}
func (*SendUser) Descriptor() ([]byte, []int) {
	return fileDescriptor_8c585a45e2093e54, []int{4}
}

func (m *SendUser) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_SendUser.Unmarshal(m, b)
}
func (m *SendUser) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_SendUser.Marshal(b, m, deterministic)
}
func (m *SendUser) XXX_Merge(src proto.Message) {
	xxx_messageInfo_SendUser.Merge(m, src)
}
func (m *SendUser) XXX_Size() int {
	return xxx_messageInfo_SendUser.Size(m)
}
func (m *SendUser) XXX_DiscardUnknown() {
	xxx_messageInfo_SendUser.DiscardUnknown(m)
}

var xxx_messageInfo_SendUser proto.InternalMessageInfo

func (m *SendUser) GetUser() []string {
	if m != nil {
		return m.User
	}
	return nil
}

type SendRequest struct {
	From                 string   `protobuf:"bytes,1,opt,name=from,proto3" json:"from,omitempty"`
	To                   string   `protobuf:"bytes,2,opt,name=to,proto3" json:"to,omitempty"`
	Message              string   `protobuf:"bytes,3,opt,name=message,proto3" json:"message,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *SendRequest) Reset()         { *m = SendRequest{} }
func (m *SendRequest) String() string { return proto.CompactTextString(m) }
func (*SendRequest) ProtoMessage()    {}
func (*SendRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_8c585a45e2093e54, []int{5}
}

func (m *SendRequest) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_SendRequest.Unmarshal(m, b)
}
func (m *SendRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_SendRequest.Marshal(b, m, deterministic)
}
func (m *SendRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_SendRequest.Merge(m, src)
}
func (m *SendRequest) XXX_Size() int {
	return xxx_messageInfo_SendRequest.Size(m)
}
func (m *SendRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_SendRequest.DiscardUnknown(m)
}

var xxx_messageInfo_SendRequest proto.InternalMessageInfo

func (m *SendRequest) GetFrom() string {
	if m != nil {
		return m.From
	}
	return ""
}

func (m *SendRequest) GetTo() string {
	if m != nil {
		return m.To
	}
	return ""
}

func (m *SendRequest) GetMessage() string {
	if m != nil {
		return m.Message
	}
	return ""
}

type Result struct {
	Id                   int32    `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"`
	From                 string   `protobuf:"bytes,2,opt,name=from,proto3" json:"from,omitempty"`
	To                   string   `protobuf:"bytes,3,opt,name=to,proto3" json:"to,omitempty"`
	Message              string   `protobuf:"bytes,4,opt,name=message,proto3" json:"message,omitempty"`
	Time                 string   `protobuf:"bytes,5,opt,name=time,proto3" json:"time,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *Result) Reset()         { *m = Result{} }
func (m *Result) String() string { return proto.CompactTextString(m) }
func (*Result) ProtoMessage()    {}
func (*Result) Descriptor() ([]byte, []int) {
	return fileDescriptor_8c585a45e2093e54, []int{6}
}

func (m *Result) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_Result.Unmarshal(m, b)
}
func (m *Result) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_Result.Marshal(b, m, deterministic)
}
func (m *Result) XXX_Merge(src proto.Message) {
	xxx_messageInfo_Result.Merge(m, src)
}
func (m *Result) XXX_Size() int {
	return xxx_messageInfo_Result.Size(m)
}
func (m *Result) XXX_DiscardUnknown() {
	xxx_messageInfo_Result.DiscardUnknown(m)
}

var xxx_messageInfo_Result proto.InternalMessageInfo

func (m *Result) GetId() int32 {
	if m != nil {
		return m.Id
	}
	return 0
}

func (m *Result) GetFrom() string {
	if m != nil {
		return m.From
	}
	return ""
}

func (m *Result) GetTo() string {
	if m != nil {
		return m.To
	}
	return ""
}

func (m *Result) GetMessage() string {
	if m != nil {
		return m.Message
	}
	return ""
}

func (m *Result) GetTime() string {
	if m != nil {
		return m.Time
	}
	return ""
}

type SendResponse struct {
	Response             *Response `protobuf:"bytes,1,opt,name=response,proto3" json:"response,omitempty"`
	Result               *Result   `protobuf:"bytes,2,opt,name=result,proto3" json:"result,omitempty"`
	XXX_NoUnkeyedLiteral struct{}  `json:"-"`
	XXX_unrecognized     []byte    `json:"-"`
	XXX_sizecache        int32     `json:"-"`
}

func (m *SendResponse) Reset()         { *m = SendResponse{} }
func (m *SendResponse) String() string { return proto.CompactTextString(m) }
func (*SendResponse) ProtoMessage()    {}
func (*SendResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_8c585a45e2093e54, []int{7}
}

func (m *SendResponse) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_SendResponse.Unmarshal(m, b)
}
func (m *SendResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_SendResponse.Marshal(b, m, deterministic)
}
func (m *SendResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_SendResponse.Merge(m, src)
}
func (m *SendResponse) XXX_Size() int {
	return xxx_messageInfo_SendResponse.Size(m)
}
func (m *SendResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_SendResponse.DiscardUnknown(m)
}

var xxx_messageInfo_SendResponse proto.InternalMessageInfo

func (m *SendResponse) GetResponse() *Response {
	if m != nil {
		return m.Response
	}
	return nil
}

func (m *SendResponse) GetResult() *Result {
	if m != nil {
		return m.Result
	}
	return nil
}

type GetMessages struct {
	User                 string   `protobuf:"bytes,1,opt,name=user,proto3" json:"user,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *GetMessages) Reset()         { *m = GetMessages{} }
func (m *GetMessages) String() string { return proto.CompactTextString(m) }
func (*GetMessages) ProtoMessage()    {}
func (*GetMessages) Descriptor() ([]byte, []int) {
	return fileDescriptor_8c585a45e2093e54, []int{8}
}

func (m *GetMessages) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_GetMessages.Unmarshal(m, b)
}
func (m *GetMessages) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_GetMessages.Marshal(b, m, deterministic)
}
func (m *GetMessages) XXX_Merge(src proto.Message) {
	xxx_messageInfo_GetMessages.Merge(m, src)
}
func (m *GetMessages) XXX_Size() int {
	return xxx_messageInfo_GetMessages.Size(m)
}
func (m *GetMessages) XXX_DiscardUnknown() {
	xxx_messageInfo_GetMessages.DiscardUnknown(m)
}

var xxx_messageInfo_GetMessages proto.InternalMessageInfo

func (m *GetMessages) GetUser() string {
	if m != nil {
		return m.User
	}
	return ""
}

type SendMessages struct {
	Response             *Response `protobuf:"bytes,1,opt,name=response,proto3" json:"response,omitempty"`
	Message              []*Result `protobuf:"bytes,2,rep,name=message,proto3" json:"message,omitempty"`
	XXX_NoUnkeyedLiteral struct{}  `json:"-"`
	XXX_unrecognized     []byte    `json:"-"`
	XXX_sizecache        int32     `json:"-"`
}

func (m *SendMessages) Reset()         { *m = SendMessages{} }
func (m *SendMessages) String() string { return proto.CompactTextString(m) }
func (*SendMessages) ProtoMessage()    {}
func (*SendMessages) Descriptor() ([]byte, []int) {
	return fileDescriptor_8c585a45e2093e54, []int{9}
}

func (m *SendMessages) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_SendMessages.Unmarshal(m, b)
}
func (m *SendMessages) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_SendMessages.Marshal(b, m, deterministic)
}
func (m *SendMessages) XXX_Merge(src proto.Message) {
	xxx_messageInfo_SendMessages.Merge(m, src)
}
func (m *SendMessages) XXX_Size() int {
	return xxx_messageInfo_SendMessages.Size(m)
}
func (m *SendMessages) XXX_DiscardUnknown() {
	xxx_messageInfo_SendMessages.DiscardUnknown(m)
}

var xxx_messageInfo_SendMessages proto.InternalMessageInfo

func (m *SendMessages) GetResponse() *Response {
	if m != nil {
		return m.Response
	}
	return nil
}

func (m *SendMessages) GetMessage() []*Result {
	if m != nil {
		return m.Message
	}
	return nil
}

func init() {
	proto.RegisterType((*Response)(nil), "chat.Response")
	proto.RegisterType((*JoinRequest)(nil), "chat.JoinRequest")
	proto.RegisterType((*JoinResponse)(nil), "chat.JoinResponse")
	proto.RegisterType((*GetUser)(nil), "chat.GetUser")
	proto.RegisterType((*SendUser)(nil), "chat.SendUser")
	proto.RegisterType((*SendRequest)(nil), "chat.SendRequest")
	proto.RegisterType((*Result)(nil), "chat.Result")
	proto.RegisterType((*SendResponse)(nil), "chat.SendResponse")
	proto.RegisterType((*GetMessages)(nil), "chat.GetMessages")
	proto.RegisterType((*SendMessages)(nil), "chat.SendMessages")
}

func init() { proto.RegisterFile("chat.proto", fileDescriptor_8c585a45e2093e54) }

var fileDescriptor_8c585a45e2093e54 = []byte{
	// 380 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x94, 0x93, 0xcf, 0x6e, 0xe2, 0x30,
	0x10, 0xc6, 0x95, 0x3f, 0x04, 0x98, 0xb0, 0x48, 0xeb, 0xc3, 0x2a, 0xe2, 0xb0, 0x62, 0xb3, 0x55,
	0x85, 0x2a, 0x81, 0x2a, 0x7a, 0xab, 0x7a, 0xeb, 0x01, 0xa9, 0x55, 0x2f, 0xae, 0x7a, 0x6f, 0x28,
	0x53, 0x48, 0x45, 0x62, 0x1a, 0x4f, 0x5e, 0xaf, 0xcf, 0x56, 0xd9, 0xb1, 0x2d, 0x23, 0x7a, 0xe1,
	0x36, 0xc3, 0x7c, 0xf3, 0xf1, 0x9b, 0xf1, 0x04, 0xe0, 0x6d, 0x57, 0xd0, 0xe2, 0xd0, 0x08, 0x12,
	0x2c, 0x56, 0x71, 0x7e, 0x07, 0x03, 0x8e, 0xf2, 0x20, 0x6a, 0x89, 0xec, 0x0f, 0x24, 0x92, 0x0a,
	0x6a, 0x65, 0x16, 0x4c, 0x83, 0x59, 0x8f, 0x9b, 0x8c, 0x65, 0xd0, 0xaf, 0x50, 0xca, 0x62, 0x8b,
	0x59, 0x38, 0x0d, 0x66, 0x43, 0x6e, 0xd3, 0xfc, 0x1f, 0xa4, 0x0f, 0xa2, 0xac, 0x39, 0x7e, 0xb6,
	0x28, 0x89, 0x31, 0x88, 0xeb, 0xa2, 0x42, 0xdd, 0x3e, 0xe4, 0x3a, 0xce, 0x6f, 0x61, 0xd4, 0x49,
	0xcc, 0x9f, 0x5c, 0xc1, 0xa0, 0x31, 0xb1, 0xd6, 0xa5, 0xcb, 0xf1, 0x42, 0x53, 0x59, 0x05, 0x77,
	0xf5, 0xfc, 0x3f, 0xf4, 0x57, 0x48, 0x2f, 0x12, 0x1b, 0xc5, 0x50, 0x0b, 0xda, 0x95, 0xf5, 0xd6,
	0xc0, 0xd9, 0x34, 0xff, 0x0b, 0x83, 0x67, 0xac, 0x37, 0x5a, 0xc5, 0x20, 0x6e, 0x25, 0x36, 0x59,
	0x30, 0x8d, 0x14, 0x80, 0x8a, 0xf3, 0x47, 0x48, 0x55, 0xdd, 0x63, 0x7c, 0x6f, 0x44, 0x65, 0x19,
	0x55, 0xcc, 0xc6, 0x10, 0x92, 0x30, 0xb3, 0x85, 0x24, 0xfc, 0x81, 0xa3, 0xe3, 0x81, 0x3f, 0x20,
	0xe1, 0x28, 0xdb, 0x3d, 0xa9, 0x9e, 0x72, 0x63, 0x58, 0xc2, 0x72, 0xe3, 0x7c, 0xc3, 0x13, 0xdf,
	0xe8, 0x27, 0xdf, 0xf8, 0xc8, 0x57, 0x75, 0x53, 0x59, 0x61, 0xd6, 0xeb, 0xba, 0x55, 0x9c, 0xbf,
	0xc2, 0xa8, 0x03, 0x3f, 0x7f, 0x73, 0xec, 0x02, 0x92, 0x46, 0x73, 0x6a, 0x9e, 0x74, 0x39, 0x72,
	0xca, 0x76, 0x4f, 0xdc, 0xd4, 0xd4, 0xf3, 0xad, 0x90, 0x9e, 0x3a, 0x06, 0xe9, 0x6d, 0x2f, 0x70,
	0xdb, 0x5b, 0x77, 0x10, 0x4e, 0x73, 0x0e, 0xc4, 0xa5, 0x7f, 0x37, 0xd1, 0x09, 0x85, 0x2d, 0x2e,
	0xbf, 0x02, 0x88, 0xef, 0x77, 0x05, 0xb1, 0x39, 0xc4, 0xea, 0x56, 0xd8, 0xef, 0x4e, 0xe7, 0x9d,
	0xd6, 0x84, 0xf9, 0x3f, 0x39, 0xff, 0x9e, 0x7a, 0x75, 0xc9, 0x7e, 0x75, 0x45, 0x73, 0x2b, 0x13,
	0x43, 0xe4, 0xae, 0xe2, 0x1a, 0xfa, 0x86, 0xdf, 0x3a, 0x7b, 0x53, 0x5b, 0xe7, 0xa3, 0x29, 0xe7,
	0x10, 0xab, 0xdc, 0xca, 0xbd, 0xfb, 0xf1, 0xe5, 0x16, 0x64, 0x9d, 0xe8, 0x2f, 0xea, 0xe6, 0x3b,
	0x00, 0x00, 0xff, 0xff, 0x75, 0xbc, 0xfe, 0xb5, 0x5f, 0x03, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// ChatClient is the client API for Chat service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type ChatClient interface {
	Join(ctx context.Context, in *JoinRequest, opts ...grpc.CallOption) (*JoinResponse, error)
	Users(ctx context.Context, in *GetUser, opts ...grpc.CallOption) (*SendUser, error)
	Message(ctx context.Context, in *GetMessages, opts ...grpc.CallOption) (*SendMessages, error)
	Send(ctx context.Context, in *SendRequest, opts ...grpc.CallOption) (*SendResponse, error)
}

type chatClient struct {
	cc *grpc.ClientConn
}

func NewChatClient(cc *grpc.ClientConn) ChatClient {
	return &chatClient{cc}
}

func (c *chatClient) Join(ctx context.Context, in *JoinRequest, opts ...grpc.CallOption) (*JoinResponse, error) {
	out := new(JoinResponse)
	err := c.cc.Invoke(ctx, "/chat.Chat/Join", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *chatClient) Users(ctx context.Context, in *GetUser, opts ...grpc.CallOption) (*SendUser, error) {
	out := new(SendUser)
	err := c.cc.Invoke(ctx, "/chat.Chat/Users", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *chatClient) Message(ctx context.Context, in *GetMessages, opts ...grpc.CallOption) (*SendMessages, error) {
	out := new(SendMessages)
	err := c.cc.Invoke(ctx, "/chat.Chat/Message", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *chatClient) Send(ctx context.Context, in *SendRequest, opts ...grpc.CallOption) (*SendResponse, error) {
	out := new(SendResponse)
	err := c.cc.Invoke(ctx, "/chat.Chat/Send", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// ChatServer is the server API for Chat service.
type ChatServer interface {
	Join(context.Context, *JoinRequest) (*JoinResponse, error)
	Users(context.Context, *GetUser) (*SendUser, error)
	Message(context.Context, *GetMessages) (*SendMessages, error)
	Send(context.Context, *SendRequest) (*SendResponse, error)
}

// UnimplementedChatServer can be embedded to have forward compatible implementations.
type UnimplementedChatServer struct {
}

func (*UnimplementedChatServer) Join(ctx context.Context, req *JoinRequest) (*JoinResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Join not implemented")
}
func (*UnimplementedChatServer) Users(ctx context.Context, req *GetUser) (*SendUser, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Users not implemented")
}
func (*UnimplementedChatServer) Message(ctx context.Context, req *GetMessages) (*SendMessages, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Message not implemented")
}
func (*UnimplementedChatServer) Send(ctx context.Context, req *SendRequest) (*SendResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Send not implemented")
}

func RegisterChatServer(s *grpc.Server, srv ChatServer) {
	s.RegisterService(&_Chat_serviceDesc, srv)
}

func _Chat_Join_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(JoinRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ChatServer).Join(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/chat.Chat/Join",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ChatServer).Join(ctx, req.(*JoinRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Chat_Users_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetUser)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ChatServer).Users(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/chat.Chat/Users",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ChatServer).Users(ctx, req.(*GetUser))
	}
	return interceptor(ctx, in, info, handler)
}

func _Chat_Message_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetMessages)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ChatServer).Message(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/chat.Chat/Message",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ChatServer).Message(ctx, req.(*GetMessages))
	}
	return interceptor(ctx, in, info, handler)
}

func _Chat_Send_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SendRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ChatServer).Send(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/chat.Chat/Send",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ChatServer).Send(ctx, req.(*SendRequest))
	}
	return interceptor(ctx, in, info, handler)
}

var _Chat_serviceDesc = grpc.ServiceDesc{
	ServiceName: "chat.Chat",
	HandlerType: (*ChatServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Join",
			Handler:    _Chat_Join_Handler,
		},
		{
			MethodName: "Users",
			Handler:    _Chat_Users_Handler,
		},
		{
			MethodName: "Message",
			Handler:    _Chat_Message_Handler,
		},
		{
			MethodName: "Send",
			Handler:    _Chat_Send_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "chat.proto",
}