.class public Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;
.super Ljava/lang/Object;
.source "SpoilerElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "spoiler"

.field public static final EMPTY:Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:spoiler:0"


# instance fields
.field private final hint:Ljava/lang/String;

.field private final language:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->EMPTY:Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hint cannot be null or empty if language is not empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->language:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->hint:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static addSpoiler(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 70
    sget-object v0, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->EMPTY:Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 71
    return-void
.end method

.method public static addSpoiler(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .param p1, "hint"    # Ljava/lang/String;

    .line 80
    new-instance v0, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 81
    return-void
.end method

.method public static addSpoiler(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;

    .line 91
    new-instance v0, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 92
    return-void
.end method

.method public static containsSpoiler(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 102
    const-string v0, "spoiler"

    const-string v1, "urn:xmpp:spoiler:0"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->hasExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSpoilers(Lorg/jivesoftware/smack/packet/Message;)Ljava/util/Map;
    .locals 7
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/Message;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {p0}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->containsSpoiler(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    const-string v0, "spoiler"

    const-string v1, "urn:xmpp:spoiler:0"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtensions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "spoilers":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 122
    .local v3, "e":Lorg/jivesoftware/smack/packet/ExtensionElement;
    move-object v4, v3

    check-cast v4, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;

    .line 123
    .local v4, "s":Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->getHint()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 124
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->getHint()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v3    # "e":Lorg/jivesoftware/smack/packet/ExtensionElement;
    .end local v4    # "s":Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;
    :goto_2
    goto :goto_0

    .line 130
    :cond_3
    return-object v1
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 150
    const-string v0, "spoiler"

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 145
    const-string v0, "urn:xmpp:spoiler:0"

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 155
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 156
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optXmlLangAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 157
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->getHint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 161
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;->getHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 162
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 164
    :goto_0
    return-object v0
.end method
