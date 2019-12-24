.class Lorg/jivesoftware/smack/AbstractXMPPConnection$7;
.super Ljava/lang/Object;
.source "AbstractXMPPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/AbstractXMPPConnection;->invokeStanzaCollectorsAndNotifyRecvListeners(Lorg/jivesoftware/smack/packet/Stanza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

.field final synthetic val$listenersToNotify:Ljava/util/Collection;

.field final synthetic val$packet:Lorg/jivesoftware/smack/packet/Stanza;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/util/Collection;Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 1266
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$7;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iput-object p2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$7;->val$listenersToNotify:Ljava/util/Collection;

    iput-object p3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$7;->val$packet:Lorg/jivesoftware/smack/packet/Stanza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1269
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$7;->val$listenersToNotify:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/StanzaListener;

    .line 1271
    .local v1, "listener":Lorg/jivesoftware/smack/StanzaListener;
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$7;->val$packet:Lorg/jivesoftware/smack/packet/Stanza;

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/StanzaListener;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    goto :goto_1

    .line 1275
    :catch_0
    move-exception v2

    .line 1276
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->access$000()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Exception in packet listener"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1278
    .end local v1    # "listener":Lorg/jivesoftware/smack/StanzaListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 1272
    .restart local v1    # "listener":Lorg/jivesoftware/smack/StanzaListener;
    :catch_1
    move-exception v0

    .line 1273
    .local v0, "e":Lorg/jivesoftware/smack/SmackException$NotConnectedException;
    invoke-static {}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Got not connected exception, aborting"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1274
    nop

    .line 1279
    .end local v0    # "e":Lorg/jivesoftware/smack/SmackException$NotConnectedException;
    .end local v1    # "listener":Lorg/jivesoftware/smack/StanzaListener;
    :cond_0
    return-void
.end method
