.class public final enum Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;
.super Ljava/lang/Enum;
.source "HashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/hashes/HashManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NAMESPACE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

.field public static final enum V1:Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

.field public static final enum V2:Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;


# instance fields
.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    const/4 v1, 0x0

    const-string v2, "V1"

    const-string v3, "urn:xmpp:hashes:1"

    invoke-direct {v0, v2, v1, v3}, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->V1:Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    .line 70
    new-instance v0, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    const/4 v2, 0x1

    const-string v3, "V2"

    const-string v4, "urn:xmpp:hashes:2"

    invoke-direct {v0, v3, v2, v4}, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->V2:Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    sget-object v3, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->V1:Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->V2:Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->$VALUES:[Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 68
    const-class v0, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;
    .locals 1

    .line 68
    sget-object v0, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->$VALUES:[Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smackx/hashes/HashManager$NAMESPACE;->name:Ljava/lang/String;

    return-object v0
.end method
