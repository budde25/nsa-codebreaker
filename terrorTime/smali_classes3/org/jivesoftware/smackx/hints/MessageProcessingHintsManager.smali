.class public Lorg/jivesoftware/smackx/hints/MessageProcessingHintsManager;
.super Ljava/lang/Object;
.source "MessageProcessingHintsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHintsFrom(Lorg/jivesoftware/smack/packet/Message;)Ljava/util/Set;
    .locals 7
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/Message;",
            ")",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;",
            ">;"
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "hints":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;>;"
    invoke-static {p0}, Lorg/jivesoftware/smackx/hints/element/NoCopyHint;->hasHint(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v1

    .line 37
    .local v1, "noCopyHint":Z
    if-eqz v1, :cond_0

    .line 38
    new-instance v2, Ljava/util/HashSet;

    invoke-static {}, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->values()[Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v2

    .line 39
    sget-object v2, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->no_copy:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    invoke-static {p0}, Lorg/jivesoftware/smackx/hints/element/NoPermanentStoreHint;->hasHint(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v2

    .line 43
    .local v2, "noPermanentStoreHint":Z
    if-eqz v2, :cond_2

    .line 44
    if-nez v0, :cond_1

    .line 45
    new-instance v3, Ljava/util/HashSet;

    invoke-static {}, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->values()[Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    move-result-object v4

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v3

    .line 47
    :cond_1
    sget-object v3, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->no_permanent_store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_2
    invoke-static {p0}, Lorg/jivesoftware/smackx/hints/element/NoStoreHint;->hasHint(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v3

    .line 51
    .local v3, "noStoreHint":Z
    if-eqz v3, :cond_4

    .line 52
    if-nez v0, :cond_3

    .line 53
    new-instance v4, Ljava/util/HashSet;

    invoke-static {}, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->values()[Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    move-result-object v5

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v4

    .line 55
    :cond_3
    sget-object v4, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->no_store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_4
    invoke-static {p0}, Lorg/jivesoftware/smackx/hints/element/StoreHint;->hasHint(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v4

    .line 59
    .local v4, "storeHint":Z
    if-eqz v4, :cond_6

    .line 60
    if-nez v0, :cond_5

    .line 61
    new-instance v5, Ljava/util/HashSet;

    invoke-static {}, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->values()[Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    move-result-object v6

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v5

    .line 63
    :cond_5
    sget-object v5, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_6
    if-nez v0, :cond_7

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    return-object v5

    .line 70
    :cond_7
    return-object v0
.end method
