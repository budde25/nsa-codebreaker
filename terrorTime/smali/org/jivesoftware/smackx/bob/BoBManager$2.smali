.class Lorg/jivesoftware/smackx/bob/BoBManager$2;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "BoBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/bob/BoBManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/bob/BoBManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/bob/BoBManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/bob/BoBManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "arg3"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 94
    iput-object p1, p0, Lorg/jivesoftware/smackx/bob/BoBManager$2;->this$0:Lorg/jivesoftware/smackx/bob/BoBManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 5
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 97
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/bob/element/BoBIQ;

    .line 99
    .local v0, "bobIQRequest":Lorg/jivesoftware/smackx/bob/element/BoBIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bob/BoBManager$2;->this$0:Lorg/jivesoftware/smackx/bob/BoBManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/bob/BoBManager;->access$000(Lorg/jivesoftware/smackx/bob/BoBManager;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->getBoBHash()Lorg/jivesoftware/smackx/bob/BoBHash;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/bob/BoBInfo;

    .line 100
    .local v1, "bobInfo":Lorg/jivesoftware/smackx/bob/BoBInfo;
    if-nez v1, :cond_0

    .line 102
    const/4 v2, 0x0

    return-object v2

    .line 105
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bob/BoBInfo;->getData()Lorg/jivesoftware/smackx/bob/BoBData;

    move-result-object v2

    .line 106
    .local v2, "bobData":Lorg/jivesoftware/smackx/bob/BoBData;
    new-instance v3, Lorg/jivesoftware/smackx/bob/element/BoBIQ;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->getBoBHash()Lorg/jivesoftware/smackx/bob/BoBHash;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;-><init>(Lorg/jivesoftware/smackx/bob/BoBHash;Lorg/jivesoftware/smackx/bob/BoBData;)V

    .line 107
    .local v3, "responseBoBIQ":Lorg/jivesoftware/smackx/bob/element/BoBIQ;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 108
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 109
    return-object v3
.end method
