.class public final enum Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
.super Ljava/lang/Enum;
.source "HashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/hashes/HashManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ALGORITHM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum BLAKE2B160:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum BLAKE2B256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum BLAKE2B384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum BLAKE2B512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum MD5:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum SHA3_224:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum SHA3_256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum SHA3_384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum SHA3_512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum SHA_1:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum SHA_224:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum SHA_256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum SHA_384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

.field public static final enum SHA_512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;


# instance fields
.field private final name:Ljava/lang/String;

.field private final recommendation:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 154
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->must_not:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v2, 0x0

    const-string v3, "MD5"

    const-string v4, "md5"

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->MD5:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 155
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->should_not:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v3, 0x1

    const-string v4, "SHA_1"

    const-string v5, "sha-1"

    invoke-direct {v0, v4, v3, v5, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_1:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 156
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->unknown:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v4, 0x2

    const-string v5, "SHA_224"

    const-string v6, "sha-224"

    invoke-direct {v0, v5, v4, v6, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_224:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 157
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->must:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v5, 0x3

    const-string v6, "SHA_256"

    const-string v7, "sha-256"

    invoke-direct {v0, v6, v5, v7, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 158
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->unknown:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v6, 0x4

    const-string v7, "SHA_384"

    const-string v8, "sha-384"

    invoke-direct {v0, v7, v6, v8, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 159
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->should:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v7, 0x5

    const-string v8, "SHA_512"

    const-string v9, "sha-512"

    invoke-direct {v0, v8, v7, v9, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 160
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->unknown:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v8, 0x6

    const-string v9, "SHA3_224"

    const-string v10, "sha3-224"

    invoke-direct {v0, v9, v8, v10, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_224:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 161
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->must:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v9, 0x7

    const-string v10, "SHA3_256"

    const-string v11, "sha3-256"

    invoke-direct {v0, v10, v9, v11, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 162
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->unknown:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/16 v10, 0x8

    const-string v11, "SHA3_384"

    const-string v12, "sha3-384"

    invoke-direct {v0, v11, v10, v12, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 163
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->should:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/16 v11, 0x9

    const-string v12, "SHA3_512"

    const-string v13, "sha3-512"

    invoke-direct {v0, v12, v11, v13, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 164
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->unknown:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/16 v12, 0xa

    const-string v13, "BLAKE2B160"

    const-string v14, "id-blake2b160"

    invoke-direct {v0, v13, v12, v14, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B160:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 165
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->must:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/16 v13, 0xb

    const-string v14, "BLAKE2B256"

    const-string v15, "id-blake2b256"

    invoke-direct {v0, v14, v13, v15, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 166
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->unknown:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/16 v14, 0xc

    const-string v15, "BLAKE2B384"

    const-string v13, "id-blake2b384"

    invoke-direct {v0, v15, v14, v13, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 167
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->should:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/16 v13, 0xd

    const-string v15, "BLAKE2B512"

    const-string v14, "id-blake2b512"

    invoke-direct {v0, v15, v13, v14, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    .line 153
    const/16 v0, 0xe

    new-array v0, v0, [Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->MD5:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_1:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_224:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA_512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_224:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->SHA3_512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B160:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v12

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B256:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B384:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->BLAKE2B512:Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    aput-object v1, v0, v13

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->$VALUES:[Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "recommendation"    # Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;",
            ")V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput-object p3, p0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->name:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->recommendation:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    .line 175
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 153
    const-class v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    return-object v0
.end method

.method public static valueOfName(Ljava/lang/String;)Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 198
    invoke-static {}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->values()[Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 199
    .local v3, "a":Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    return-object v3

    .line 198
    .end local v3    # "a":Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ALGORITHM enum with this name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;
    .locals 1

    .line 153
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->$VALUES:[Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    return-object v0
.end method


# virtual methods
.method public getRecommendation()Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->recommendation:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->name:Ljava/lang/String;

    return-object v0
.end method
