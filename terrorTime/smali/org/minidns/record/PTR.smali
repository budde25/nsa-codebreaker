.class public Lorg/minidns/record/PTR;
.super Lorg/minidns/record/RRWithTarget;
.source "PTR.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/minidns/record/PTR;-><init>(Lorg/minidns/dnsname/DnsName;)V

    .line 31
    return-void
.end method

.method constructor <init>(Lorg/minidns/dnsname/DnsName;)V
    .locals 0
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;

    .line 34
    invoke-direct {p0, p1}, Lorg/minidns/record/RRWithTarget;-><init>(Lorg/minidns/dnsname/DnsName;)V

    .line 35
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/PTR;
    .locals 2
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-static {p0, p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    .line 26
    .local v0, "target":Lorg/minidns/dnsname/DnsName;
    new-instance v1, Lorg/minidns/record/PTR;

    invoke-direct {v1, v0}, Lorg/minidns/record/PTR;-><init>(Lorg/minidns/dnsname/DnsName;)V

    return-object v1
.end method


# virtual methods
.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 39
    sget-object v0, Lorg/minidns/record/Record$TYPE;->PTR:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method
