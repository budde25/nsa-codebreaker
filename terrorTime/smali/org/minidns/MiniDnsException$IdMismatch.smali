.class public Lorg/minidns/MiniDnsException$IdMismatch;
.super Lorg/minidns/MiniDnsException;
.source "MiniDnsException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/MiniDnsException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdMismatch"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final request:Lorg/minidns/dnsmessage/DnsMessage;

.field private final response:Lorg/minidns/dnsmessage/DnsMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lorg/minidns/MiniDnsException;

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 1
    .param p1, "request"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "response"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 39
    invoke-static {p1, p2}, Lorg/minidns/MiniDnsException$IdMismatch;->getString(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/minidns/MiniDnsException;-><init>(Ljava/lang/String;)V

    .line 40
    nop

    .line 41
    iput-object p1, p0, Lorg/minidns/MiniDnsException$IdMismatch;->request:Lorg/minidns/dnsmessage/DnsMessage;

    .line 42
    iput-object p2, p0, Lorg/minidns/MiniDnsException$IdMismatch;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 43
    return-void
.end method

.method private static getString(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p1, "response"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The response\'s ID doesn\'t matches the request ID. Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRequest()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/minidns/MiniDnsException$IdMismatch;->request:Lorg/minidns/dnsmessage/DnsMessage;

    return-object v0
.end method

.method public getResponse()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/minidns/MiniDnsException$IdMismatch;->response:Lorg/minidns/dnsmessage/DnsMessage;

    return-object v0
.end method
