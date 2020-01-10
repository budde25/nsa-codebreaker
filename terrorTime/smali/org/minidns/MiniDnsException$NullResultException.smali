.class public Lorg/minidns/MiniDnsException$NullResultException;
.super Lorg/minidns/MiniDnsException;
.source "MiniDnsException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/MiniDnsException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullResultException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final request:Lorg/minidns/dnsmessage/DnsMessage;


# direct methods
.method public constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 1
    .param p1, "request"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 68
    const-string v0, "The request yielded a \'null\' result while resolving."

    invoke-direct {p0, v0}, Lorg/minidns/MiniDnsException;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lorg/minidns/MiniDnsException$NullResultException;->request:Lorg/minidns/dnsmessage/DnsMessage;

    .line 70
    return-void
.end method


# virtual methods
.method public getRequest()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/minidns/MiniDnsException$NullResultException;->request:Lorg/minidns/dnsmessage/DnsMessage;

    return-object v0
.end method
