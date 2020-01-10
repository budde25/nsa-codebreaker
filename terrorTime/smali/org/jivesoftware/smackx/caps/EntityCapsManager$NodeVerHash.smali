.class public Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;
.super Ljava/lang/Object;
.source "EntityCapsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/caps/EntityCapsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeVerHash"
.end annotation


# instance fields
.field private hash:Ljava/lang/String;

.field private node:Ljava/lang/String;

.field private nodeVer:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "ver"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    iput-object p1, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->node:Ljava/lang/String;

    .line 788
    iput-object p2, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->ver:Ljava/lang/String;

    .line 789
    iput-object p3, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->hash:Ljava/lang/String;

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->nodeVer:Ljava/lang/String;

    .line 791
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;)V
    .locals 2
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "capsVersionAndHash"    # Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

    .line 783
    iget-object v0, p2, Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;->version:Ljava/lang/String;

    iget-object v1, p2, Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;->hash:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;

    .line 776
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->nodeVer:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 1

    .line 802
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 798
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeVer()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->nodeVer:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 806
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->ver:Ljava/lang/String;

    return-object v0
.end method
