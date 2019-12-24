.class Lorg/jivesoftware/smackx/time/EntityTimeManager$2;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "EntityTimeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/time/EntityTimeManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/time/EntityTimeManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/time/EntityTimeManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/time/EntityTimeManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "arg3"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 76
    iput-object p1, p0, Lorg/jivesoftware/smackx/time/EntityTimeManager$2;->this$0:Lorg/jivesoftware/smackx/time/EntityTimeManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smackx/time/EntityTimeManager$2;->this$0:Lorg/jivesoftware/smackx/time/EntityTimeManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/time/EntityTimeManager;->access$000(Lorg/jivesoftware/smackx/time/EntityTimeManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Lorg/jivesoftware/smackx/time/packet/Time;->createResponse(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smackx/time/packet/Time;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_acceptable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v0

    return-object v0
.end method
