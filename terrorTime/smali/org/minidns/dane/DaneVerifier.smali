.class public Lorg/minidns/dane/DaneVerifier;
.super Ljava/lang/Object;
.source "DaneVerifier.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final client:Lorg/minidns/dnssec/DnssecClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/minidns/dane/DaneVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/minidns/dane/DaneVerifier;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    new-instance v0, Lorg/minidns/dnssec/DnssecClient;

    invoke-direct {v0}, Lorg/minidns/dnssec/DnssecClient;-><init>()V

    invoke-direct {p0, v0}, Lorg/minidns/dane/DaneVerifier;-><init>(Lorg/minidns/dnssec/DnssecClient;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnssec/DnssecClient;)V
    .locals 0
    .param p1, "client"    # Lorg/minidns/dnssec/DnssecClient;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/minidns/dane/DaneVerifier;->client:Lorg/minidns/dnssec/DnssecClient;

    .line 60
    return-void
.end method

.method private static checkCertificateMatches(Ljava/security/cert/X509Certificate;Lorg/minidns/record/TLSA;Ljava/lang/String;)Z
    .locals 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "tlsa"    # Lorg/minidns/record/TLSA;
    .param p2, "hostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 149
    iget-object v0, p1, Lorg/minidns/record/TLSA;->certUsage:Lorg/minidns/record/TLSA$CertUsage;

    const-string v1, " is not supported while verifying "

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lorg/minidns/dane/DaneVerifier;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TLSA certificate usage byte "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p1, Lorg/minidns/record/TLSA;->certUsageByte:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 151
    return v2

    .line 154
    :cond_0
    sget-object v0, Lorg/minidns/dane/DaneVerifier$1;->$SwitchMap$org$minidns$record$TLSA$CertUsage:[I

    iget-object v3, p1, Lorg/minidns/record/TLSA;->certUsage:Lorg/minidns/record/TLSA$CertUsage;

    invoke-virtual {v3}, Lorg/minidns/record/TLSA$CertUsage;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const-string v3, ") not supported while verifying "

    const-string v4, " ("

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    .line 161
    sget-object v0, Lorg/minidns/dane/DaneVerifier;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TLSA certificate usage "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lorg/minidns/record/TLSA;->certUsage:Lorg/minidns/record/TLSA$CertUsage;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p1, Lorg/minidns/record/TLSA;->certUsageByte:B

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 162
    return v2

    .line 157
    :cond_1
    nop

    .line 165
    iget-object v0, p1, Lorg/minidns/record/TLSA;->selector:Lorg/minidns/record/TLSA$Selector;

    if-nez v0, :cond_2

    .line 166
    sget-object v0, Lorg/minidns/dane/DaneVerifier;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TLSA selector byte "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p1, Lorg/minidns/record/TLSA;->selectorByte:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 167
    return v2

    .line 170
    :cond_2
    const/4 v0, 0x0

    .line 171
    .local v0, "comp":[B
    sget-object v7, Lorg/minidns/dane/DaneVerifier$1;->$SwitchMap$org$minidns$record$TLSA$Selector:[I

    iget-object v8, p1, Lorg/minidns/record/TLSA;->selector:Lorg/minidns/record/TLSA$Selector;

    invoke-virtual {v8}, Lorg/minidns/record/TLSA$Selector;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v6, :cond_4

    if-eq v7, v5, :cond_3

    .line 179
    sget-object v1, Lorg/minidns/dane/DaneVerifier;->LOGGER:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TLSA selector "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lorg/minidns/record/TLSA;->selector:Lorg/minidns/record/TLSA$Selector;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p1, Lorg/minidns/record/TLSA;->selectorByte:B

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 180
    return v2

    .line 176
    :cond_3
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 177
    goto :goto_0

    .line 173
    :cond_4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 174
    nop

    .line 183
    :goto_0
    iget-object v3, p1, Lorg/minidns/record/TLSA;->matchingType:Lorg/minidns/record/TLSA$MatchingType;

    if-nez v3, :cond_5

    .line 184
    sget-object v3, Lorg/minidns/dane/DaneVerifier;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TLSA matching type byte "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p1, Lorg/minidns/record/TLSA;->matchingTypeByte:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 185
    return v2

    .line 188
    :cond_5
    sget-object v1, Lorg/minidns/dane/DaneVerifier$1;->$SwitchMap$org$minidns$record$TLSA$MatchingType:[I

    iget-object v3, p1, Lorg/minidns/record/TLSA;->matchingType:Lorg/minidns/record/TLSA$MatchingType;

    invoke-virtual {v3}, Lorg/minidns/record/TLSA$MatchingType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    .line 206
    sget-object v1, Lorg/minidns/dane/DaneVerifier;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TLSA matching type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/minidns/record/TLSA;->matchingType:Lorg/minidns/record/TLSA$MatchingType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not supported while verifying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 207
    return v2

    .line 200
    :cond_6
    :try_start_0
    const-string v1, "SHA-512"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 203
    goto :goto_1

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Verification using TLSA failed: could not SHA-512 for matching"

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 193
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_7
    :try_start_1
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 196
    goto :goto_1

    .line 194
    :catch_1
    move-exception v1

    .line 195
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Verification using TLSA failed: could not SHA-256 for matching"

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 190
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_8
    nop

    .line 210
    :goto_1
    invoke-virtual {p1, v0}, Lorg/minidns/record/TLSA;->certificateAssociationEquals([B)Z

    move-result v1

    .line 211
    .local v1, "matches":Z
    if-eqz v1, :cond_a

    .line 217
    iget-object v3, p1, Lorg/minidns/record/TLSA;->certUsage:Lorg/minidns/record/TLSA$CertUsage;

    sget-object v4, Lorg/minidns/record/TLSA$CertUsage;->domainIssuedCertificate:Lorg/minidns/record/TLSA$CertUsage;

    if-ne v3, v4, :cond_9

    move v2, v6

    :cond_9
    return v2

    .line 212
    :cond_a
    new-instance v2, Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;

    invoke-direct {v2, p1, v0}, Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;-><init>(Lorg/minidns/record/TLSA;[B)V

    throw v2
.end method

.method private static convert([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 5
    .param p0, "certificates"    # [Ljava/security/cert/Certificate;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 271
    .local v3, "certificate":Ljava/security/cert/Certificate;
    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_0

    .line 272
    move-object v4, v3

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v3    # "certificate":Ljava/security/cert/Certificate;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private static convert([Ljavax/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "certificates"    # [Ljavax/security/cert/X509Certificate;

    .line 279
    array-length v0, p0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 280
    .local v0, "certs":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 282
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    goto :goto_2

    .line 283
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v3, Lorg/minidns/dane/DaneVerifier;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Could not convert"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public verifiedConnect(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/minidns/dane/DaneVerifier;->verifiedConnect(Ljavax/net/ssl/HttpsURLConnection;Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public verifiedConnect(Ljavax/net/ssl/HttpsURLConnection;Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 6
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 250
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 251
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    new-instance v1, Lorg/minidns/dane/ExpectingTrustManager;

    invoke-direct {v1, p2}, Lorg/minidns/dane/ExpectingTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    .line 252
    .local v1, "expectingTrustManager":Lorg/minidns/dane/ExpectingTrustManager;
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 253
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 254
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 255
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-static {v2}, Lorg/minidns/dane/DaneVerifier;->convert([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v4

    if-gez v4, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getDefaultPort()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 255
    :goto_0
    invoke-virtual {p0, v2, v3, v4}, Lorg/minidns/dane/DaneVerifier;->verifyCertificateChain([Ljava/security/cert/X509Certificate;Ljava/lang/String;I)Z

    move-result v2

    .line 259
    .local v2, "fullyVerified":Z
    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/minidns/dane/ExpectingTrustManager;->hasException()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 260
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Peer verification failed using PKIX"

    invoke-virtual {v1}, Lorg/minidns/dane/ExpectingTrustManager;->getException()Ljava/security/cert/CertificateException;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .end local p2    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    throw v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .restart local p1    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .restart local p2    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_2
    :goto_1
    return-object p1

    .line 263
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    .end local v1    # "expectingTrustManager":Lorg/minidns/dane/ExpectingTrustManager;
    .end local v2    # "fullyVerified":Z
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 264
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify(Ljavax/net/ssl/SSLSession;)Z
    .locals 3
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v0}, Lorg/minidns/dane/DaneVerifier;->convert([Ljavax/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/minidns/dane/DaneVerifier;->verifyCertificateChain([Ljava/security/cert/X509Certificate;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Peer not verified"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/minidns/dane/DaneVerifier;->verify(Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Socket not yet connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyCertificateChain([Ljava/security/cert/X509Certificate;Ljava/lang/String;I)Z
    .locals 10
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "._tcp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    .line 107
    .local v0, "req":Lorg/minidns/dnsname/DnsName;
    :try_start_0
    iget-object v1, p0, Lorg/minidns/dane/DaneVerifier;->client:Lorg/minidns/dnssec/DnssecClient;

    sget-object v2, Lorg/minidns/record/Record$TYPE;->TLSA:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v1, v0, v2}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnssec/DnssecQueryResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .local v1, "result":Lorg/minidns/dnssec/DnssecQueryResult;
    nop

    .line 111
    iget-object v2, v1, Lorg/minidns/dnssec/DnssecQueryResult;->dnsQueryResult:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    iget-object v2, v2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 114
    .local v2, "res":Lorg/minidns/dnsmessage/DnsMessage;
    invoke-virtual {v1}, Lorg/minidns/dnssec/DnssecQueryResult;->isAuthenticData()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 115
    const-string v3, "Got TLSA response from DNS server, but was not signed properly."

    .line 116
    .local v3, "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Reasons:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v1}, Lorg/minidns/dnssec/DnssecQueryResult;->getUnverifiedReasons()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/minidns/dnssec/DnssecUnverifiedReason;

    .line 118
    .local v6, "reason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .end local v6    # "reason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    goto :goto_0

    .line 120
    :cond_0
    sget-object v5, Lorg/minidns/dane/DaneVerifier;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v5, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 121
    return v4

    .line 124
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 125
    .local v3, "certificateMismatchExceptions":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;>;"
    const/4 v5, 0x0

    .line 126
    .local v5, "verified":Z
    iget-object v6, v2, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/record/Record;

    .line 127
    .local v7, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v8, v7, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v9, Lorg/minidns/record/Record$TYPE;->TLSA:Lorg/minidns/record/Record$TYPE;

    if-ne v8, v9, :cond_2

    iget-object v8, v7, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v8, v0}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 128
    iget-object v8, v7, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v8, Lorg/minidns/record/TLSA;

    .line 130
    .local v8, "tlsa":Lorg/minidns/record/TLSA;
    :try_start_1
    aget-object v9, p1, v4

    invoke-static {v9, v8, p2}, Lorg/minidns/dane/DaneVerifier;->checkCertificateMatches(Ljava/security/cert/X509Certificate;Lorg/minidns/record/TLSA;Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catch Lorg/minidns/dane/DaneCertificateException$CertificateMismatch; {:try_start_1 .. :try_end_1} :catch_0

    or-int/2addr v5, v9

    .line 136
    goto :goto_2

    .line 131
    :catch_0
    move-exception v9

    .line 135
    .local v9, "certificateMismatchException":Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v9    # "certificateMismatchException":Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;
    :goto_2
    if-eqz v5, :cond_2

    goto :goto_3

    .line 139
    .end local v7    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    .end local v8    # "tlsa":Lorg/minidns/record/TLSA;
    :cond_2
    goto :goto_1

    .line 141
    :cond_3
    :goto_3
    if-nez v5, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 142
    :cond_4
    new-instance v4, Lorg/minidns/dane/DaneCertificateException$MultipleCertificateMismatchExceptions;

    invoke-direct {v4, v3}, Lorg/minidns/dane/DaneCertificateException$MultipleCertificateMismatchExceptions;-><init>(Ljava/util/List;)V

    throw v4

    .line 145
    :cond_5
    :goto_4
    return v5

    .line 108
    .end local v1    # "result":Lorg/minidns/dnssec/DnssecQueryResult;
    .end local v2    # "res":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v3    # "certificateMismatchExceptions":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;>;"
    .end local v5    # "verified":Z
    :catch_1
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
