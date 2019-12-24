.class Lorg/jivesoftware/smackx/jingle/JingleManager$1;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "JingleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/JingleManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/jingle/JingleManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "arg3"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 76
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager$1;->this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 11
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 79
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 81
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asFullJidOrThrow()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    .line 82
    .local v1, "fullFrom":Lorg/jxmpp/jid/FullJid;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getSid()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "sid":Ljava/lang/String;
    new-instance v3, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;

    invoke-direct {v3, v1, v2}, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;-><init>(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)V

    .line 85
    .local v3, "fullJidAndSessionId":Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/JingleManager$1;->this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;

    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/JingleManager;->access$000(Lorg/jivesoftware/smackx/jingle/JingleManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;

    .line 86
    .local v4, "sessionHandler":Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;
    if-eqz v4, :cond_0

    .line 88
    invoke-interface {v4, v0}, Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;->handleJingleSessionRequest(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v5

    return-object v5

    .line 91
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getAction()Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    move-result-object v5

    sget-object v6, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_initiate:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    if-ne v5, v6, :cond_2

    .line 93
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getContents()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    .line 94
    .local v5, "content":Lorg/jivesoftware/smackx/jingle/element/JingleContent;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getDescription()Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

    move-result-object v6

    .line 95
    .local v6, "description":Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/JingleManager$1;->this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;

    invoke-static {v7}, Lorg/jivesoftware/smackx/jingle/JingleManager;->access$100(Lorg/jivesoftware/smackx/jingle/JingleManager;)Ljava/util/Map;

    move-result-object v7

    .line 96
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;->getNamespace()Ljava/lang/String;

    move-result-object v8

    .line 95
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/jingle/JingleHandler;

    .line 98
    .local v7, "jingleDescriptionHandler":Lorg/jivesoftware/smackx/jingle/JingleHandler;
    if-nez v7, :cond_1

    .line 100
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "Unsupported Jingle application."

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 101
    iget-object v8, p0, Lorg/jivesoftware/smackx/jingle/JingleManager$1;->this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;

    invoke-static {v8}, Lorg/jivesoftware/smackx/jingle/JingleManager;->access$300(Lorg/jivesoftware/smackx/jingle/JingleManager;)Lorg/jivesoftware/smackx/jingle/JingleUtil;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateUnsupportedApplications(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v8

    return-object v8

    .line 103
    :cond_1
    invoke-interface {v7, v0}, Lorg/jivesoftware/smackx/jingle/JingleHandler;->handleJingleRequest(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v8

    return-object v8

    .line 107
    .end local v5    # "content":Lorg/jivesoftware/smackx/jingle/element/JingleContent;
    .end local v6    # "description":Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    .end local v7    # "jingleDescriptionHandler":Lorg/jivesoftware/smackx/jingle/JingleHandler;
    :cond_2
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Unknown session."

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/JingleManager$1;->this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;

    invoke-static {v5}, Lorg/jivesoftware/smackx/jingle/JingleManager;->access$300(Lorg/jivesoftware/smackx/jingle/JingleManager;)Lorg/jivesoftware/smackx/jingle/JingleUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createErrorUnknownSession(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v5

    return-object v5
.end method
