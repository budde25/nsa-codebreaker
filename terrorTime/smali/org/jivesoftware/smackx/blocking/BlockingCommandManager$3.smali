.class Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$3;
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

    .line 122
    iput-object p1, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$3;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 125
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;

    .line 127
    .local v0, "unblockContactIQ":Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$3;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->access$000(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$3;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->access$002(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;Ljava/util/List;)Ljava/util/List;

    .line 131
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;->getJids()Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, "unblockedJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    if-nez v1, :cond_2

    .line 133
    iget-object v2, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$3;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->access$000(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 134
    iget-object v2, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$3;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->access$200(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/blocking/AllJidsUnblockedListener;

    .line 135
    .local v3, "listener":Lorg/jivesoftware/smackx/blocking/AllJidsUnblockedListener;
    invoke-interface {v3}, Lorg/jivesoftware/smackx/blocking/AllJidsUnblockedListener;->onAllJidsUnblocked()V

    .line 136
    .end local v3    # "listener":Lorg/jivesoftware/smackx/blocking/AllJidsUnblockedListener;
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 138
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$3;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->access$000(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v2, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$3;->this$0:Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->access$300(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/blocking/JidsUnblockedListener;

    .line 140
    .local v3, "listener":Lorg/jivesoftware/smackx/blocking/JidsUnblockedListener;
    invoke-interface {v3, v1}, Lorg/jivesoftware/smackx/blocking/JidsUnblockedListener;->onJidsUnblocked(Ljava/util/List;)V

    .line 141
    .end local v3    # "listener":Lorg/jivesoftware/smackx/blocking/JidsUnblockedListener;
    goto :goto_1

    .line 144
    :cond_3
    :goto_2
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    return-object v2
.end method
