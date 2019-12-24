.class public final Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
.super Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;
.source "JingleS5BTransportCandidate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Builder;,
        Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;
    }
.end annotation


# static fields
.field public static final ATTR_CID:Ljava/lang/String; = "cid"

.field public static final ATTR_HOST:Ljava/lang/String; = "host"

.field public static final ATTR_JID:Ljava/lang/String; = "jid"

.field public static final ATTR_PORT:Ljava/lang/String; = "port"

.field public static final ATTR_PRIORITY:Ljava/lang/String; = "priority"

.field public static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final cid:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final jid:Lorg/jxmpp/jid/Jid;

.field private final port:I

.field private final priority:I

.field private final type:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/Jid;IILorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;)V
    .locals 2
    .param p1, "candidateId"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p4, "port"    # I
    .param p5, "priority"    # I
    .param p6, "type"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    .line 52
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;-><init>()V

    .line 54
    invoke-static {p1}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p2}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p3}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    if-ltz p5, :cond_1

    .line 61
    if-ltz p4, :cond_0

    .line 65
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->cid:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->host:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->jid:Lorg/jxmpp/jid/Jid;

    .line 68
    iput p4, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->port:I

    .line 69
    iput p5, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->priority:I

    .line 70
    iput-object p6, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->type:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    .line 71
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Port MUST NOT be less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Priority MUST NOT be less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;ILorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;)V
    .locals 8
    .param p1, "streamHost"    # Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    .param p2, "priority"    # I
    .param p3, "type"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    .line 74
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getPort()I

    move-result v5

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/Jid;IILorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;)V

    .line 75
    return-void
.end method

.method public static getBuilder()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Builder;
    .locals 2

    .line 150
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Builder;-><init>(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$1;)V

    return-object v0
.end method


# virtual methods
.method public getCandidateId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getJid()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->jid:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->port:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->priority:I

    return v0
.end method

.method public getStreamHost()Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    .locals 4

    .line 129
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->jid:Lorg/jxmpp/jid/Jid;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->host:Ljava/lang/String;

    iget v3, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->port:I

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->type:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 134
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 135
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 136
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->cid:Ljava/lang/String;

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 137
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->host:Ljava/lang/String;

    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 138
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->jid:Lorg/jxmpp/jid/Jid;

    const-string v2, "jid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 139
    iget v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->port:I

    if-ltz v1, :cond_0

    .line 140
    const-string v2, "port"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 142
    :cond_0
    iget v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->priority:I

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 143
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->type:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 145
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 146
    return-object v0
.end method
