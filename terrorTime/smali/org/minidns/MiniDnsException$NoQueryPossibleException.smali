.class public Lorg/minidns/MiniDnsException$NoQueryPossibleException;
.super Lorg/minidns/MiniDnsException;
.source "MiniDnsException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/MiniDnsException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoQueryPossibleException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final request:Lorg/minidns/dnsmessage/DnsMessage;


# direct methods
.method public constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 1
    .param p1, "request"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 112
    const-string v0, "No DNS server could be queried"

    invoke-direct {p0, v0}, Lorg/minidns/MiniDnsException;-><init>(Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lorg/minidns/MiniDnsException$NoQueryPossibleException;->request:Lorg/minidns/dnsmessage/DnsMessage;

    .line 114
    return-void
.end method


# virtual methods
.method public getRequest()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/minidns/MiniDnsException$NoQueryPossibleException;->request:Lorg/minidns/dnsmessage/DnsMessage;

    return-object v0
.end method
