.class Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;
.super Ljava/lang/Object;
.source "InBandBytestreamSession.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/StanzaFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IBBDataPacketFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$1;

    .line 577
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 4
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 582
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Stanza;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    invoke-static {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$1000(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 583
    return v1

    .line 587
    :cond_0
    instance-of v0, p1, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;

    if-eqz v0, :cond_1

    .line 588
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;->getDataPacketExtension()Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    move-result-object v0

    .local v0, "data":Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
    goto :goto_0

    .line 591
    .end local v0    # "data":Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
    :cond_1
    const-string v0, "data"

    const-string v2, "http://jabber.org/protocol/ibb"

    invoke-virtual {p1, v0, v2}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    .line 594
    .restart local v0    # "data":Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
    if-nez v0, :cond_2

    .line 595
    return v1

    .line 600
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getSessionID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    invoke-static {v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$1100(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 601
    return v1

    .line 604
    :cond_3
    const/4 v1, 0x1

    return v1
.end method
