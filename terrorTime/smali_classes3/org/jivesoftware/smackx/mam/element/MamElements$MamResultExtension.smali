.class public Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;
.super Ljava/lang/Object;
.source "MamElements.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/mam/element/MamElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MamResultExtension"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "result"


# instance fields
.field private final forwarded:Lorg/jivesoftware/smackx/forward/packet/Forwarded;

.field private final id:Ljava/lang/String;

.field private queryId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/forward/packet/Forwarded;)V
    .locals 2
    .param p1, "queryId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "forwarded"    # Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p2}, Lorg/jivesoftware/smack/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    if-eqz p3, :cond_0

    .line 86
    iput-object p2, p0, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->id:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->forwarded:Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    .line 88
    iput-object p1, p0, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->queryId:Ljava/lang/String;

    .line 89
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "forwarded must no be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 144
    const-string v0, "result"

    const-string v1, "urn:xmpp:mam:1"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 120
    const-string v0, "result"

    return-object v0
.end method

.method public getForwarded()Lorg/jivesoftware/smackx/forward/packet/Forwarded;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->forwarded:Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "urn:xmpp:mam:1"

    return-object v0
.end method

.method public final getQueryId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->queryId:Ljava/lang/String;

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 130
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 131
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 132
    const-string v1, "urn:xmpp:mam:1"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->xmlnsAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 133
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->getQueryId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "queryid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 134
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 135
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 137
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->getForwarded()Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 139
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 140
    return-object v0
.end method
