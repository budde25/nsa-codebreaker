.class public final Lorg/jivesoftware/smackx/jingle/element/Jingle;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Jingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_ATTRIBUTE_NAME:Ljava/lang/String; = "action"

.field public static final ELEMENT:Ljava/lang/String; = "jingle"

.field public static final INITIATOR_ATTRIBUTE_NAME:Ljava/lang/String; = "initiator"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:jingle:1"

.field public static final RESPONDER_ATTRIBUTE_NAME:Ljava/lang/String; = "responder"

.field public static final SESSION_ID_ATTRIBUTE_NAME:Ljava/lang/String; = "sid"


# instance fields
.field private final action:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContent;",
            ">;"
        }
    .end annotation
.end field

.field private final initiator:Lorg/jxmpp/jid/FullJid;

.field private final reason:Lorg/jivesoftware/smackx/jingle/element/JingleReason;

.field private final responder:Lorg/jxmpp/jid/FullJid;

.field private final sessionId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleAction;Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smackx/jingle/element/JingleReason;Ljava/util/List;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "action"    # Lorg/jivesoftware/smackx/jingle/element/JingleAction;
    .param p3, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p4, "responder"    # Lorg/jxmpp/jid/FullJid;
    .param p5, "reason"    # Lorg/jivesoftware/smackx/jingle/element/JingleReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/jingle/element/JingleAction;",
            "Lorg/jxmpp/jid/FullJid;",
            "Lorg/jxmpp/jid/FullJid;",
            "Lorg/jivesoftware/smackx/jingle/element/JingleReason;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContent;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p6, "contents":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/jingle/element/JingleContent;>;"
    const-string v0, "jingle"

    const-string v1, "urn:xmpp:jingle:1"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "Jingle session ID must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->sessionId:Ljava/lang/String;

    .line 72
    const-string v0, "Jingle action must not be null"

    invoke-static {p2, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->action:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 73
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->initiator:Lorg/jxmpp/jid/FullJid;

    .line 74
    iput-object p4, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->responder:Lorg/jxmpp/jid/FullJid;

    .line 75
    iput-object p5, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->reason:Lorg/jivesoftware/smackx/jingle/element/JingleReason;

    .line 76
    if-eqz p6, :cond_0

    .line 77
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->contents:Ljava/util/List;

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->contents:Ljava/util/List;

    .line 82
    :goto_0
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleAction;Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smackx/jingle/element/JingleReason;Ljava/util/List;Lorg/jivesoftware/smackx/jingle/element/Jingle$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/jingle/element/JingleAction;
    .param p3, "x2"    # Lorg/jxmpp/jid/FullJid;
    .param p4, "x3"    # Lorg/jxmpp/jid/FullJid;
    .param p5, "x4"    # Lorg/jivesoftware/smackx/jingle/element/JingleReason;
    .param p6, "x5"    # Ljava/util/List;
    .param p7, "x6"    # Lorg/jivesoftware/smackx/jingle/element/Jingle$1;

    .line 35
    invoke-direct/range {p0 .. p6}, Lorg/jivesoftware/smackx/jingle/element/Jingle;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleAction;Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smackx/jingle/element/JingleReason;Ljava/util/List;)V

    return-void
.end method

.method public static getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    .locals 2

    .line 173
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;-><init>(Lorg/jivesoftware/smackx/jingle/element/Jingle$1;)V

    return-object v0
.end method


# virtual methods
.method public getAction()Lorg/jivesoftware/smackx/jingle/element/JingleAction;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->action:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    return-object v0
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContent;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->contents:Ljava/util/List;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 159
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getInitiator()Lorg/jxmpp/jid/FullJid;

    move-result-object v0

    const-string v1, "initiator"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 160
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getResponder()Lorg/jxmpp/jid/FullJid;

    move-result-object v0

    const-string v1, "responder"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 161
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getAction()Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 162
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getSid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 163
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 165
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->reason:Lorg/jivesoftware/smackx/jingle/element/JingleReason;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 167
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->contents:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Ljava/util/Collection;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 169
    return-object p1
.end method

.method public getInitiator()Lorg/jxmpp/jid/FullJid;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->initiator:Lorg/jxmpp/jid/FullJid;

    return-object v0
.end method

.method public getReason()Lorg/jivesoftware/smackx/jingle/element/JingleReason;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->reason:Lorg/jivesoftware/smackx/jingle/element/JingleReason;

    return-object v0
.end method

.method public getResponder()Lorg/jxmpp/jid/FullJid;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->responder:Lorg/jxmpp/jid/FullJid;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSoleContentOrThrow()Lorg/jivesoftware/smackx/jingle/element/JingleContent;
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/Jingle;->contents:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    return-object v0

    .line 151
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
