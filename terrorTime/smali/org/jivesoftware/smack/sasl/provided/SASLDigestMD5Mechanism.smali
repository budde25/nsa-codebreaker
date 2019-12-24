.class public Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;
.super Lorg/jivesoftware/smack/sasl/SASLMechanism;
.source "SASLDigestMD5Mechanism.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$DigestType;,
        Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INITAL_NONCE:Ljava/lang/String; = "00000001"

.field public static final NAME:Ljava/lang/String; = "DIGEST-MD5"

.field private static final QOP_VALUE:Ljava/lang/String; = "auth"

.field private static verifyServerResponse:Z


# instance fields
.field private cnonce:Ljava/lang/String;

.field private digestUri:Ljava/lang/String;

.field private hex_hashed_a1:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private state:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    nop

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->verifyServerResponse:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;-><init>()V

    .line 55
    sget-object v0, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;->INITIAL:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->state:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;

    return-void
.end method

.method private calcResponse(Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$DigestType;)Ljava/lang/String;
    .locals 5
    .param p1, "digestType"    # Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$DigestType;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, "a2":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$DigestType;->ClientResponse:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$DigestType;

    if-ne p1, v1, :cond_0

    .line 216
    const-string v1, "AUTHENTICATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    iget-object v2, p0, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->digestUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/MD5;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "hex_hashed_a2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v3, "kd_argument":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->hex_hashed_a1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    iget-object v4, p0, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->nonce:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    const-string v4, "00000001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    iget-object v4, p0, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->cnonce:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    const-string v4, "auth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/MD5;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 235
    .local v1, "kd":[B
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "responseValue":Ljava/lang/String;
    return-object v4
.end method

.method public static quoteBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 251
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setVerifyServerResponse(Z)V
    .locals 0
    .param p0, "verifyServerResponse"    # Z

    .line 49
    sput-boolean p0, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->verifyServerResponse:Z

    .line 50
    return-void
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

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CallbackHandler not (yet) supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authzidSupported()Z
    .locals 1

    .line 90
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

    .line 96
    sget-boolean v0, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->verifyServerResponse:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->state:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;

    sget-object v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;->VALID_SERVER_RESPONSE:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v1, "DIGEST-MD5 no valid server response"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method protected evaluateChallenge([B)[B
    .locals 16
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 103
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    array-length v0, v2

    if-eqz v0, :cond_e

    .line 108
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v0, "challengeString":Ljava/lang/String;
    nop

    .line 113
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "challengeParts":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 115
    .local v4, "response":[B
    sget-object v5, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$1;->$SwitchMap$org$jivesoftware$smack$sasl$provided$SASLDigestMD5Mechanism$State:[I

    iget-object v6, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->state:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const-string v6, "="

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v5, v9, :cond_6

    if-ne v5, v7, :cond_5

    .line 178
    sget-boolean v5, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->verifyServerResponse:Z

    if-eqz v5, :cond_4

    .line 179
    const/4 v5, 0x0

    .line 180
    .local v5, "serverResponse":Ljava/lang/String;
    array-length v7, v3

    move v10, v8

    :goto_0
    if-ge v10, v7, :cond_1

    aget-object v11, v3, v10

    .line 181
    .local v11, "part":Ljava/lang/String;
    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 182
    .local v12, "keyValue":[Ljava/lang/String;
    nop

    .line 183
    aget-object v13, v12, v8

    .line 184
    .local v13, "key":Ljava/lang/String;
    aget-object v14, v12, v9

    .line 185
    .local v14, "value":Ljava/lang/String;
    const-string v15, "rspauth"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 186
    move-object v5, v14

    .line 187
    goto :goto_1

    .line 180
    .end local v11    # "part":Ljava/lang/String;
    .end local v12    # "keyValue":[Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 190
    :cond_1
    :goto_1
    if-eqz v5, :cond_3

    .line 194
    sget-object v6, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$DigestType;->ServerResponse:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$DigestType;

    invoke-direct {v1, v6}, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->calcResponse(Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$DigestType;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "expectedServerResponse":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 196
    :cond_2
    new-instance v7, Lorg/jivesoftware/smack/SmackException;

    const-string v8, "Invalid server response  while performing DIGEST-MD5 authentication"

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 191
    .end local v6    # "expectedServerResponse":Ljava/lang/String;
    :cond_3
    new-instance v6, Lorg/jivesoftware/smack/SmackException;

    const-string v7, "No server response received while performing DIGEST-MD5 authentication"

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 200
    .end local v5    # "serverResponse":Ljava/lang/String;
    :cond_4
    :goto_2
    sget-object v5, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;->VALID_SERVER_RESPONSE:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;

    iput-object v5, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->state:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;

    .line 201
    goto/16 :goto_6

    .line 203
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 117
    :cond_6
    array-length v5, v3

    move v10, v8

    :goto_3
    if-ge v10, v5, :cond_b

    aget-object v11, v3, v10

    .line 118
    .restart local v11    # "part":Ljava/lang/String;
    invoke-virtual {v11, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 119
    .restart local v12    # "keyValue":[Ljava/lang/String;
    aget-object v13, v12, v8

    .line 126
    .restart local v13    # "key":Ljava/lang/String;
    const-string v14, ""

    const-string v15, "^\\s+"

    invoke-virtual {v13, v15, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 127
    aget-object v15, v12, v9

    .line 128
    .local v15, "value":Ljava/lang/String;
    const-string v7, "nonce"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "\""

    if-eqz v7, :cond_8

    .line 129
    iget-object v7, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->nonce:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 132
    invoke-virtual {v15, v8, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->nonce:Ljava/lang/String;

    goto :goto_4

    .line 130
    :cond_7
    new-instance v5, Lorg/jivesoftware/smack/SmackException;

    const-string v6, "Nonce value present multiple times"

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    :cond_8
    const-string v7, "qop"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 135
    invoke-virtual {v15, v8, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .end local v15    # "value":Ljava/lang/String;
    .local v7, "value":Ljava/lang/String;
    const-string v8, "auth"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_4

    .line 137
    :cond_9
    new-instance v5, Lorg/jivesoftware/smack/SmackException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported qop operation: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    .end local v7    # "value":Ljava/lang/String;
    .end local v11    # "part":Ljava/lang/String;
    .end local v12    # "keyValue":[Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    goto :goto_3

    .line 141
    :cond_b
    iget-object v5, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->nonce:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->authenticationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->serviceName:Lorg/jxmpp/jid/DomainBareJid;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->password:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jivesoftware/smack/util/MD5;->bytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 150
    .local v5, "a1FirstPart":[B
    const/16 v7, 0x20

    invoke-static {v7}, Lorg/jivesoftware/smack/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->cnonce:Ljava/lang/String;

    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->nonce:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->cnonce:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->toBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v5, v6}, Lorg/jivesoftware/smack/util/ByteUtils;->concat([B[B)[B

    move-result-object v6

    .line 152
    .local v6, "a1":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xmpp/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->serviceName:Lorg/jxmpp/jid/DomainBareJid;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->digestUri:Ljava/lang/String;

    .line 153
    invoke-static {v6}, Lorg/jivesoftware/smack/util/MD5;->bytes([B)[B

    move-result-object v7

    invoke-static {v7}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->hex_hashed_a1:Ljava/lang/String;

    .line 154
    sget-object v7, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$DigestType;->ClientResponse:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$DigestType;

    invoke-direct {v1, v7}, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->calcResponse(Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$DigestType;)Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "responseValue":Ljava/lang/String;
    iget-object v8, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->authorizationId:Lorg/jxmpp/jid/EntityBareJid;

    const/16 v9, 0x22

    if-nez v8, :cond_c

    .line 159
    const-string v8, ""

    .local v8, "authzid":Ljava/lang/String;
    goto :goto_5

    .line 161
    .end local v8    # "authzid":Ljava/lang/String;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",authzid=\""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->authorizationId:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 163
    .restart local v8    # "authzid":Ljava/lang/String;
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "username=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->authenticationId:Ljava/lang/String;

    invoke-static {v11}, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->quoteBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",realm=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->serviceName:Lorg/jxmpp/jid/DomainBareJid;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v11, ",nonce=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->nonce:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v11, ",cnonce=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->cnonce:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v11, ",nc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "00000001"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",qop=auth,digest-uri=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->digestUri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, ",response="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",charset=utf-8"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, "saslString":Ljava/lang/String;
    invoke-static {v9}, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->toBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 175
    sget-object v10, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;->RESPONSE_SENT:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;

    iput-object v10, v1, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->state:Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism$State;

    .line 176
    nop

    .line 205
    .end local v5    # "a1FirstPart":[B
    .end local v6    # "a1":[B
    .end local v7    # "responseValue":Ljava/lang/String;
    .end local v8    # "authzid":Ljava/lang/String;
    .end local v9    # "saslString":Ljava/lang/String;
    :goto_6
    return-object v4

    .line 145
    :cond_d
    new-instance v5, Lorg/jivesoftware/smack/SmackException;

    const-string v6, "nonce value not present in initial challenge"

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    .end local v0    # "challengeString":Ljava/lang/String;
    .end local v3    # "challengeParts":[Ljava/lang/String;
    .end local v4    # "response":[B
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 104
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_e
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v3, "Initial challenge has zero length"

    invoke-direct {v0, v3}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getAuthenticationText()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "DIGEST-MD5"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 80
    const/16 v0, 0xd2

    return v0
.end method

.method public bridge synthetic newInstance()Lorg/jivesoftware/smack/sasl/SASLMechanism;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;->newInstance()Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;
    .locals 1

    .line 85
    new-instance v0, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;

    invoke-direct {v0}, Lorg/jivesoftware/smack/sasl/provided/SASLDigestMD5Mechanism;-><init>()V

    return-object v0
.end method
