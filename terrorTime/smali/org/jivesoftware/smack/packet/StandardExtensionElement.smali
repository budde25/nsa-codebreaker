.class public final Lorg/jivesoftware/smack/packet/StandardExtensionElement;
.super Ljava/lang/Object;
.source "StandardExtensionElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final elements:Lorg/jivesoftware/smack/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/MultiMap<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/packet/StandardExtensionElement;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final namespace:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private xmlCache:Lorg/jivesoftware/smack/util/XmlStringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 64
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lorg/jivesoftware/smack/util/MultiMap;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lorg/jivesoftware/smack/util/MultiMap;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/util/MultiMap<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/packet/StandardExtensionElement;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "elements":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<Ljava/lang/String;Lorg/jivesoftware/smack/packet/StandardExtensionElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "Name must not be null or empty"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->name:Ljava/lang/String;

    .line 70
    const-string v0, "Namespace must not be null or empty"

    invoke-static {p2, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->namespace:Ljava/lang/String;

    .line 71
    if-nez p3, :cond_0

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->attributes:Ljava/util/Map;

    goto :goto_0

    .line 75
    :cond_0
    iput-object p3, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->attributes:Ljava/util/Map;

    .line 77
    :goto_0
    iput-object p4, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->text:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->elements:Lorg/jivesoftware/smack/util/MultiMap;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lorg/jivesoftware/smack/util/MultiMap;Lorg/jivesoftware/smack/packet/StandardExtensionElement$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lorg/jivesoftware/smack/util/MultiMap;
    .param p6, "x5"    # Lorg/jivesoftware/smack/packet/StandardExtensionElement$1;

    .line 44
    invoke-direct/range {p0 .. p5}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lorg/jivesoftware/smack/util/MultiMap;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;

    .line 159
    new-instance v0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/StandardExtensionElement$1;)V

    return-object v0
.end method


# virtual methods
.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attribute"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
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

    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->attributes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/StandardExtensionElement;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->elements:Lorg/jivesoftware/smack/util/MultiMap;

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/MultiMap;->values()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElements(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "element"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/StandardExtensionElement;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->namespace:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->getElements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/StandardExtensionElement;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->elements:Lorg/jivesoftware/smack/util/MultiMap;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    invoke-static {p1, p2}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->elements:Lorg/jivesoftware/smack/util/MultiMap;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/util/MultiMap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFirstElement(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StandardExtensionElement;
    .locals 1
    .param p1, "element"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->namespace:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->getFirstElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    move-result-object v0

    return-object v0
.end method

.method public getFirstElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StandardExtensionElement;
    .locals 2
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->elements:Lorg/jivesoftware/smack/util/MultiMap;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    invoke-static {p1, p2}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->elements:Lorg/jivesoftware/smack/util/MultiMap;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/util/MultiMap;->getFirst(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    return-object v1
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 5
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->xmlCache:Lorg/jivesoftware/smack/util/XmlStringBuilder;

    if-eqz v0, :cond_0

    .line 137
    return-object v0

    .line 139
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;Ljava/lang/String;)V

    .line 140
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->attributes:Ljava/util/Map;

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

    .line 141
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 142
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 145
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optEscape(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 147
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->elements:Lorg/jivesoftware/smack/util/MultiMap;

    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 149
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jivesoftware/smack/packet/StandardExtensionElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 150
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jivesoftware/smack/packet/StandardExtensionElement;>;"
    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 154
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->xmlCache:Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 155
    return-object v0
.end method
