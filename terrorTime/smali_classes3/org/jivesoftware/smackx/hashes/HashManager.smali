.class public final Lorg/jivesoftware/smackx/hashes/HashManager;
.super Lorg/jivesoftware/smack/Manager;
.source "HashManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;,
        Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;,
        Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;
    }
.end annotation


# static fields
.field private static final INSTANCES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/hashes/HashManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREFIX_NS_ALGO:Ljava/lang/String; = "urn:xmpp:hash-function-text-names:"

.field public static final PROVIDER:Ljava/lang/String; = "BC"

.field public static final RECOMMENDED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 84
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager;->RECOMMENDED:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager;->INSTANCES:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 97
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 98
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 99
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->V2:Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager;->RECOMMENDED:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/hashes/HashManager;->addAlgorithmsToFeatures(Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public static asFeature(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/lang/String;
    .locals 2
    .param p0, "algorithm"    # Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urn:xmpp:hash-function-text-names:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static assembleHashElement(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;[B)Lorg/jivesoftware/smackx/hashes/element/HashElement;
    .locals 1
    .param p0, "algorithm"    # Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    .param p1, "hash"    # [B

    .line 108
    new-instance v0, Lorg/jivesoftware/smackx/hashes/element/HashElement;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/hashes/element/HashElement;-><init>(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;[B)V

    return-object v0
.end method

.method public static blake2b160(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 442
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b160([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blake2b160([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 438
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B160:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blake2b160HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 450
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b160(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blake2b160HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 446
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b160([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blake2b256(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 458
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b256([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blake2b256([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 454
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blake2b256HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 466
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b256(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blake2b256HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 462
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b256([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blake2b384(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 474
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b384([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blake2b384([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 470
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blake2b384HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 482
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b384(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blake2b384HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 478
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b384([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blake2b512(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 490
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b512([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blake2b512([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 486
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blake2b512HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 498
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b512(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blake2b512HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 494
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->blake2b512([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateHashElement(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;[B)Lorg/jivesoftware/smackx/hashes/element/HashElement;
    .locals 2
    .param p0, "algorithm"    # Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    .param p1, "data"    # [B

    .line 104
    new-instance v0, Lorg/jivesoftware/smackx/hashes/element/HashElement;

    invoke-static {p0, p1}, Lorg/jivesoftware/smackx/hashes/HashManager;->hash(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;[B)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smackx/hashes/element/HashElement;-><init>(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;[B)V

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/hashes/HashManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/hashes/HashManager;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/hashes/HashManager;

    .line 129
    .local v1, "hashManager":Lorg/jivesoftware/smackx/hashes/HashManager;
    if-nez v1, :cond_0

    .line 130
    new-instance v2, Lorg/jivesoftware/smackx/hashes/HashManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/hashes/HashManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 131
    sget-object v2, Lorg/jivesoftware/smackx/hashes/HashManager;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    monitor-exit v0

    return-object v1

    .line 127
    .end local v1    # "hashManager":Lorg/jivesoftware/smackx/hashes/HashManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;
    .locals 3
    .param p0, "algorithm"    # Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 225
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$1;->$SwitchMap$org$jivesoftware$smackx$hashes$HashManager$ALGORITHM:[I

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "BC"

    packed-switch v0, :pswitch_data_0

    .line 269
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    goto/16 :goto_1

    .line 266
    :pswitch_0
    const-string v0, "BLAKE2b-512"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 267
    .local v0, "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 263
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_1
    const-string v0, "BLAKE2b-384"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 264
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 260
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_2
    const-string v0, "BLAKE2b-256"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 261
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 257
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_3
    const-string v0, "BLAKE2b-160"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 258
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 254
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_4
    const-string v0, "SHA3-512"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 255
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 251
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_5
    const-string v0, "SHA3-384"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 252
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 248
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_6
    const-string v0, "SHA3-256"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 249
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 245
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_7
    const-string v0, "SHA3-224"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 246
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 242
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_8
    const-string v0, "SHA-512"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 243
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 239
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_9
    const-string v0, "SHA-384"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 240
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 236
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_a
    const-string v0, "SHA-256"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 237
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 233
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_b
    const-string v0, "SHA-224"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 234
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 230
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_c
    const-string v0, "SHA-1"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 231
    .restart local v0    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 227
    .end local v0    # "md":Ljava/security/MessageDigest;
    :pswitch_d
    const-string v0, "MD5"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 228
    .restart local v0    # "md":Ljava/security/MessageDigest;
    nop

    .line 271
    :goto_0
    return-object v0

    .line 269
    .end local v0    # "md":Ljava/security/MessageDigest;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid enum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "algorithm":Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    throw v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    .restart local p0    # "algorithm":Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 273
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hash(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;Ljava/lang/String;)[B
    .locals 1
    .param p0, "algorithm"    # Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    .param p1, "data"    # Ljava/lang/String;

    .line 219
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->hash(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hash(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;[B)[B
    .locals 1
    .param p0, "algorithm"    # Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    .param p1, "data"    # [B

    .line 215
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 282
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->md5([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 278
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->MD5:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 290
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->md5(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 286
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->md5([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha3_224(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 378
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_224([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha3_224([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 374
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_224:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha3_224HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 386
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_224(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha3_224HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 382
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_224([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha3_256(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 394
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_256([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha3_256([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 390
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha3_256HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 402
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_256(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha3_256HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 398
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_256([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha3_384(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 410
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_384([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha3_384([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 406
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha3_384HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 418
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_384(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha3_384HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 414
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_384([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha3_512(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 426
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_512([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha3_512([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 422
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha3_512HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 434
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_512(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha3_512HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 430
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha3_512([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha_1(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 298
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_1([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha_1([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 294
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_1:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha_1HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 306
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_1(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha_1HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 302
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_1([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha_224(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 314
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_224([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha_224([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 310
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_224:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha_224HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 322
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_224(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha_224HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 318
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_224([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha_256(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 330
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_256([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha_256([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 326
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha_256HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 338
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_256(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha_256HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 334
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_256([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha_384(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 346
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_384([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha_384([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 342
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha_384HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 354
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_384(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha_384HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 350
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_384([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha_512(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 362
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_512([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha_512([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 358
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager;->getMessageDigest(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha_512HexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 370
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_512(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha_512HexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 366
    invoke-static {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->sha_512([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAlgorithmsToFeatures(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "algorithms":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/hashes/HashManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 117
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 118
    .local v2, "algo":Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    invoke-static {v2}, Lorg/jivesoftware/smackx/hashes/HashManager;->asFeature(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 119
    .end local v2    # "algo":Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method
