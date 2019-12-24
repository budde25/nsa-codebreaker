.class public Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "AdHocCommandData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData$SpecificError;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "command"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/commands"


# instance fields
.field private action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field private final actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;",
            ">;"
        }
    .end annotation
.end field

.field private executeAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field private form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

.field private id:Lorg/jxmpp/jid/Jid;

.field private name:Ljava/lang/String;

.field private node:Ljava/lang/String;

.field private final notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommandNote;",
            ">;"
        }
    .end annotation
.end field

.field private sessionID:Ljava/lang/String;

.field private status:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    const-string v0, "command"

    const-string v1, "http://jabber.org/protocol/commands"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->notes:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->actions:Ljava/util/ArrayList;

    .line 72
    return-void
.end method


# virtual methods
.method public addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V
    .locals 1
    .param p1, "action"    # Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 215
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public addNote(Lorg/jivesoftware/smackx/commands/AdHocCommandNote;)V
    .locals 1
    .param p1, "note"    # Lorg/jivesoftware/smackx/commands/AdHocCommandNote;

    .line 164
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->notes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public getAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->actions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExecuteAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->executeAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    return-object v0
.end method

.method public getForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 6
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 76
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->node:Ljava/lang/String;

    const-string v1, "node"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->sessionID:Ljava/lang/String;

    const-string v1, "sessionid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->status:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const-string v1, "action"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 80
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 82
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_2

    .line 83
    const-string v0, "actions"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 84
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->executeAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const-string v2, "execute"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 85
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 90
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 91
    .local v2, "action":Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->emptyElement(Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 92
    .end local v2    # "action":Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 97
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    if-eqz v0, :cond_3

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 101
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;

    .line 102
    .local v1, "note":Lorg/jivesoftware/smackx/commands/AdHocCommandNote;
    const-string v2, "note"

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;->getType()Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v3, v5, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 103
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 104
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 105
    .end local v1    # "note":Lorg/jivesoftware/smackx/commands/AdHocCommandNote;
    goto :goto_2

    .line 112
    :cond_4
    return-object p1
.end method

.method public getId()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->id:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->node:Ljava/lang/String;

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

    .line 160
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->notes:Ljava/util/List;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->status:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    return-object v0
.end method

.method public removeNote(Lorg/jivesoftware/smackx/commands/AdHocCommandNote;)V
    .locals 1
    .param p1, "note"    # Lorg/jivesoftware/smackx/commands/AdHocCommandNote;

    .line 168
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->notes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public setAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V
    .locals 0
    .param p1, "action"    # Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 194
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 195
    return-void
.end method

.method public setExecuteAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V
    .locals 0
    .param p1, "executeAction"    # Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 219
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->executeAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 220
    return-void
.end method

.method public setForm(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 0
    .param p1, "form"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 181
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 182
    return-void
.end method

.method public setId(Lorg/jxmpp/jid/Jid;)V
    .locals 0
    .param p1, "id"    # Lorg/jxmpp/jid/Jid;

    .line 125
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->id:Lorg/jxmpp/jid/Jid;

    .line 126
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->name:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->node:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionID"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->sessionID:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V
    .locals 0
    .param p1, "status"    # Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    .line 207
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->status:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    .line 208
    return-void
.end method
