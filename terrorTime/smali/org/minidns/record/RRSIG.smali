.class public Lorg/minidns/record/RRSIG;
.super Lorg/minidns/record/Data;
.source "RRSIG.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public final algorithmByte:B

.field private transient base64SignatureCache:Ljava/lang/String;

.field public final keyTag:I

.field public final labels:B

.field public final originalTtl:J

.field private final signature:[B

.field public final signatureExpiration:Ljava/util/Date;

.field public final signatureInception:Ljava/util/Date;

.field public final signerName:Lorg/minidns/dnsname/DnsName;

.field public final typeCovered:Lorg/minidns/record/Record$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/minidns/record/Record$TYPE;IBJLjava/util/Date;Ljava/util/Date;ILjava/lang/String;[B)V
    .locals 13
    .param p1, "typeCovered"    # Lorg/minidns/record/Record$TYPE;
    .param p2, "algorithm"    # I
    .param p3, "labels"    # B
    .param p4, "originalTtl"    # J
    .param p6, "signatureExpiration"    # Ljava/util/Date;
    .param p7, "signatureInception"    # Ljava/util/Date;
    .param p8, "keyTag"    # I
    .param p9, "signerName"    # Ljava/lang/String;
    .param p10, "signature"    # [B

    .line 121
    move v0, p2

    int-to-byte v4, v0

    invoke-static/range {p9 .. p9}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v11

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lorg/minidns/record/RRSIG;-><init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/minidns/record/Record$TYPE;IBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V
    .locals 13
    .param p1, "typeCovered"    # Lorg/minidns/record/Record$TYPE;
    .param p2, "algorithm"    # I
    .param p3, "labels"    # B
    .param p4, "originalTtl"    # J
    .param p6, "signatureExpiration"    # Ljava/util/Date;
    .param p7, "signatureInception"    # Ljava/util/Date;
    .param p8, "keyTag"    # I
    .param p9, "signerName"    # Lorg/minidns/dnsname/DnsName;
    .param p10, "signature"    # [B

    .line 116
    move v0, p2

    int-to-byte v4, v0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lorg/minidns/record/RRSIG;-><init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V

    .line 117
    return-void
.end method

.method private constructor <init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V
    .locals 1
    .param p1, "typeCovered"    # Lorg/minidns/record/Record$TYPE;
    .param p2, "algorithm"    # Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .param p3, "algorithmByte"    # B
    .param p4, "labels"    # B
    .param p5, "originalTtl"    # J
    .param p7, "signatureExpiration"    # Ljava/util/Date;
    .param p8, "signatureInception"    # Ljava/util/Date;
    .param p9, "keyTag"    # I
    .param p10, "signerName"    # Lorg/minidns/dnsname/DnsName;
    .param p11, "signature"    # [B

    .line 98
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    .line 101
    nop

    .line 102
    iput-byte p3, p0, Lorg/minidns/record/RRSIG;->algorithmByte:B

    .line 103
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/minidns/record/RRSIG;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 105
    iput-byte p4, p0, Lorg/minidns/record/RRSIG;->labels:B

    .line 106
    iput-wide p5, p0, Lorg/minidns/record/RRSIG;->originalTtl:J

    .line 107
    iput-object p7, p0, Lorg/minidns/record/RRSIG;->signatureExpiration:Ljava/util/Date;

    .line 108
    iput-object p8, p0, Lorg/minidns/record/RRSIG;->signatureInception:Ljava/util/Date;

    .line 109
    iput p9, p0, Lorg/minidns/record/RRSIG;->keyTag:I

    .line 110
    iput-object p10, p0, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    .line 111
    iput-object p11, p0, Lorg/minidns/record/RRSIG;->signature:[B

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BJLjava/util/Date;Ljava/util/Date;ILjava/lang/String;[B)V
    .locals 12
    .param p1, "typeCovered"    # Lorg/minidns/record/Record$TYPE;
    .param p2, "algorithm"    # Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .param p3, "labels"    # B
    .param p4, "originalTtl"    # J
    .param p6, "signatureExpiration"    # Ljava/util/Date;
    .param p7, "signatureInception"    # Ljava/util/Date;
    .param p8, "keyTag"    # I
    .param p9, "signerName"    # Ljava/lang/String;
    .param p10, "signature"    # [B

    .line 133
    move-object v0, p2

    iget-byte v3, v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    invoke-static/range {p9 .. p9}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lorg/minidns/record/RRSIG;-><init>(Lorg/minidns/record/Record$TYPE;IBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V
    .locals 12
    .param p1, "typeCovered"    # Lorg/minidns/record/Record$TYPE;
    .param p2, "algorithm"    # Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .param p3, "labels"    # B
    .param p4, "originalTtl"    # J
    .param p6, "signatureExpiration"    # Ljava/util/Date;
    .param p7, "signatureInception"    # Ljava/util/Date;
    .param p8, "keyTag"    # I
    .param p9, "signerName"    # Lorg/minidns/dnsname/DnsName;
    .param p10, "signature"    # [B

    .line 127
    move-object v0, p2

    iget-byte v3, v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lorg/minidns/record/RRSIG;-><init>(Lorg/minidns/record/Record$TYPE;IBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V

    .line 128
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;[BI)Lorg/minidns/record/RRSIG;
    .locals 22
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Lorg/minidns/record/Record$TYPE;->getType(I)Lorg/minidns/record/Record$TYPE;

    move-result-object v0

    .line 83
    .local v0, "typeCovered":Lorg/minidns/record/Record$TYPE;
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v13

    .line 84
    .local v13, "algorithm":B
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    .line 85
    .local v14, "labels":B
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v15, v1, v3

    .line 86
    .local v15, "originalTtl":J
    new-instance v8, Ljava/util/Date;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 87
    .local v8, "signatureExpiration":Ljava/util/Date;
    new-instance v9, Ljava/util/Date;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    mul-long/2addr v1, v5

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 88
    .local v9, "signatureInception":Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v17

    .line 89
    .local v17, "keyTag":I
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v18

    .line 90
    .local v18, "signerName":Lorg/minidns/dnsname/DnsName;
    invoke-virtual/range {v18 .. v18}, Lorg/minidns/dnsname/DnsName;->size()I

    move-result v1

    sub-int v1, p2, v1

    add-int/lit8 v12, v1, -0x12

    .line 91
    .local v12, "sigSize":I
    new-array v11, v12, [B

    .line 92
    .local v11, "signature":[B
    move-object/from16 v10, p0

    invoke-virtual {v10, v11}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    array-length v2, v11

    if-ne v1, v2, :cond_0

    .line 93
    new-instance v19, Lorg/minidns/record/RRSIG;

    const/4 v3, 0x0

    move-object/from16 v1, v19

    move-object v2, v0

    move v4, v13

    move v5, v14

    move-wide v6, v15

    move/from16 v10, v17

    move-object/from16 v20, v11

    .end local v11    # "signature":[B
    .local v20, "signature":[B
    move-object/from16 v11, v18

    move/from16 v21, v12

    .end local v12    # "sigSize":I
    .local v21, "sigSize":I
    move-object/from16 v12, v20

    invoke-direct/range {v1 .. v12}, Lorg/minidns/record/RRSIG;-><init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V

    return-object v19

    .line 92
    .end local v20    # "signature":[B
    .end local v21    # "sigSize":I
    .restart local v11    # "signature":[B
    .restart local v12    # "sigSize":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method


# virtual methods
.method public getSignature()[B
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->signature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSignatureAsDataInputStream()Ljava/io/DataInputStream;
    .locals 3

    .line 141
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/minidns/record/RRSIG;->signature:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getSignatureBase64()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->base64SignatureCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->signature:[B

    invoke-static {v0}, Lorg/minidns/util/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/RRSIG;->base64SignatureCache:Ljava/lang/String;

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->base64SignatureCache:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureLength()I
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->signature:[B

    array-length v0, v0

    return v0
.end method

.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 159
    sget-object v0, Lorg/minidns/record/Record$TYPE;->RRSIG:Lorg/minidns/record/Record$TYPE;

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

    .line 164
    invoke-virtual {p0, p1}, Lorg/minidns/record/RRSIG;->writePartialSignature(Ljava/io/DataOutputStream;)V

    .line 165
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->signature:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 181
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/minidns/record/RRSIG;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/minidns/record/RRSIG;->labels:B

    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/minidns/record/RRSIG;->originalTtl:J

    .line 187
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/minidns/record/RRSIG;->signatureExpiration:Ljava/util/Date;

    .line 188
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/minidns/record/RRSIG;->signatureInception:Ljava/util/Date;

    .line 189
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/record/RRSIG;->keyTag:I

    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Lorg/minidns/record/RRSIG;->getSignatureBase64()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writePartialSignature(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v0}, Lorg/minidns/record/Record$TYPE;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 170
    iget-byte v0, p0, Lorg/minidns/record/RRSIG;->algorithmByte:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 171
    iget-byte v0, p0, Lorg/minidns/record/RRSIG;->labels:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 172
    iget-wide v0, p0, Lorg/minidns/record/RRSIG;->originalTtl:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->signatureExpiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 174
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->signatureInception:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 175
    iget v0, p0, Lorg/minidns/record/RRSIG;->keyTag:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 176
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 177
    return-void
.end method
