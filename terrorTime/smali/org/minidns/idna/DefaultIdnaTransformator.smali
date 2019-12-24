.class public Lorg/minidns/idna/DefaultIdnaTransformator;
.super Ljava/lang/Object;
.source "DefaultIdnaTransformator.java"

# interfaces
.implements Lorg/minidns/idna/IdnaTransformator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 24
    sget-object v0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    iget-object v0, v0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    iget-object v0, v0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    return-object v0

    .line 28
    :cond_0
    invoke-static {p1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 33
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
