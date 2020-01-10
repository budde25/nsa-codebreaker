.class public abstract Lorg/jivesoftware/smackx/json/provider/AbstractJsonExtensionProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "AbstractJsonExtensionProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract from(Ljava/lang/String;)Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;
.end method

.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/json/provider/AbstractJsonExtensionProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseElementText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "json":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/json/provider/AbstractJsonExtensionProvider;->from(Ljava/lang/String;)Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;

    move-result-object v1

    return-object v1
.end method
