.class Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$2;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "BlockingCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "arg3"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 100
    iput-object p1, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$2;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 103
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/blocking/element/BlockContactsIQ;

    .line 105
    .local v0, "blockContactIQ":Lorg/jivesoftware/smackx/blocking/element/BlockContactsIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$2;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->access$000(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$2;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->access$002(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;Ljava/util/List;)Ljava/util/List;

    .line 109
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/blocking/element/BlockContactsIQ;->getJids()Ljava/util/List;

    move-result-object v1

    .line 110
    .local v1, "blockedJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    iget-object v2, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$2;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->access$000(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object v2, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$2;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->access$100(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/blocking/JidsBlockedListener;

    .line 113
    .local v3, "listener":Lorg/jivesoftware/smackx/blocking/JidsBlockedListener;
    invoke-interface {v3, v1}, Lorg/jivesoftware/smackx/blocking/JidsBlockedListener;->onJidsBlocked(Ljava/util/List;)V

    .line 114
    .end local v3    # "listener":Lorg/jivesoftware/smackx/blocking/JidsBlockedListener;
    goto :goto_0

    .line 116
    :cond_1
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    return-object v2
.end method
