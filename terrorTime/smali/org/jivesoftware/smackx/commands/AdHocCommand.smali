.class public abstract Lorg/jivesoftware/smackx/commands/AdHocCommand;
.super Ljava/lang/Object;
.source "AdHocCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;,
        Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;,
        Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;
    }
.end annotation


# instance fields
.field private data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    .line 87
    return-void
.end method

.method public static getSpecificErrorCondition(Lorg/jivesoftware/smack/packet/StanzaError;)Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;
    .locals 6
    .param p0, "error"    # Lorg/jivesoftware/smack/packet/StanzaError;

    .line 100
    invoke-static {}, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->values()[Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 101
    .local v3, "condition":Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://jabber.org/protocol/commands"

    invoke-virtual {p0, v4, v5}, Lorg/jivesoftware/smack/packet/StanzaError;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 103
    return-object v3

    .line 100
    .end local v3    # "condition":Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected addActionAvailable(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V
    .locals 1
    .param p1, "action"    # Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 300
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    .line 301
    return-void
.end method

.method protected addNote(Lorg/jivesoftware/smackx/commands/AdHocCommandNote;)V
    .locals 1
    .param p1, "note"    # Lorg/jivesoftware/smackx/commands/AdHocCommandNote;

    .line 174
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->addNote(Lorg/jivesoftware/smackx/commands/AdHocCommandNote;)V

    .line 175
    return-void
.end method

.method public abstract cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract complete(Lorg/jivesoftware/smackx/xdata/Form;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getActions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getData()Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    return-object v0
.end method

.method protected getExecuteAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getExecuteAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v0

    return-object v0
.end method

.method public getForm()Lorg/jivesoftware/smackx/xdata/Form;
    .locals 2

    .line 192
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/xdata/Form;

    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdata/Form;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getNode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommandNote;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getNotes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getOwnerJID()Lorg/jxmpp/jid/Jid;
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getChildElementXML()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getStatus()Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .locals 2

    .line 346
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommand;->getStatus()Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isValidAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)Z
    .locals 1
    .param p1, "action"    # Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 377
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommand;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->cancel:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract next(Lorg/jivesoftware/smackx/xdata/Form;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract prev()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method setData(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;)V
    .locals 0
    .param p1, "data"    # Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    .line 355
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    .line 356
    return-void
.end method

.method protected setExecuteAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V
    .locals 1
    .param p1, "action"    # Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 327
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setExecuteAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    .line 328
    return-void
.end method

.method protected setForm(Lorg/jivesoftware/smackx/xdata/Form;)V
    .locals 2
    .param p1, "form"    # Lorg/jivesoftware/smackx/xdata/Form;

    .line 209
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setForm(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 210
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setName(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setNode(Ljava/lang/String;)V

    .line 136
    return-void
.end method
