.class public abstract Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "EmbeddedExtensionProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PE::",
        "Lorg/jivesoftware/smack/packet/ExtensionElement;",
        ">",
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "TPE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    .local p0, "this":Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider;, "Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider<TPE;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createReturnExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)TPE;"
        }
    .end annotation
.end method

.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider;, "Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider<TPE;>;"
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object p1

    return-object p1
.end method

.method public final parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)TPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider;, "Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider<TPE;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 89
    .local v2, "attributeCount":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 91
    .local v3, "attMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 92
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v4, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 100
    .local v5, "event":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 101
    invoke-static {v4, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->addExtensionElement(Ljava/util/Collection;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 103
    :cond_1
    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, p2, :cond_2

    .line 105
    invoke-virtual {p0, v1, v0, v3, v4}, Lorg/jivesoftware/smack/provider/EmbeddedExtensionProvider;->createReturnExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v6

    return-object v6

    .line 103
    :cond_2
    goto :goto_1
.end method
