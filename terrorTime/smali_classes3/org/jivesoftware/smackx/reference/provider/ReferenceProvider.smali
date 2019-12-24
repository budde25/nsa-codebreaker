.class public Lorg/jivesoftware/smackx/reference/provider/ReferenceProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "ReferenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/reference/element/ReferenceElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final TEST_PROVIDER:Lorg/jivesoftware/smackx/reference/provider/ReferenceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/reference/provider/ReferenceProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/reference/provider/ReferenceProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/reference/provider/ReferenceProvider;->TEST_PROVIDER:Lorg/jivesoftware/smackx/reference/provider/ReferenceProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
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

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/reference/provider/ReferenceProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/reference/element/ReferenceElement;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/reference/element/ReferenceElement;
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    move-object/from16 v0, p1

    const-string v1, "begin"

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 36
    .local v1, "begin":Ljava/lang/Integer;
    const-string v2, "end"

    invoke-static {v0, v2}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 37
    .local v9, "end":Ljava/lang/Integer;
    const/4 v2, 0x0

    const-string v3, "type"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 38
    .local v10, "typeString":Ljava/lang/String;
    invoke-static {v10}, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    move-result-object v11

    .line 39
    .local v11, "type":Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;
    const-string v3, "anchor"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 40
    .local v12, "anchor":Ljava/lang/String;
    const-string v3, "uri"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 41
    .local v13, "uriString":Ljava/lang/String;
    if-eqz v13, :cond_0

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    :cond_0
    move-object v7, v2

    .line 42
    .local v7, "uri":Ljava/net/URI;
    const/4 v2, 0x0

    .line 44
    .local v2, "child":Lorg/jivesoftware/smack/packet/ExtensionElement;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 45
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 46
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "elementName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "namespace":Ljava/lang/String;
    invoke-static {v4, v5}, Lorg/jivesoftware/smack/provider/ProviderManager;->getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/provider/ExtensionElementProvider;

    move-result-object v6

    .line 49
    .local v6, "provider":Lorg/jivesoftware/smack/provider/ExtensionElementProvider;, "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<*>;"
    if-eqz v6, :cond_1

    .line 50
    invoke-virtual {v6, v0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-object v14, v2

    goto :goto_1

    .line 53
    .end local v4    # "elementName":Ljava/lang/String;
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "provider":Lorg/jivesoftware/smack/provider/ExtensionElementProvider;, "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<*>;"
    :cond_1
    move-object v14, v2

    .end local v2    # "child":Lorg/jivesoftware/smack/packet/ExtensionElement;
    .local v14, "child":Lorg/jivesoftware/smack/packet/ExtensionElement;
    :goto_1
    const/4 v2, 0x3

    if-ne v3, v2, :cond_2

    .line 54
    nop

    .line 58
    .end local v3    # "eventType":I
    new-instance v15, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;

    move-object v2, v15

    move-object v3, v1

    move-object v4, v9

    move-object v5, v11

    move-object v6, v12

    move-object v8, v14

    invoke-direct/range {v2 .. v8}, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;Ljava/lang/String;Ljava/net/URI;Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    return-object v15

    .line 56
    :cond_2
    move-object v2, v14

    goto :goto_0
.end method
