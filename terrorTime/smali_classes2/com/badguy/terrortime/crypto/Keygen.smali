.class public Lcom/badguy/terrortime/crypto/Keygen;
.super Ljava/lang/Object;
.source "Keygen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePublicPrivateKeys()Landroid/support/v4/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    const-string v0, "alg1"

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/badguy/terrortime/crypto/Keygen;->generateRsaKeyPair(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 10
    .local v0, "keys":Ljava/lang/String;
    const-string v1, "\n\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 11
    .local v1, "keypair":[Ljava/lang/String;
    new-instance v2, Landroid/support/v4/util/Pair;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static native generateRsaKeyPair(Ljava/lang/String;I)Ljava/lang/String;
.end method
