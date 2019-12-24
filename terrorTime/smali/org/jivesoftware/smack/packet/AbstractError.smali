.class public Lorg/jivesoftware/smack/packet/AbstractError;
.super Ljava/lang/Object;
.source "AbstractError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/AbstractError$Builder;
    }
.end annotation


# instance fields
.field protected final descriptiveTexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;"
        }
    .end annotation
.end field

.field protected final textNamespace:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "descriptiveTexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/packet/AbstractError;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p2, "textNamespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "descriptiveTexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/AbstractError;->descriptiveTexts:Ljava/util/Map;

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError;->descriptiveTexts:Ljava/util/Map;

    .line 51
    :goto_0
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/AbstractError;->textNamespace:Ljava/lang/String;

    .line 52
    if-eqz p3, :cond_1

    .line 53
    iput-object p3, p0, Lorg/jivesoftware/smack/packet/AbstractError;->extensions:Ljava/util/List;

    goto :goto_1

    .line 55
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError;->extensions:Ljava/util/List;

    .line 57
    :goto_1
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "descriptiveTexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jivesoftware/smack/packet/AbstractError;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected addDescriptiveTextsAndExtensions(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V
    .locals 7
    .param p1, "xml"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 107
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError;->descriptiveTexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "xmllang":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    .local v3, "text":Ljava/lang/String;
    const-string v4, "text"

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jivesoftware/smack/packet/AbstractError;->textNamespace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->xmlnsAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v5

    .line 111
    invoke-virtual {v5, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optXmlLangAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v5

    .line 112
    invoke-virtual {v5}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 113
    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 114
    invoke-virtual {p1, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 115
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "xmllang":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 117
    .local v1, "packetExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/packet/ExtensionElement;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 118
    .end local v1    # "packetExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    goto :goto_1

    .line 119
    :cond_1
    return-void
.end method

.method public getDescriptiveText()Ljava/lang/String;
    .locals 3

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "defaultLocale":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/AbstractError;->getDescriptiveText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "descriptiveText":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 71
    const-string v2, "en"

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/packet/AbstractError;->getDescriptiveText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    if-nez v1, :cond_0

    .line 73
    const-string v2, ""

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/packet/AbstractError;->getDescriptiveText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_0
    return-object v1
.end method

.method public getDescriptiveText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "xmllang"    # Ljava/lang/String;

    .line 89
    const-string v0, "xmllang must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError;->descriptiveTexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PE::",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TPE;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError;->extensions:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lorg/jivesoftware/smack/util/PacketUtil;->extensionElementFrom(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    return-object v0
.end method
