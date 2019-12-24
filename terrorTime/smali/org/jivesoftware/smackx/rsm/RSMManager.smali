.class public Lorg/jivesoftware/smackx/rsm/RSMManager;
.super Ljava/lang/Object;
.source "RSMManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method continuePage(ILjava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;"
        }
    .end annotation

    .line 38
    .local p2, "returnedExtensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/rsm/RSMManager;->continuePage(ILjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method continuePage(ILjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;"
        }
    .end annotation

    .line 44
    .local p2, "returnedExtensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    .local p3, "additionalExtensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    if-eqz p2, :cond_2

    .line 47
    if-nez p3, :cond_0

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object p3, v0

    .line 50
    :cond_0
    const-string v0, "set"

    const-string v1, "http://jabber.org/protocol/rsm"

    invoke-static {p2, v0, v1}, Lorg/jivesoftware/smack/util/PacketUtil;->extensionElementFrom(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    .line 51
    .local v0, "resultRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    if-eqz v0, :cond_1

    .line 54
    new-instance v1, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;->getLast()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;->after:Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;

    invoke-direct {v1, p1, v2, v3}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;-><init>(ILjava/lang/String;Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;)V

    .line 55
    .local v1, "continuePageRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    return-object p3

    .line 52
    .end local v1    # "continuePageRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "returnedExtensions did not contain a RSMset"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0    # "resultRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "returnedExtensions must no be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method page(I)Ljava/util/Collection;
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 33
    .local v0, "packetExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    new-instance v1, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-object v0
.end method
