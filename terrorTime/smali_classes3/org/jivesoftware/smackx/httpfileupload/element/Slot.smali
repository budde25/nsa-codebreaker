.class public Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Slot.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "slot"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:http:upload:0"


# instance fields
.field protected final getUrl:Ljava/net/URL;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final putUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/net/URL;)V
    .locals 1
    .param p1, "putUrl"    # Ljava/net/URL;
    .param p2, "getUrl"    # Ljava/net/URL;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;-><init>(Ljava/net/URL;Ljava/net/URL;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/net/URL;Ljava/util/Map;)V
    .locals 1
    .param p1, "putUrl"    # Ljava/net/URL;
    .param p2, "getUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "urn:xmpp:http:upload:0"

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;-><init>(Ljava/net/URL;Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "putUrl"    # Ljava/net/URL;
    .param p2, "getUrl"    # Ljava/net/URL;
    .param p4, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "slot"

    invoke-direct {p0, v0, p4}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 52
    iput-object p1, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->putUrl:Ljava/net/URL;

    .line 53
    iput-object p2, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->getUrl:Ljava/net/URL;

    .line 54
    if-nez p3, :cond_0

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->headers:Ljava/util/Map;

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->headers:Ljava/util/Map;

    .line 59
    :goto_0
    return-void
.end method


# virtual methods
.method public getGetUrl()Ljava/net/URL;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->getUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->headers:Ljava/util/Map;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 8
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 75
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 77
    const-string v0, "put"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->putUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 78
    iget-object v1, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    goto :goto_1

    .line 81
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 82
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 83
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "header"

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "name"

    invoke-virtual {v5, v7, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 85
    invoke-virtual {p1, v4}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 86
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 90
    :goto_1
    const-string v0, "get"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->getUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 92
    return-object p1
.end method

.method public getPutUrl()Ljava/net/URL;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->putUrl:Ljava/net/URL;

    return-object v0
.end method
