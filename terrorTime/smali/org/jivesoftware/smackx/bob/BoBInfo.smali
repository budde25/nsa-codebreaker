.class public Lorg/jivesoftware/smackx/bob/BoBInfo;
.super Ljava/lang/Object;
.source "BoBInfo.java"


# instance fields
.field private final data:Lorg/jivesoftware/smackx/bob/BoBData;

.field private final hashes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/bob/BoBHash;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lorg/jivesoftware/smackx/bob/BoBData;)V
    .locals 0
    .param p2, "data"    # Lorg/jivesoftware/smackx/bob/BoBData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/bob/BoBHash;",
            ">;",
            "Lorg/jivesoftware/smackx/bob/BoBData;",
            ")V"
        }
    .end annotation

    .line 26
    .local p1, "hashes":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smackx/bob/BoBHash;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/jivesoftware/smackx/bob/BoBInfo;->hashes:Ljava/util/Set;

    .line 28
    iput-object p2, p0, Lorg/jivesoftware/smackx/bob/BoBInfo;->data:Lorg/jivesoftware/smackx/bob/BoBData;

    .line 29
    return-void
.end method


# virtual methods
.method public getData()Lorg/jivesoftware/smackx/bob/BoBData;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBInfo;->data:Lorg/jivesoftware/smackx/bob/BoBData;

    return-object v0
.end method

.method public getHashes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/bob/BoBHash;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBInfo;->hashes:Ljava/util/Set;

    return-object v0
.end method
