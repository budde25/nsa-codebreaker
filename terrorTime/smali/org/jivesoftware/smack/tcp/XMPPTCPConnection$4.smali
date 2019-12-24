.class Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$4;
.super Ljava/lang/Object;
.source "XMPPTCPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->processHandledCount(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

.field final synthetic val$ackedStanzas:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 2048
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$4;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iput-object p2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$4;->val$ackedStanzas:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2051
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$4;->val$ackedStanzas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/Stanza;

    .line 2052
    .local v1, "ackedStanza":Lorg/jivesoftware/smack/packet/Stanza;
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$4;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$5500(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "Received exception"

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/StanzaListener;

    .line 2054
    .local v3, "listener":Lorg/jivesoftware/smack/StanzaListener;
    :try_start_0
    invoke-interface {v3, v1}, Lorg/jivesoftware/smack/StanzaListener;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NotLoggedInException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2058
    goto :goto_3

    .line 2056
    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v5

    .line 2057
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2059
    .end local v3    # "listener":Lorg/jivesoftware/smack/StanzaListener;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_1

    .line 2060
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Stanza;->getStanzaId()Ljava/lang/String;

    move-result-object v2

    .line 2061
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2062
    goto :goto_0

    .line 2064
    :cond_1
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$4;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$5400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/StanzaListener;

    .line 2065
    .restart local v3    # "listener":Lorg/jivesoftware/smack/StanzaListener;
    if-eqz v3, :cond_2

    .line 2067
    :try_start_1
    invoke-interface {v3, v1}, Lorg/jivesoftware/smack/StanzaListener;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/jivesoftware/smack/SmackException$NotLoggedInException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2071
    goto :goto_5

    .line 2069
    :catch_3
    move-exception v5

    goto :goto_4

    :catch_4
    move-exception v5

    goto :goto_4

    :catch_5
    move-exception v5

    .line 2070
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2073
    .end local v1    # "ackedStanza":Lorg/jivesoftware/smack/packet/Stanza;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "listener":Lorg/jivesoftware/smack/StanzaListener;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_5
    goto :goto_0

    .line 2074
    :cond_3
    return-void
.end method
