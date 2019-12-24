.class public Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "StandardExtensionElementProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smack/packet/StandardExtensionElement;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static INSTANCE:Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    nop

    .line 40
    new-instance v0, Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;->INSTANCE:Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
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

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/StandardExtensionElement;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "namespace":Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->builder(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;

    move-result-object v2

    .line 50
    .local v2, "builder":Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v3

    .line 51
    .local v3, "namespaceCount":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 52
    .local v4, "attributeCount":I
    new-instance v5, Ljava/util/LinkedHashMap;

    add-int v6, v3, v4

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 53
    .local v5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 54
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "nsprefix":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 57
    goto :goto_1

    .line 60
    :cond_0
    nop

    .line 61
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "nsuri":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v7    # "nsprefix":Ljava/lang/String;
    .end local v8    # "nsuri":Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 64
    .end local v6    # "i":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v4, :cond_3

    .line 65
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "attributePrefix":Ljava/lang/String;
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "attributeName":Ljava/lang/String;
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, "attributeValue":Ljava/lang/String;
    invoke-static {v7}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 70
    move-object v10, v8

    .local v10, "attributeKey":Ljava/lang/String;
    goto :goto_3

    .line 73
    .end local v10    # "attributeKey":Ljava/lang/String;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 75
    .restart local v10    # "attributeKey":Ljava/lang/String;
    :goto_3
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v7    # "attributePrefix":Ljava/lang/String;
    .end local v8    # "attributeName":Ljava/lang/String;
    .end local v9    # "attributeValue":Ljava/lang/String;
    .end local v10    # "attributeKey":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 77
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->addAttributes(Ljava/util/Map;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;

    .line 80
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 81
    .local v6, "event":I
    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    goto :goto_5

    .line 86
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->setText(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;

    .line 87
    goto :goto_5

    .line 89
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne p2, v7, :cond_7

    .line 90
    nop

    .line 96
    .end local v6    # "event":I
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 97
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->build()Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    move-result-object v6

    return-object v6

    .line 83
    .restart local v6    # "event":I
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->addElement(Lorg/jivesoftware/smack/packet/StandardExtensionElement;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;

    .line 84
    nop

    .line 94
    .end local v6    # "event":I
    :cond_7
    :goto_5
    goto :goto_4
.end method
