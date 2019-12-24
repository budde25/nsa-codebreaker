.class public Lorg/jivesoftware/smackx/commands/provider/AdHocCommandDataProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "AdHocCommandDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/commands/provider/AdHocCommandDataProvider$SessionExpiredError;,
        Lorg/jivesoftware/smackx/commands/provider/AdHocCommandDataProvider$BadSessionIDError;,
        Lorg/jivesoftware/smackx/commands/provider/AdHocCommandDataProvider$BadPayloadError;,
        Lorg/jivesoftware/smackx/commands/provider/AdHocCommandDataProvider$BadLocaleError;,
        Lorg/jivesoftware/smackx/commands/provider/AdHocCommandDataProvider$MalformedActionError;,
        Lorg/jivesoftware/smackx/commands/provider/AdHocCommandDataProvider$BadActionError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/commands/provider/AdHocCommandDataProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "done":Z
    new-instance v1, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;-><init>()V

    .line 45
    .local v1, "adHocCommandData":Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;
    new-instance v2, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;-><init>()V

    .line 50
    .local v2, "dataFormProvider":Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;
    const-string v3, ""

    const-string v4, "sessionid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setSessionID(Ljava/lang/String;)V

    .line 51
    const-string v4, "node"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setNode(Ljava/lang/String;)V

    .line 54
    const-string v4, "status"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "status":Ljava/lang/String;
    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    goto :goto_0

    .line 58
    :cond_0
    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    goto :goto_0

    .line 61
    :cond_1
    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 66
    :cond_2
    :goto_0
    const-string v5, "action"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "action":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 68
    invoke-static {v5}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v6

    .line 69
    .local v6, "realAction":Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    if-eqz v6, :cond_4

    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v1, v6}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto :goto_2

    .line 70
    :cond_4
    :goto_1
    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v1, v7}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    .line 76
    .end local v6    # "realAction":Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    :cond_5
    :goto_2
    if-nez v0, :cond_f

    .line 77
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 78
    .local v6, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "elementName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "namespace":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v6, v9, :cond_e

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "actions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 82
    const-string v9, "execute"

    invoke-interface {p1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "execute":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 84
    invoke-static {v9}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setExecuteAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    .line 86
    .end local v9    # "execute":Ljava/lang/String;
    :cond_6
    goto :goto_2

    .line 87
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "next"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 88
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v1, v9}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto :goto_2

    .line 90
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "complete"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 91
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v1, v9}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto :goto_2

    .line 93
    :cond_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "prev"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 94
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v1, v9}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto :goto_2

    .line 96
    :cond_a
    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "jabber:x:data"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 97
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v9

    check-cast v9, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v1, v9}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setForm(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    goto :goto_2

    .line 99
    :cond_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "note"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 100
    const-string v9, "type"

    invoke-interface {p1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "typeString":Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 103
    invoke-static {v9}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    move-result-object v10

    .local v10, "type":Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;
    goto :goto_3

    .line 106
    .end local v10    # "type":Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;
    :cond_c
    sget-object v10, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->info:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    .line 108
    .restart local v10    # "type":Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, "value":Ljava/lang/String;
    new-instance v12, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;

    invoke-direct {v12, v10, v11}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->addNote(Lorg/jivesoftware/smackx/commands/AdHocCommandNote;)V

    .line 110
    .end local v9    # "typeString":Ljava/lang/String;
    .end local v10    # "type":Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;
    .end local v11    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 111
    :cond_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "error"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 112
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v9

    .line 113
    .local v9, "error":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    invoke-virtual {v1, v9}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setError(Lorg/jivesoftware/smack/packet/StanzaError$Builder;)V

    .line 114
    .end local v9    # "error":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    goto/16 :goto_2

    .line 116
    :cond_e
    const/4 v9, 0x3

    if-ne v6, v9, :cond_5

    .line 117
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "command"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 118
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 122
    .end local v6    # "eventType":I
    .end local v7    # "elementName":Ljava/lang/String;
    .end local v8    # "namespace":Ljava/lang/String;
    :cond_f
    return-object v1
.end method
