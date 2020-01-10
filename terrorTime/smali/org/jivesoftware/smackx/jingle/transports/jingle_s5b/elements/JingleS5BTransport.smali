.class public Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;
.super Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
.source "JingleS5BTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;
    }
.end annotation


# static fields
.field public static final ATTR_DSTADDR:Ljava/lang/String; = "dstaddr"

.field public static final ATTR_MODE:Ljava/lang/String; = "mode"

.field public static final ATTR_SID:Ljava/lang/String; = "sid"

.field public static final NAMESPACE_V1:Ljava/lang/String; = "urn:xmpp:jingle:transports:s5b:1"


# instance fields
.field private final dstAddr:Ljava/lang/String;

.field private final mode:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;

.field private final streamId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;)V
    .locals 1
    .param p2, "info"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;
    .param p3, "streamId"    # Ljava/lang/String;
    .param p4, "dstAddr"    # Ljava/lang/String;
    .param p5, "mode"    # Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;",
            ">;",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;",
            ")V"
        }
    .end annotation

    .line 43
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;>;"
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;-><init>(Ljava/util/List;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;)V

    .line 44
    const-string v0, "sid MUST be neither null, nor empty."

    invoke-static {p3, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 45
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->streamId:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->dstAddr:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->mode:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;

    .line 48
    return-void
.end method

.method public static getBuilder()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;
    .locals 1

    .line 89
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected addExtraAttributes(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 69
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->dstAddr:Ljava/lang/String;

    const-string v1, "dstaddr"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->mode:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;

    const-string v1, "mode"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->streamId:Ljava/lang/String;

    const-string v1, "sid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 72
    return-void
.end method

.method public getCandidate(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
    .locals 4
    .param p1, "candidateId"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->candidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;

    .line 80
    .local v1, "c":Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    .line 81
    .local v2, "candidate":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;->getCandidateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    return-object v2

    .line 84
    .end local v1    # "c":Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;
    .end local v2    # "candidate":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
    :cond_0
    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->dstAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->mode:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;->tcp:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;

    :cond_0
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "urn:xmpp:jingle:transports:s5b:1"

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public hasCandidate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "candidateId"    # Ljava/lang/String;

    .line 75
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getCandidate(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
