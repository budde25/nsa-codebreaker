.class Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "MultiUserChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChatManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    .line 186
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resumed"    # Z

    .line 189
    if-eqz p2, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->access$300(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->getJoinedRooms()Ljava/util/Set;

    move-result-object v0

    .line 193
    .local v0, "mucs":Ljava/util/Set;, "Ljava/util/Set<Lorg/jxmpp/jid/EntityBareJid;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 195
    :cond_2
    new-instance v1, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3$1;

    invoke-direct {v1, p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3$1;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;Ljava/util/Set;)V

    invoke-static {v1}, Lorg/jivesoftware/smack/util/Async;->go(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 232
    return-void
.end method
