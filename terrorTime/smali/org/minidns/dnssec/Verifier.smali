.class Lorg/minidns/dnssec/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# static fields
.field private static final algorithmMap:Lorg/minidns/dnssec/algorithms/AlgorithmMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->INSTANCE:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    sput-object v0, Lorg/minidns/dnssec/Verifier;->algorithmMap:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static combine(Lorg/minidns/record/RRSIG;Ljava/util/List;)[B
    .locals 14
    .param p0, "rrsig"    # Lorg/minidns/record/RRSIG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/RRSIG;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)[B"
        }
    .end annotation

    .line 115
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 120
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/minidns/record/RRSIG;->writePartialSignature(Ljava/io/DataOutputStream;)V

    .line 122
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record;

    iget-object v2, v2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 123
    .local v2, "sigName":Lorg/minidns/dnsname/DnsName;
    invoke-virtual {v2}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    invoke-virtual {v2}, Lorg/minidns/dnsname/DnsName;->getLabelCount()I

    move-result v3

    iget-byte v4, p0, Lorg/minidns/record/RRSIG;->labels:B

    if-lt v3, v4, :cond_0

    .line 129
    invoke-virtual {v2}, Lorg/minidns/dnsname/DnsName;->getLabelCount()I

    move-result v3

    iget-byte v4, p0, Lorg/minidns/record/RRSIG;->labels:B

    if-le v3, v4, :cond_1

    .line 132
    sget-object v3, Lorg/minidns/dnslabel/DnsLabel;->WILDCARD_LABEL:Lorg/minidns/dnslabel/DnsLabel;

    iget-byte v4, p0, Lorg/minidns/record/RRSIG;->labels:B

    invoke-virtual {v2, v4}, Lorg/minidns/dnsname/DnsName;->stripToLabels(I)Lorg/minidns/dnsname/DnsName;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 126
    :cond_0
    new-instance v3, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v4, "Invalid RRsig record"

    invoke-direct {v3, v4}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local p0    # "rrsig":Lorg/minidns/record/RRSIG;
    .end local p1    # "records":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    throw v3

    .line 136
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local p0    # "rrsig":Lorg/minidns/record/RRSIG;
    .restart local p1    # "records":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v3

    .line 137
    .local v10, "recordBytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/Record;

    move-object v12, v3

    .line 138
    .local v12, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    new-instance v13, Lorg/minidns/record/Record;

    iget-object v5, v12, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    iget v6, v12, Lorg/minidns/record/Record;->clazzValue:I

    iget-wide v7, p0, Lorg/minidns/record/RRSIG;->originalTtl:J

    iget-object v9, v12, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    move-object v3, v13

    move-object v4, v2

    invoke-direct/range {v3 .. v9}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;IJLorg/minidns/record/Data;)V

    move-object v3, v13

    .line 139
    .local v3, "ref":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/Data;>;"
    invoke-virtual {v3}, Lorg/minidns/record/Record;->toByteArray()[B

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    nop

    .end local v3    # "ref":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/Data;>;"
    .end local v12    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v2}, Lorg/minidns/dnsname/DnsName;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    .line 144
    .local v3, "offset":I
    new-instance v4, Lorg/minidns/dnssec/Verifier$1;

    invoke-direct {v4, v3}, Lorg/minidns/dnssec/Verifier$1;-><init>(I)V

    invoke-static {v10, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 157
    .local v5, "recordByte":[B
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 158
    .end local v5    # "recordByte":[B
    goto :goto_2

    .line 159
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v2    # "sigName":Lorg/minidns/dnsname/DnsName;
    .end local v3    # "offset":I
    .end local v10    # "recordBytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    nop

    .line 164
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 160
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static nsec3hash(Lorg/minidns/dnssec/DigestCalculator;Lorg/minidns/record/NSEC3;Lorg/minidns/dnsname/DnsName;I)[B
    .locals 2
    .param p0, "digestCalculator"    # Lorg/minidns/dnssec/DigestCalculator;
    .param p1, "nsec3"    # Lorg/minidns/record/NSEC3;
    .param p2, "ownerName"    # Lorg/minidns/dnsname/DnsName;
    .param p3, "iterations"    # I

    .line 198
    invoke-virtual {p1}, Lorg/minidns/record/NSEC3;->getSalt()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/minidns/dnsname/DnsName;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lorg/minidns/dnssec/Verifier;->nsec3hash(Lorg/minidns/dnssec/DigestCalculator;[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static nsec3hash(Lorg/minidns/dnssec/DigestCalculator;[B[BI)[B
    .locals 4
    .param p0, "digestCalculator"    # Lorg/minidns/dnssec/DigestCalculator;
    .param p1, "salt"    # [B
    .param p2, "data"    # [B
    .param p3, "iterations"    # I

    .line 211
    :goto_0
    add-int/lit8 v0, p3, -0x1

    .end local p3    # "iterations":I
    .local v0, "iterations":I
    if-ltz p3, :cond_0

    .line 212
    array-length p3, p2

    array-length v1, p1

    add-int/2addr p3, v1

    new-array p3, p3, [B

    .line 213
    .local p3, "combined":[B
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    array-length v1, p2

    array-length v3, p1

    invoke-static {p1, v2, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    invoke-interface {p0, p3}, Lorg/minidns/dnssec/DigestCalculator;->digest([B)[B

    move-result-object p2

    .line 216
    .end local p3    # "combined":[B
    move p3, v0

    goto :goto_0

    .line 217
    :cond_0
    return-object p2
.end method

.method static nsecMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "test"    # Ljava/lang/String;
    .param p1, "lowerBound"    # Ljava/lang/String;
    .param p2, "upperBound"    # Ljava/lang/String;

    .line 168
    invoke-static {p0}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    invoke-static {p2}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/minidns/dnssec/Verifier;->nsecMatches(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Z

    move-result v0

    return v0
.end method

.method static nsecMatches(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Z
    .locals 5
    .param p0, "test"    # Lorg/minidns/dnsname/DnsName;
    .param p1, "lowerBound"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "upperBound"    # Lorg/minidns/dnsname/DnsName;

    .line 180
    invoke-virtual {p1}, Lorg/minidns/dnsname/DnsName;->getLabelCount()I

    move-result v0

    .line 181
    .local v0, "lowerParts":I
    invoke-virtual {p2}, Lorg/minidns/dnsname/DnsName;->getLabelCount()I

    move-result v1

    .line 182
    .local v1, "upperParts":I
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->getLabelCount()I

    move-result v2

    .line 184
    .local v2, "testParts":I
    const/4 v3, 0x0

    if-le v2, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/minidns/dnsname/DnsName;->isChildOf(Lorg/minidns/dnsname/DnsName;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Lorg/minidns/dnsname/DnsName;->stripToLabels(I)Lorg/minidns/dnsname/DnsName;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/minidns/dnsname/DnsName;->compareTo(Lorg/minidns/dnsname/DnsName;)I

    move-result v4

    if-gez v4, :cond_0

    .line 185
    return v3

    .line 186
    :cond_0
    if-gt v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/minidns/dnsname/DnsName;->stripToLabels(I)Lorg/minidns/dnsname/DnsName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/minidns/dnsname/DnsName;->compareTo(Lorg/minidns/dnsname/DnsName;)I

    move-result v4

    if-gez v4, :cond_1

    .line 187
    return v3

    .line 189
    :cond_1
    if-le v2, v1, :cond_2

    invoke-virtual {p0, p2}, Lorg/minidns/dnsname/DnsName;->isChildOf(Lorg/minidns/dnsname/DnsName;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v1}, Lorg/minidns/dnsname/DnsName;->stripToLabels(I)Lorg/minidns/dnsname/DnsName;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/minidns/dnsname/DnsName;->compareTo(Lorg/minidns/dnsname/DnsName;)I

    move-result v4

    if-lez v4, :cond_2

    .line 190
    return v3

    .line 191
    :cond_2
    if-gt v2, v1, :cond_3

    invoke-virtual {p2, v2}, Lorg/minidns/dnsname/DnsName;->stripToLabels(I)Lorg/minidns/dnsname/DnsName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/minidns/dnsname/DnsName;->compareTo(Lorg/minidns/dnsname/DnsName;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 192
    return v3

    .line 194
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public static verify(Ljava/util/List;Lorg/minidns/record/RRSIG;Lorg/minidns/record/DNSKEY;)Lorg/minidns/dnssec/DnssecUnverifiedReason;
    .locals 5
    .param p1, "rrsig"    # Lorg/minidns/record/RRSIG;
    .param p2, "key"    # Lorg/minidns/record/DNSKEY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;",
            "Lorg/minidns/record/RRSIG;",
            "Lorg/minidns/record/DNSKEY;",
            ")",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    sget-object v0, Lorg/minidns/dnssec/Verifier;->algorithmMap:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    iget-object v1, p1, Lorg/minidns/record/RRSIG;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    invoke-virtual {v0, v1}, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->getSignatureVerifier(Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;)Lorg/minidns/dnssec/SignatureVerifier;

    move-result-object v0

    .line 68
    .local v0, "signatureVerifier":Lorg/minidns/dnssec/SignatureVerifier;
    if-nez v0, :cond_0

    .line 69
    new-instance v1, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;

    iget-byte v2, p1, Lorg/minidns/record/RRSIG;->algorithmByte:B

    invoke-virtual {p1}, Lorg/minidns/record/RRSIG;->getType()Lorg/minidns/record/Record$TYPE;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/minidns/record/Record;

    invoke-direct {v1, v2, v3, v4}, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;-><init>(BLorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record;)V

    return-object v1

    .line 72
    :cond_0
    invoke-static {p1, p0}, Lorg/minidns/dnssec/Verifier;->combine(Lorg/minidns/record/RRSIG;Ljava/util/List;)[B

    move-result-object v1

    .line 73
    .local v1, "combine":[B
    invoke-interface {v0, v1, p1, p2}, Lorg/minidns/dnssec/SignatureVerifier;->verify([BLorg/minidns/record/RRSIG;Lorg/minidns/record/DNSKEY;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const/4 v2, 0x0

    return-object v2

    .line 76
    :cond_1
    new-instance v2, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v3, "Signature is invalid."

    invoke-direct {v2, p0, v3}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Ljava/util/List;Ljava/lang/String;)V

    throw v2
.end method

.method public static verify(Lorg/minidns/record/Record;Lorg/minidns/record/DelegatingDnssecRR;)Lorg/minidns/dnssec/DnssecUnverifiedReason;
    .locals 9
    .param p1, "ds"    # Lorg/minidns/record/DelegatingDnssecRR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/DNSKEY;",
            ">;",
            "Lorg/minidns/record/DelegatingDnssecRR;",
            ")",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/dnssec/DnssecValidationFailedException;
        }
    .end annotation

    .line 41
    .local p0, "dnskeyRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/DNSKEY;>;"
    iget-object v0, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v0, Lorg/minidns/record/DNSKEY;

    .line 42
    .local v0, "dnskey":Lorg/minidns/record/DNSKEY;
    sget-object v1, Lorg/minidns/dnssec/Verifier;->algorithmMap:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    iget-object v2, p1, Lorg/minidns/record/DelegatingDnssecRR;->digestType:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    invoke-virtual {v1, v2}, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->getDsDigestCalculator(Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;)Lorg/minidns/dnssec/DigestCalculator;

    move-result-object v1

    .line 43
    .local v1, "digestCalculator":Lorg/minidns/dnssec/DigestCalculator;
    if-nez v1, :cond_0

    .line 44
    new-instance v2, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;

    iget-byte v3, p1, Lorg/minidns/record/DelegatingDnssecRR;->digestTypeByte:B

    invoke-virtual {p1}, Lorg/minidns/record/DelegatingDnssecRR;->getType()Lorg/minidns/record/Record$TYPE;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;-><init>(BLorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record;)V

    return-object v2

    .line 47
    :cond_0
    invoke-virtual {v0}, Lorg/minidns/record/DNSKEY;->toByteArray()[B

    move-result-object v2

    .line 48
    .local v2, "dnskeyData":[B
    iget-object v3, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v3}, Lorg/minidns/dnsname/DnsName;->getBytes()[B

    move-result-object v3

    .line 49
    .local v3, "dnskeyOwner":[B
    array-length v4, v3

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 50
    .local v4, "combined":[B
    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    array-length v5, v3

    array-length v7, v2

    invoke-static {v2, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    :try_start_0
    invoke-interface {v1, v4}, Lorg/minidns/dnssec/DigestCalculator;->digest([B)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v5, "digest":[B
    nop

    .line 59
    invoke-virtual {p1, v5}, Lorg/minidns/record/DelegatingDnssecRR;->digestEquals([B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    const/4 v6, 0x0

    return-object v6

    .line 61
    :cond_1
    new-instance v6, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v7, "SEP is not properly signed by parent DS!"

    invoke-direct {v6, p0, v7}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Lorg/minidns/record/Record;Ljava/lang/String;)V

    throw v6

    .line 55
    .end local v5    # "digest":[B
    :catch_0
    move-exception v5

    .line 56
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;

    iget-object v7, p1, Lorg/minidns/record/DelegatingDnssecRR;->digestType:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    const-string v8, "DS"

    invoke-direct {v6, v7, v8, p0, v5}, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;-><init>(Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;Ljava/lang/String;Lorg/minidns/record/Record;Ljava/lang/Exception;)V

    return-object v6
.end method

.method public static verifyNsec(Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnssec/DnssecUnverifiedReason;
    .locals 5
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/NSEC;",
            ">;",
            "Lorg/minidns/dnsmessage/Question;",
            ")",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;"
        }
    .end annotation

    .line 81
    .local p0, "nsecRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NSEC;>;"
    iget-object v0, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v0, Lorg/minidns/record/NSEC;

    .line 82
    .local v0, "nsec":Lorg/minidns/record/NSEC;
    iget-object v1, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v2, p1, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v1, v2}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/minidns/record/NSEC;->types:Ljava/util/List;

    iget-object v3, p1, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    return-object v2

    .line 85
    :cond_0
    iget-object v1, p1, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v3, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v4, v0, Lorg/minidns/record/NSEC;->next:Lorg/minidns/dnsname/DnsName;

    invoke-static {v1, v3, v4}, Lorg/minidns/dnssec/Verifier;->nsecMatches(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    return-object v2

    .line 88
    :cond_1
    new-instance v1, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;

    invoke-direct {v1, p1, p0}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;-><init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/record/Record;)V

    return-object v1
.end method

.method public static verifyNsec3(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnssec/DnssecUnverifiedReason;
    .locals 8
    .param p0, "zone"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "q"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/NSEC3;",
            ">;",
            "Lorg/minidns/dnsmessage/Question;",
            ")",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;"
        }
    .end annotation

    .line 92
    .local p1, "nsec3record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NSEC3;>;"
    iget-object v0, p1, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v0, Lorg/minidns/record/NSEC3;

    .line 93
    .local v0, "nsec3":Lorg/minidns/record/NSEC3;
    sget-object v1, Lorg/minidns/dnssec/Verifier;->algorithmMap:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    iget-object v2, v0, Lorg/minidns/record/NSEC3;->hashAlgorithm:Lorg/minidns/record/NSEC3$HashAlgorithm;

    invoke-virtual {v1, v2}, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->getNsecDigestCalculator(Lorg/minidns/record/NSEC3$HashAlgorithm;)Lorg/minidns/dnssec/DigestCalculator;

    move-result-object v1

    .line 94
    .local v1, "digestCalculator":Lorg/minidns/dnssec/DigestCalculator;
    if-nez v1, :cond_0

    .line 95
    new-instance v2, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;

    iget-byte v3, v0, Lorg/minidns/record/NSEC3;->hashAlgorithmByte:B

    invoke-virtual {v0}, Lorg/minidns/record/NSEC3;->getType()Lorg/minidns/record/Record$TYPE;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;-><init>(BLorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record;)V

    return-object v2

    .line 98
    :cond_0
    iget-object v2, p2, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    iget v3, v0, Lorg/minidns/record/NSEC3;->iterations:I

    invoke-static {v1, v0, v2, v3}, Lorg/minidns/dnssec/Verifier;->nsec3hash(Lorg/minidns/dnssec/DigestCalculator;Lorg/minidns/record/NSEC3;Lorg/minidns/dnsname/DnsName;I)[B

    move-result-object v2

    .line 99
    .local v2, "bytes":[B
    invoke-static {v2}, Lorg/minidns/util/Base32;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v4

    .line 101
    .local v4, "computedNsec3Record":Lorg/minidns/dnsname/DnsName;
    iget-object v5, p1, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v5, v4}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 102
    iget-object v5, v0, Lorg/minidns/record/NSEC3;->types:Ljava/util/List;

    iget-object v7, p2, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    new-instance v5, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;

    invoke-direct {v5, p2, p1}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;-><init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/record/Record;)V

    return-object v5

    .line 106
    :cond_1
    return-object v6

    .line 108
    :cond_2
    iget-object v5, p1, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v5}, Lorg/minidns/dnsname/DnsName;->getHostpart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/minidns/record/NSEC3;->getNextHashed()[B

    move-result-object v7

    invoke-static {v7}, Lorg/minidns/util/Base32;->encodeToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v7}, Lorg/minidns/dnssec/Verifier;->nsecMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    return-object v6

    .line 111
    :cond_3
    new-instance v5, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;

    invoke-direct {v5, p2, p1}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;-><init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/record/Record;)V

    return-object v5
.end method
