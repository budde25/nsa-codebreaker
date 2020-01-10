.class public Lorg/jivesoftware/smackx/mam/element/MamFinIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MamFinIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "fin"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:mam:1"


# instance fields
.field private final complete:Z

.field private final queryId:Ljava/lang/String;

.field private final rsmSet:Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

.field private final stable:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/rsm/packet/RSMSet;ZZ)V
    .locals 2
    .param p1, "queryId"    # Ljava/lang/String;
    .param p2, "rsmSet"    # Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    .param p3, "complete"    # Z
    .param p4, "stable"    # Z

    .line 72
    const-string v0, "fin"

    const-string v1, "urn:xmpp:mam:1"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-eqz p2, :cond_0

    .line 76
    iput-object p2, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->rsmSet:Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    .line 77
    iput-boolean p3, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->complete:Z

    .line 78
    iput-boolean p4, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->stable:Z

    .line 79
    iput-object p1, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->queryId:Ljava/lang/String;

    .line 80
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rsmSet must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 120
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->queryId:Ljava/lang/String;

    const-string v1, "queryid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 121
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->complete:Z

    const-string v1, "complete"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optBooleanAttribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 122
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->stable:Z

    const-string v1, "stable"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optBooleanAttribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->rsmSet:Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 127
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->rsmSet:Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 129
    :goto_0
    return-object p1
.end method

.method public final getQueryId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->queryId:Ljava/lang/String;

    return-object v0
.end method

.method public getRSMSet()Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->rsmSet:Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->complete:Z

    return v0
.end method

.method public isStable()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->stable:Z

    return v0
.end method
