.class public Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;
.super Ljava/lang/Object;
.source "MultiUserChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MucCreateConfigFormHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 559
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigFormManager()Lorg/jivesoftware/smackx/muc/MucConfigFormManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getConfigFormManager()Lorg/jivesoftware/smackx/muc/MucConfigFormManager;

    move-result-object v0

    return-object v0
.end method

.method public makeInstant()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    new-instance v1, Lorg/jivesoftware/smackx/xdata/Form;

    sget-object v2, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->submit:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/xdata/Form;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->sendConfigurationForm(Lorg/jivesoftware/smackx/xdata/Form;)V

    .line 575
    return-void
.end method
