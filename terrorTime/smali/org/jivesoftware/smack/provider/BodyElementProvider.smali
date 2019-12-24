.class public Lorg/jivesoftware/smack/provider/BodyElementProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "BodyElementProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smack/packet/Message$Body;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
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

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/provider/BodyElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Message$Body;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Message$Body;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getXmlLang(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "xmlLang":Ljava/lang/String;
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseElementText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "body":Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smack/packet/Message$Body;

    invoke-direct {v2, v0, v1}, Lorg/jivesoftware/smack/packet/Message$Body;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
