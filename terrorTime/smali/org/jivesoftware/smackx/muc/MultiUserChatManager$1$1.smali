.class Lorg/jivesoftware/smackx/muc/MultiUserChatManager$1$1;
.super Lorg/jivesoftware/smackx/disco/AbstractNodeInformationProvider;
.source "MultiUserChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChatManager$1;->connectionCreated(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager$1;

.field final synthetic val$weakRefConnection:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChatManager$1;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/muc/MultiUserChatManager$1;

    .line 98
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$1$1;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager$1;

    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$1$1;->val$weakRefConnection:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lorg/jivesoftware/smackx/disco/AbstractNodeInformationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNodeItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$1$1;->val$weakRefConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/XMPPConnection;

    .line 102
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 104
    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->getJoinedRooms()Ljava/util/Set;

    move-result-object v1

    .line 105
    .local v1, "joinedRooms":Ljava/util/Set;, "Ljava/util/Set<Lorg/jxmpp/jid/EntityBareJid;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jxmpp/jid/EntityBareJid;

    .line 107
    .local v4, "room":Lorg/jxmpp/jid/EntityBareJid;
    new-instance v5, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    invoke-direct {v5, v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;-><init>(Lorg/jxmpp/jid/Jid;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v4    # "room":Lorg/jxmpp/jid/EntityBareJid;
    goto :goto_0

    .line 109
    :cond_1
    return-object v2
.end method
