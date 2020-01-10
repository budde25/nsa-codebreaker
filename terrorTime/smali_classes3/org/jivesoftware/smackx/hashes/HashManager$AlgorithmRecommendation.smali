.class final enum Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;
.super Ljava/lang/Enum;
.source "HashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/hashes/HashManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AlgorithmRecommendation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

.field public static final enum must:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

.field public static final enum must_not:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

.field public static final enum should:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

.field public static final enum should_not:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

.field public static final enum unknown:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 146
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v1, 0x0

    const-string v2, "unknown"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->unknown:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    .line 147
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v2, 0x1

    const-string v3, "must_not"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->must_not:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    .line 148
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v3, 0x2

    const-string v4, "should_not"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->should_not:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    .line 149
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v4, 0x3

    const-string v5, "should"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->should:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    .line 150
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    const/4 v5, 0x4

    const-string v6, "must"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->must:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    .line 145
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    sget-object v6, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->unknown:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    aput-object v6, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->must_not:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->should_not:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->should:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->must:Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->$VALUES:[Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 145
    const-class v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;
    .locals 1

    .line 145
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->$VALUES:[Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/hashes/HashManager$AlgorithmRecommendation;

    return-object v0
.end method
