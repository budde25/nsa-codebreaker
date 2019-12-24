.class public abstract Lorg/jivesoftware/smackx/iot/IoTManager$IoTIqRequestHandler;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "IoTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/iot/IoTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "IoTIqRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/iot/IoTManager;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smackx/iot/IoTManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/iot/IoTManager;
    .param p2, "element"    # Ljava/lang/String;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "type"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "mode"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 73
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/IoTManager$IoTIqRequestHandler;->this$0:Lorg/jivesoftware/smackx/iot/IoTManager;

    .line 74
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    .line 75
    return-void
.end method


# virtual methods
.method public final handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/IoTManager$IoTIqRequestHandler;->this$0:Lorg/jivesoftware/smackx/iot/IoTManager;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iot/IoTManager;->isAllowed(Lorg/jxmpp/jid/Jid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lorg/jivesoftware/smackx/iot/IoTManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring IQ request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iot/IoTManager$IoTIqRequestHandler;->handleIoTIqRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method protected abstract handleIoTIqRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
.end method
