.class public Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$IQProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "DataPacketProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IQProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;",
        ">;"
    }
.end annotation


# static fields
.field private static final packetExtensionProvider:Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$PacketExtensionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$PacketExtensionProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$PacketExtensionProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$IQProvider;->packetExtensionProvider:Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$PacketExtensionProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$IQProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    sget-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$IQProvider;->packetExtensionProvider:Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$PacketExtensionProvider;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider$PacketExtensionProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    .line 43
    .local v0, "data":Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;)V

    return-object v1
.end method
