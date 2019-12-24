.class public Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$PacketExtensionProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "DataPacketProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketExtensionProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

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

    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$PacketExtensionProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const-string v0, ""

    const-string v1, "sid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "sessionID":Ljava/lang/String;
    const-string v2, "seq"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 55
    .local v2, "seq":J
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "data":Ljava/lang/String;
    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    invoke-direct {v4, v1, v2, v3, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v4
.end method
