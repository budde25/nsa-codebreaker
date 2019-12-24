.class public abstract Lorg/jivesoftware/smack/sasl/core/ScramMechanism;
.super Lorg/jivesoftware/smack/sasl/SASLMechanism;
.source "ScramMechanism.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;,
        Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CACHE:Lorg/jxmpp/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/Cache<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_KEY_BYTES:[B

.field private static final ONE:[B

.field private static final RANDOM_ASCII_BYTE_COUNT:I = 0x20

.field private static final SECURE_RANDOM:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVER_KEY_BYTES:[B


# instance fields
.field private clientFirstMessageBare:Ljava/lang/String;

.field private clientRandomAscii:Ljava/lang/String;

.field private final scramHmac:Lorg/jivesoftware/smack/sasl/core/ScramHmac;

.field private serverSignature:[B

.field private state:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    nop

    .line 42
    const-string v0, "Client Key"

    invoke-static {v0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->CLIENT_KEY_BYTES:[B

    .line 43
    const-string v0, "Server Key"

    invoke-static {v0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->SERVER_KEY_BYTES:[B

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->ONE:[B

    .line 46
    new-instance v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$1;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->SECURE_RANDOM:Ljava/lang/ThreadLocal;

    .line 53
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->CACHE:Lorg/jxmpp/util/cache/Cache;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/sasl/core/ScramHmac;)V
    .locals 1
    .param p1, "scramHmac"    # Lorg/jivesoftware/smack/sasl/core/ScramHmac;

    .line 57
    invoke-direct {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;-><init>()V

    .line 71
    sget-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->INITIAL:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->state:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    .line 58
    iput-object p1, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->scramHmac:Lorg/jivesoftware/smack/sasl/core/ScramHmac;

    .line 59
    return-void
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 340
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 341
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 342
    .local v2, "c":C
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 347
    :cond_0
    const-string v3, "=3D"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    goto :goto_1

    .line 344
    :cond_1
    const-string v3, "=2C"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    nop

    .line 340
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCBindInput()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->getChannelBindingData()[B

    move-result-object v0

    .line 243
    .local v0, "cbindData":[B
    invoke-direct {p0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->getGS2Header()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 245
    .local v1, "gs2Header":[B
    if-nez v0, :cond_0

    .line 246
    return-object v1

    .line 249
    :cond_0
    invoke-static {v1, v0}, Lorg/jivesoftware/smack/util/ByteUtils;->concat([B[B)[B

    move-result-object v2

    return-object v2
.end method

.method private getGS2Header()Ljava/lang/String;
    .locals 4

    .line 230
    const-string v0, ""

    .line 231
    .local v0, "authzidPortion":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->authorizationId:Lorg/jxmpp/jid/EntityBareJid;

    if-eqz v1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->authorizationId:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->getChannelBindingName()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "cbName":Ljava/lang/String;
    nop

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hi(Ljava/lang/String;[BI)[B
    .locals 7
    .param p1, "normalizedPassword"    # Ljava/lang/String;
    .param p2, "salt"    # [B
    .param p3, "iterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 391
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .local v0, "key":[B
    nop

    .line 397
    sget-object v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->ONE:[B

    invoke-static {p2, v1}, Lorg/jivesoftware/smack/util/ByteUtils;->concat([B[B)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->hmac([B[B)[B

    move-result-object v1

    .line 398
    .local v1, "u":[B
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 399
    .local v2, "res":[B
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_1

    .line 400
    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->hmac([B[B)[B

    move-result-object v1

    .line 401
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 402
    aget-byte v5, v2, v4

    aget-byte v6, v1, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 401
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 399
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 393
    .end local v0    # "key":[B
    .end local v1    # "u":[B
    .end local v2    # "res":[B
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private hmac([B[B)[B
    .locals 4
    .param p1, "key"    # [B
    .param p2, "str"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 367
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->scramHmac:Lorg/jivesoftware/smack/sasl/core/ScramHmac;

    invoke-interface {v0, p1, p2}, Lorg/jivesoftware/smack/sasl/core/ScramHmac;->hmac([B[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Lorg/jivesoftware/smack/SmackException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isPrintableNonCommaAsciiChar(C)Z
    .locals 2
    .param p0, "c"    # C

    .line 319
    const/4 v0, 0x0

    const/16 v1, 0x2c

    if-ne p0, v1, :cond_0

    .line 320
    return v0

    .line 325
    :cond_0
    const/16 v1, 0x20

    if-le p0, v1, :cond_1

    const/16 v1, 0x7f

    if-ge p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static parseAttributes(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "keyValuePairs":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 280
    .local v1, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 281
    .local v5, "keyValuePair":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    const-string v8, "Invalid Key-Value pair: "

    if-lt v6, v7, :cond_2

    .line 284
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 285
    .local v6, "key":C
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x3d

    if-ne v7, v9, :cond_1

    .line 288
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .end local v5    # "keyValuePair":Ljava/lang/String;
    .end local v6    # "key":C
    .end local v7    # "value":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 286
    .restart local v5    # "keyValuePair":Ljava/lang/String;
    .restart local v6    # "key":C
    :cond_1
    new-instance v2, Lorg/jivesoftware/smack/SmackException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    .end local v6    # "key":C
    :cond_2
    new-instance v2, Lorg/jivesoftware/smack/SmackException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    .end local v5    # "keyValuePair":Ljava/lang/String;
    :cond_3
    return-object v1
.end method


# virtual methods
.method protected authenticateInternal(Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .param p1, "cbh"    # Ljavax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CallbackHandler not (yet) supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authzidSupported()Z
    .locals 1

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public checkIfSuccessfulOrThrow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->state:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    sget-object v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->VALID_SERVER_RESPONSE:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    if-ne v0, v1, :cond_0

    .line 107
    return-void

    .line 105
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v1, "SCRAM-SHA1 is missing valid server response"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected evaluateChallenge([B)[B
    .locals 22
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 119
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 123
    .local v2, "challengeString":Ljava/lang/String;
    nop

    .line 125
    sget-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$2;->$SwitchMap$org$jivesoftware$smack$sasl$core$ScramMechanism$State:[I

    iget-object v4, v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->state:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->serverSignature:[B

    invoke-static {v4}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "clientCalculatedServerFinalMessage":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    sget-object v4, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->VALID_SERVER_RESPONSE:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    iput-object v4, v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->state:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    .line 222
    nop

    .line 226
    .end local v0    # "clientCalculatedServerFinalMessage":Ljava/lang/String;
    const/4 v0, 0x0

    return-object v0

    .line 219
    .restart local v0    # "clientCalculatedServerFinalMessage":Ljava/lang/String;
    :cond_0
    new-instance v4, Lorg/jivesoftware/smack/SmackException;

    const-string v5, "Server final message does not match calculated one"

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    .end local v0    # "clientCalculatedServerFinalMessage":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v4, "Invalid state"

    invoke-direct {v0, v4}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    move-object v4, v2

    .line 128
    .local v4, "serverFirstMessage":Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->parseAttributes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 131
    .local v5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const/16 v0, 0x72

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 132
    .local v6, "rvalue":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 135
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v7, v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->clientRandomAscii:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v0, v7, :cond_8

    .line 138
    const/4 v0, 0x0

    iget-object v7, v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->clientRandomAscii:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "receivedClientRandomAscii":Ljava/lang/String;
    iget-object v0, v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->clientRandomAscii:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    const/16 v0, 0x69

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 146
    .local v8, "iterationsString":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 150
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    .local v0, "iterations":I
    nop

    .line 157
    const/16 v9, 0x73

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 158
    .local v9, "salt":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 165
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "c="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->getCBindInput()[B

    move-result-object v11

    invoke-static {v11}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "channelBinding":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",r="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 170
    .local v11, "clientFinalMessageWithoutProof":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->clientFirstMessageBare:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x2c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->toBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 177
    .local v12, "authMessage":[B
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->password:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 179
    .local v13, "cacheKey":Ljava/lang/String;
    sget-object v14, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v14, v13}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;

    .line 180
    .local v14, "keys":Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;
    if-nez v14, :cond_3

    .line 182
    iget-object v15, v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->password:Ljava/lang/String;

    invoke-static {v15}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->saslPrep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v2

    .end local v2    # "challengeString":Ljava/lang/String;
    .local v16, "challengeString":Ljava/lang/String;
    invoke-static {v9}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v15, v2, v0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->hi(Ljava/lang/String;[BI)[B

    move-result-object v2

    .line 185
    .local v2, "saltedPassword":[B
    sget-object v15, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->SERVER_KEY_BYTES:[B

    invoke-direct {v1, v2, v15}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->hmac([B[B)[B

    move-result-object v15

    .line 188
    .local v15, "serverKey":[B
    move/from16 v17, v0

    .end local v0    # "iterations":I
    .local v17, "iterations":I
    sget-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->CLIENT_KEY_BYTES:[B

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->hmac([B[B)[B

    move-result-object v0

    .line 190
    .local v0, "clientKey":[B
    move-object/from16 v18, v2

    .end local v2    # "saltedPassword":[B
    .local v18, "saltedPassword":[B
    new-instance v2, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;

    invoke-direct {v2, v0, v15}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;-><init>([B[B)V

    move-object v14, v2

    .line 191
    sget-object v2, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->CACHE:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v2, v13, v14}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v18    # "saltedPassword":[B
    goto :goto_0

    .line 194
    .end local v15    # "serverKey":[B
    .end local v16    # "challengeString":Ljava/lang/String;
    .end local v17    # "iterations":I
    .local v0, "iterations":I
    .local v2, "challengeString":Ljava/lang/String;
    :cond_3
    move/from16 v17, v0

    move-object/from16 v16, v2

    .end local v0    # "iterations":I
    .end local v2    # "challengeString":Ljava/lang/String;
    .restart local v16    # "challengeString":Ljava/lang/String;
    .restart local v17    # "iterations":I
    invoke-static {v14}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;->access$000(Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;)[B

    move-result-object v15

    .line 195
    .restart local v15    # "serverKey":[B
    invoke-static {v14}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;->access$100(Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;)[B

    move-result-object v0

    .line 199
    .local v0, "clientKey":[B
    :goto_0
    invoke-direct {v1, v15, v12}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->hmac([B[B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->serverSignature:[B

    .line 202
    invoke-static {v0}, Lorg/jivesoftware/smack/util/SHA1;->bytes([B)[B

    move-result-object v2

    .line 205
    .local v2, "storedKey":[B
    invoke-direct {v1, v2, v12}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->hmac([B[B)[B

    move-result-object v18

    .line 208
    .local v18, "clientSignature":[B
    move-object/from16 v19, v2

    .end local v2    # "storedKey":[B
    .local v19, "storedKey":[B
    array-length v2, v0

    new-array v2, v2, [B

    .line 209
    .local v2, "clientProof":[B
    const/16 v20, 0x0

    move/from16 v3, v20

    .local v3, "i":I
    :goto_1
    move-object/from16 v20, v4

    .end local v4    # "serverFirstMessage":Ljava/lang/String;
    .local v20, "serverFirstMessage":Ljava/lang/String;
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 210
    aget-byte v4, v0, v3

    aget-byte v21, v18, v3

    xor-int v4, v4, v21

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 209
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v20

    goto :goto_1

    .line 213
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "clientFinalMessage":Ljava/lang/String;
    sget-object v4, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->RESPONSE_SENT:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    iput-object v4, v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->state:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    .line 215
    invoke-static {v3}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->toBytes(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4

    .line 159
    .end local v3    # "clientFinalMessage":Ljava/lang/String;
    .end local v10    # "channelBinding":Ljava/lang/String;
    .end local v11    # "clientFinalMessageWithoutProof":Ljava/lang/String;
    .end local v12    # "authMessage":[B
    .end local v13    # "cacheKey":Ljava/lang/String;
    .end local v14    # "keys":Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;
    .end local v15    # "serverKey":[B
    .end local v16    # "challengeString":Ljava/lang/String;
    .end local v17    # "iterations":I
    .end local v18    # "clientSignature":[B
    .end local v19    # "storedKey":[B
    .end local v20    # "serverFirstMessage":Ljava/lang/String;
    .local v0, "iterations":I
    .local v2, "challengeString":Ljava/lang/String;
    .restart local v4    # "serverFirstMessage":Ljava/lang/String;
    :cond_5
    move/from16 v17, v0

    move-object/from16 v16, v2

    .end local v0    # "iterations":I
    .end local v2    # "challengeString":Ljava/lang/String;
    .restart local v16    # "challengeString":Ljava/lang/String;
    .restart local v17    # "iterations":I
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "SALT not send"

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    .end local v9    # "salt":Ljava/lang/String;
    .end local v16    # "challengeString":Ljava/lang/String;
    .end local v17    # "iterations":I
    .restart local v2    # "challengeString":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v20, v4

    move-object v2, v0

    .end local v2    # "challengeString":Ljava/lang/String;
    .end local v4    # "serverFirstMessage":Ljava/lang/String;
    .restart local v16    # "challengeString":Ljava/lang/String;
    .restart local v20    # "serverFirstMessage":Ljava/lang/String;
    move-object v0, v2

    .line 153
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/jivesoftware/smack/SmackException;

    const-string v3, "Exception parsing iterations"

    invoke-direct {v2, v3, v0}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 147
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "challengeString":Ljava/lang/String;
    .end local v20    # "serverFirstMessage":Ljava/lang/String;
    .restart local v2    # "challengeString":Ljava/lang/String;
    .restart local v4    # "serverFirstMessage":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v2

    .end local v2    # "challengeString":Ljava/lang/String;
    .restart local v16    # "challengeString":Ljava/lang/String;
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "Iterations attribute not set"

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    .end local v8    # "iterationsString":Ljava/lang/String;
    .end local v16    # "challengeString":Ljava/lang/String;
    .restart local v2    # "challengeString":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v2

    .end local v2    # "challengeString":Ljava/lang/String;
    .restart local v16    # "challengeString":Ljava/lang/String;
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "Received client random ASCII does not match client random ASCII"

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    .end local v7    # "receivedClientRandomAscii":Ljava/lang/String;
    .end local v16    # "challengeString":Ljava/lang/String;
    .restart local v2    # "challengeString":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v2

    .end local v2    # "challengeString":Ljava/lang/String;
    .restart local v16    # "challengeString":Ljava/lang/String;
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "Server random ASCII is shorter then client random ASCII"

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    .end local v16    # "challengeString":Ljava/lang/String;
    .restart local v2    # "challengeString":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v2

    .end local v2    # "challengeString":Ljava/lang/String;
    .restart local v16    # "challengeString":Ljava/lang/String;
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "Server random ASCII is null"

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    .end local v4    # "serverFirstMessage":Ljava/lang/String;
    .end local v5    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    .end local v6    # "rvalue":Ljava/lang/String;
    .end local v16    # "challengeString":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method protected getAuthenticationText()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->getRandomAscii()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->clientRandomAscii:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->authenticationId:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->saslPrep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "saslPrepedAuthcId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->clientRandomAscii:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->clientFirstMessageBare:Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->getGS2Header()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->clientFirstMessageBare:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "clientFirstMessage":Ljava/lang/String;
    sget-object v2, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->AUTH_TEXT_SENT:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    iput-object v2, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->state:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    .line 93
    invoke-static {v1}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method protected getChannelBindingData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getChannelBindingName()Ljava/lang/String;
    .locals 3

    .line 256
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->sslSession:Ljavax/net/ssl/SSLSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->connectionConfiguration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-PLUS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isEnabledSaslMechanism(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "y"

    return-object v0

    .line 261
    :cond_0
    const-string v0, "n"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCRAM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->scramHmac:Lorg/jivesoftware/smack/sasl/core/ScramHmac;

    invoke-interface {v1}, Lorg/jivesoftware/smack/sasl/core/ScramHmac;->getHmacName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method getRandomAscii()Ljava/lang/String;
    .locals 7

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "count":I
    const/16 v1, 0x20

    new-array v2, v1, [C

    .line 305
    .local v2, "randomAscii":[C
    sget-object v3, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->SECURE_RANDOM:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Random;

    .line 306
    .local v3, "random":Ljava/util/Random;
    :goto_0
    if-ge v0, v1, :cond_1

    .line 307
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 308
    .local v4, "r":I
    int-to-char v5, v4

    .line 310
    .local v5, "c":C
    invoke-static {v5}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->isPrintableNonCommaAsciiChar(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 311
    goto :goto_0

    .line 313
    :cond_0
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "count":I
    .local v6, "count":I
    aput-char v5, v2, v0

    .line 314
    .end local v4    # "r":I
    .end local v5    # "c":C
    move v0, v6

    goto :goto_0

    .line 315
    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
