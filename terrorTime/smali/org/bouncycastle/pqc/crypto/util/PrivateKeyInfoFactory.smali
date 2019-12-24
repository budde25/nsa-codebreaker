.class public Lorg/bouncycastle/pqc/crypto/util/PrivateKeyInfoFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPrivateKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyInfoFactory;->createPrivateKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    return-object p0
.end method

.method public static createPrivateKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->qTeslaLookupAlgID(I)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecret()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v1

    :cond_0
    instance-of p1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincs256LookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_1
    instance-of p1, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    if-eqz p1, :cond_3

    check-cast p0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object p0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    aget-short v2, p0, v1

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_3
    instance-of p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    if-eqz p1, :cond_4

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->xmssLookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;-><init>(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyInfoFactory;->xmssCreateKeyStructure(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;)Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_4
    instance-of p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    if-eqz p1, :cond_5

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/util/Utils;->xmssLookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;-><init>(IILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyInfoFactory;->xmssmtCreateKeyStructure(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;)Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "key parameters not recognized"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static xmssCreateKeyStructure(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;)Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;
    .locals 12

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result p0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->bytesToXBigEndian([BII)J

    move-result-wide v3

    long-to-int v6, v3

    int-to-long v3, v6

    invoke-static {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v7

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v8

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v9

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v10

    add-int/2addr v2, v1

    array-length p0, v0

    sub-int/2addr p0, v2

    invoke-static {v0, v2, p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v11

    new-instance p0, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;-><init>(I[B[B[B[B[B)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static xmssmtCreateKeyStructure(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;)Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;
    .locals 13

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result p0

    add-int/lit8 v2, p0, 0x7

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->bytesToXBigEndian([BII)J

    move-result-wide v4

    long-to-int v7, v4

    int-to-long v4, v7

    invoke-static {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/2addr v2, v3

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v8

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v9

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v10

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v11

    add-int/2addr v2, v1

    array-length p0, v0

    sub-int/2addr p0, v2

    invoke-static {v0, v2, p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v12

    new-instance p0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;-><init>(I[B[B[B[B[B)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
