.class public final Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;
.super Ljava/lang/Object;
.source "MamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/mam/MamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MamQueryPage"
.end annotation


# instance fields
.field private final forwardedMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/forward/packet/Forwarded;",
            ">;"
        }
    .end annotation
.end field

.field private final mamFin:Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

.field private final mamResultCarrierMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mamResultExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smack/StanzaCollector;Lorg/jivesoftware/smackx/mam/element/MamFinIQ;)V
    .locals 9
    .param p1, "stanzaCollector"    # Lorg/jivesoftware/smack/StanzaCollector;
    .param p2, "mamFin"    # Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p2, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->mamFin:Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    .line 1023
    invoke-virtual {p1}, Lorg/jivesoftware/smack/StanzaCollector;->getCollectedStanzasAfterCancelled()Ljava/util/List;

    move-result-object v0

    .line 1025
    .local v0, "mamResultCarrierStanzas":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Stanza;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1026
    .local v1, "mamResultCarrierMessages":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Message;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1027
    .local v2, "mamResultExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1029
    .local v3, "forwardedMessages":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/forward/packet/Forwarded;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/packet/Stanza;

    .line 1030
    .local v5, "mamResultStanza":Lorg/jivesoftware/smack/packet/Stanza;
    move-object v6, v5

    check-cast v6, Lorg/jivesoftware/smack/packet/Message;

    .line 1032
    .local v6, "resultMessage":Lorg/jivesoftware/smack/packet/Message;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    invoke-static {v6}, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;

    move-result-object v7

    .line 1035
    .local v7, "mamResultExtension":Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->getForwarded()Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    .end local v5    # "mamResultStanza":Lorg/jivesoftware/smack/packet/Stanza;
    .end local v6    # "resultMessage":Lorg/jivesoftware/smack/packet/Message;
    .end local v7    # "mamResultExtension":Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;
    goto :goto_0

    .line 1040
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->mamResultCarrierMessages:Ljava/util/List;

    .line 1041
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->mamResultExtensions:Ljava/util/List;

    .line 1042
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->forwardedMessages:Ljava/util/List;

    .line 1043
    invoke-static {v3}, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->extractMessagesFrom(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->messages:Ljava/util/List;

    .line 1044
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/StanzaCollector;Lorg/jivesoftware/smackx/mam/element/MamFinIQ;Lorg/jivesoftware/smackx/mam/MamManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smack/StanzaCollector;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/mam/element/MamFinIQ;
    .param p3, "x2"    # Lorg/jivesoftware/smackx/mam/MamManager$1;

    .line 1013
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;-><init>(Lorg/jivesoftware/smack/StanzaCollector;Lorg/jivesoftware/smackx/mam/element/MamFinIQ;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    .line 1013
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->forwardedMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;)Lorg/jivesoftware/smackx/mam/element/MamFinIQ;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    .line 1013
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->mamFin:Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    .line 1013
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->messages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    .line 1013
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->mamResultExtensions:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getForwarded()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/forward/packet/Forwarded;",
            ">;"
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->forwardedMessages:Ljava/util/List;

    return-object v0
.end method

.method public getMamFinIq()Lorg/jivesoftware/smackx/mam/element/MamFinIQ;
    .locals 1

    .line 1063
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->mamFin:Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    return-object v0
.end method

.method public getMamResultCarrierMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation

    .line 1059
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->mamResultCarrierMessages:Ljava/util/List;

    return-object v0
.end method

.method public getMamResultExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;",
            ">;"
        }
    .end annotation

    .line 1055
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->mamResultExtensions:Ljava/util/List;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->messages:Ljava/util/List;

    return-object v0
.end method
