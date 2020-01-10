.class Lorg/jivesoftware/smack/AbstractXMPPConnection$5;
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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

.field final synthetic val$finalIqRequestHandler:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

.field final synthetic val$iq:Lorg/jivesoftware/smack/packet/IQ;

.field final synthetic val$iqRequest:Lorg/jivesoftware/smack/packet/IQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1191
    const-class v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 1191
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$5;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iput-object p2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$5;->val$finalIqRequestHandler:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    iput-object p3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$5;->val$iq:Lorg/jivesoftware/smack/packet/IQ;

    iput-object p4, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$5;->val$iqRequest:Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1194
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$5;->val$finalIqRequestHandler:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$5;->val$iq:Lorg/jivesoftware/smack/packet/IQ;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;->handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 1195
    .local v0, "response":Lorg/jivesoftware/smack/packet/IQ;
    if-nez v0, :cond_0

    .line 1201
    return-void

    .line 1204
    :cond_0
    nop

    .line 1206
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$5;->val$iqRequest:Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 1207
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$5;->val$iqRequest:Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getStanzaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setStanzaId(Ljava/lang/String;)V

    .line 1209
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$5;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    goto :goto_1

    .line 1211
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1212
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception while sending response to IQ request"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1214
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
