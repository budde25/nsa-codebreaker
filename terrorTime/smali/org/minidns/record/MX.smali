.class public Lorg/minidns/record/MX;
.super Lorg/minidns/record/Data;
.source "MX.java"


# instance fields
.field public final name:Lorg/minidns/dnsname/DnsName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final priority:I

.field public final target:Lorg/minidns/dnsname/DnsName;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/minidns/record/MX;-><init>(ILorg/minidns/dnsname/DnsName;)V

    .line 53
    return-void
.end method

.method public constructor <init>(ILorg/minidns/dnsname/DnsName;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "name"    # Lorg/minidns/dnsname/DnsName;

    .line 55
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 56
    iput p1, p0, Lorg/minidns/record/MX;->priority:I

    .line 57
    iput-object p2, p0, Lorg/minidns/record/MX;->target:Lorg/minidns/dnsname/DnsName;

    .line 58
    iget-object v0, p0, Lorg/minidns/record/MX;->target:Lorg/minidns/dnsname/DnsName;

    iput-object v0, p0, Lorg/minidns/record/MX;->name:Lorg/minidns/dnsname/DnsName;

    .line 59
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/MX;
    .locals 3
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 47
    .local v0, "priority":I
    invoke-static {p0, p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    .line 48
    .local v1, "name":Lorg/minidns/dnsname/DnsName;
    new-instance v2, Lorg/minidns/record/MX;

    invoke-direct {v2, v0, v1}, Lorg/minidns/record/MX;-><init>(ILorg/minidns/dnsname/DnsName;)V

    return-object v2
.end method


# virtual methods
.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 74
    sget-object v0, Lorg/minidns/record/Record$TYPE;->MX:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lorg/minidns/record/MX;->priority:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 64
    iget-object v0, p0, Lorg/minidns/record/MX;->target:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/minidns/record/MX;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/record/MX;->target:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
