.class public Lorg/minidns/record/SRV;
.super Lorg/minidns/record/Data;
.source "SRV.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/minidns/record/Data;",
        "Ljava/lang/Comparable<",
        "Lorg/minidns/record/SRV;",
        ">;"
    }
.end annotation


# instance fields
.field public final name:Lorg/minidns/dnsname/DnsName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final port:I

.field public final priority:I

.field public final target:Lorg/minidns/dnsname/DnsName;

.field public final weight:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "weight"    # I
    .param p3, "port"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 65
    invoke-static {p4}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/minidns/record/SRV;-><init>(IIILorg/minidns/dnsname/DnsName;)V

    .line 66
    return-void
.end method

.method public constructor <init>(IIILorg/minidns/dnsname/DnsName;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "weight"    # I
    .param p3, "port"    # I
    .param p4, "name"    # Lorg/minidns/dnsname/DnsName;

    .line 68
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 69
    iput p1, p0, Lorg/minidns/record/SRV;->priority:I

    .line 70
    iput p2, p0, Lorg/minidns/record/SRV;->weight:I

    .line 71
    iput p3, p0, Lorg/minidns/record/SRV;->port:I

    .line 72
    iput-object p4, p0, Lorg/minidns/record/SRV;->target:Lorg/minidns/dnsname/DnsName;

    .line 73
    iget-object v0, p0, Lorg/minidns/record/SRV;->target:Lorg/minidns/dnsname/DnsName;

    iput-object v0, p0, Lorg/minidns/record/SRV;->name:Lorg/minidns/dnsname/DnsName;

    .line 74
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/SRV;
    .locals 5
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 58
    .local v0, "priority":I
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 59
    .local v1, "weight":I
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 60
    .local v2, "port":I
    invoke-static {p0, p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v3

    .line 61
    .local v3, "name":Lorg/minidns/dnsname/DnsName;
    new-instance v4, Lorg/minidns/record/SRV;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/minidns/record/SRV;-><init>(IIILorg/minidns/dnsname/DnsName;)V

    return-object v4
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lorg/minidns/record/SRV;

    invoke-virtual {p0, p1}, Lorg/minidns/record/SRV;->compareTo(Lorg/minidns/record/SRV;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/minidns/record/SRV;)I
    .locals 3
    .param p1, "other"    # Lorg/minidns/record/SRV;

    .line 109
    iget v0, p1, Lorg/minidns/record/SRV;->priority:I

    iget v1, p0, Lorg/minidns/record/SRV;->priority:I

    sub-int/2addr v0, v1

    .line 110
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 111
    iget v1, p0, Lorg/minidns/record/SRV;->weight:I

    iget v2, p1, Lorg/minidns/record/SRV;->weight:I

    sub-int v0, v1, v2

    .line 113
    :cond_0
    return v0
.end method

.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 104
    sget-object v0, Lorg/minidns/record/Record$TYPE;->SRV:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public isServiceAvailable()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/minidns/record/SRV;->target:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lorg/minidns/record/SRV;->priority:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 92
    iget v0, p0, Lorg/minidns/record/SRV;->weight:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 93
    iget v0, p0, Lorg/minidns/record/SRV;->port:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 94
    iget-object v0, p0, Lorg/minidns/record/SRV;->target:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/minidns/record/SRV;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/SRV;->weight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/SRV;->port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/record/SRV;->target:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
