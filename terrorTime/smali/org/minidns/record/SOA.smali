.class public Lorg/minidns/record/SOA;
.super Lorg/minidns/record/Data;
.source "SOA.java"


# instance fields
.field public final expire:I

.field public final minimum:J

.field public final mname:Lorg/minidns/dnsname/DnsName;

.field public final refresh:I

.field public final retry:I

.field public final rname:Lorg/minidns/dnsname/DnsName;

.field public final serial:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIIIJ)V
    .locals 10
    .param p1, "mname"    # Ljava/lang/String;
    .param p2, "rname"    # Ljava/lang/String;
    .param p3, "serial"    # J
    .param p5, "refresh"    # I
    .param p6, "retry"    # I
    .param p7, "expire"    # I
    .param p8, "minimum"    # J

    .line 75
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    invoke-static {p2}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v2

    move-object v0, p0

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/minidns/record/SOA;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;JIIIJ)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;JIIIJ)V
    .locals 0
    .param p1, "mname"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "rname"    # Lorg/minidns/dnsname/DnsName;
    .param p3, "serial"    # J
    .param p5, "refresh"    # I
    .param p6, "retry"    # I
    .param p7, "expire"    # I
    .param p8, "minimum"    # J

    .line 78
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/minidns/record/SOA;->mname:Lorg/minidns/dnsname/DnsName;

    .line 80
    iput-object p2, p0, Lorg/minidns/record/SOA;->rname:Lorg/minidns/dnsname/DnsName;

    .line 81
    iput-wide p3, p0, Lorg/minidns/record/SOA;->serial:J

    .line 82
    iput p5, p0, Lorg/minidns/record/SOA;->refresh:I

    .line 83
    iput p6, p0, Lorg/minidns/record/SOA;->retry:I

    .line 84
    iput p7, p0, Lorg/minidns/record/SOA;->expire:I

    .line 85
    iput-wide p8, p0, Lorg/minidns/record/SOA;->minimum:J

    .line 86
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/SOA;
    .locals 20
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v10

    .line 65
    .local v10, "mname":Lorg/minidns/dnsname/DnsName;
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v11

    .line 66
    .local v11, "rname":Lorg/minidns/dnsname/DnsName;
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 67
    .local v12, "serial":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 68
    .local v14, "refresh":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 69
    .local v15, "retry":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 70
    .local v16, "expire":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    and-long v17, v0, v2

    .line 71
    .local v17, "minimum":J
    new-instance v19, Lorg/minidns/record/SOA;

    move-object/from16 v0, v19

    move-object v1, v10

    move-object v2, v11

    move-wide v3, v12

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move-wide/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Lorg/minidns/record/SOA;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;JIIIJ)V

    return-object v19
.end method


# virtual methods
.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 90
    sget-object v0, Lorg/minidns/record/Record$TYPE;->SOA:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/minidns/record/SOA;->mname:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 96
    iget-object v0, p0, Lorg/minidns/record/SOA;->rname:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 97
    iget-wide v0, p0, Lorg/minidns/record/SOA;->serial:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 98
    iget v0, p0, Lorg/minidns/record/SOA;->refresh:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 99
    iget v0, p0, Lorg/minidns/record/SOA;->retry:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 100
    iget v0, p0, Lorg/minidns/record/SOA;->expire:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 101
    iget-wide v0, p0, Lorg/minidns/record/SOA;->minimum:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/record/SOA;->mname:Lorg/minidns/dnsname/DnsName;

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/SOA;->rname:Lorg/minidns/dnsname/DnsName;

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/record/SOA;->serial:J

    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/SOA;->refresh:I

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/SOA;->retry:I

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/SOA;->expire:I

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/record/SOA;->minimum:J

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
