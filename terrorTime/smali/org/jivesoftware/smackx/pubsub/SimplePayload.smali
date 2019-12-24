.class public Lorg/jivesoftware/smackx/pubsub/SimplePayload;
.super Ljava/lang/Object;
.source "SimplePayload.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# instance fields
.field private final elemName:Ljava/lang/String;

.field private final ns:Ljava/lang/String;

.field private final payload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "xmlPayload"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    :try_start_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getParserFor(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 56
    invoke-static {v0}, Lorg/jivesoftware/smack/util/ParserUtils;->getQName(Lorg/xmlpull/v1/XmlPullParser;)Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 58
    .local v1, "qname":Ljavax/xml/namespace/QName;
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->payload:Ljava/lang/String;

    .line 60
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not determine element name from XML payload"

    invoke-static {v2, v3}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->elemName:Ljava/lang/String;

    .line 61
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not determine namespace from XML payload"

    invoke-static {v2, v3}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->ns:Ljava/lang/String;

    .line 62
    return-void

    .line 53
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "qname":Ljavax/xml/namespace/QName;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "xmlPayload"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/SimplePayload;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->elemName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->ns:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->elemName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->ns:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "payload ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->toXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->toXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->payload:Ljava/lang/String;

    return-object v0
.end method
