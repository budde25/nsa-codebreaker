.class public final Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;
.super Ljava/lang/Object;
.source "StandardExtensionElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/StandardExtensionElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private elements:Lorg/jivesoftware/smack/util/MultiMap;
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

.field private text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->name:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->namespace:Ljava/lang/String;

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/StandardExtensionElement$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/jivesoftware/smack/packet/StandardExtensionElement$1;

    .line 162
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 176
    const-string v0, "Attribute name must be set"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 177
    const-string v0, "Attribute value must be not null"

    invoke-static {p2, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->attributes:Ljava/util/Map;

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-object p0
.end method

.method public addAttributes(Ljava/util/Map;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;"
        }
    .end annotation

    .line 186
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->attributes:Ljava/util/Map;

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 190
    return-object p0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "textValue"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->namespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->builder(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->setText(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->build()Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    move-result-object v0

    .line 211
    .local v0, "element":Lorg/jivesoftware/smack/packet/StandardExtensionElement;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->addElement(Lorg/jivesoftware/smack/packet/StandardExtensionElement;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;

    move-result-object v1

    return-object v1
.end method

.method public addElement(Lorg/jivesoftware/smack/packet/StandardExtensionElement;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;
    .locals 2
    .param p1, "element"    # Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    .line 199
    const-string v0, "Element must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->elements:Lorg/jivesoftware/smack/util/MultiMap;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lorg/jivesoftware/smack/util/MultiMap;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/MultiMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->elements:Lorg/jivesoftware/smack/util/MultiMap;

    .line 203
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->elements:Lorg/jivesoftware/smack/util/MultiMap;

    invoke-virtual {v1, v0, p1}, Lorg/jivesoftware/smack/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    return-object p0
.end method

.method public build()Lorg/jivesoftware/smack/packet/StandardExtensionElement;
    .locals 8

    .line 215
    new-instance v7, Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->namespace:Ljava/lang/String;

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->attributes:Ljava/util/Map;

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->text:Ljava/lang/String;

    iget-object v5, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->elements:Lorg/jivesoftware/smack/util/MultiMap;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lorg/jivesoftware/smack/util/MultiMap;Lorg/jivesoftware/smack/packet/StandardExtensionElement$1;)V

    return-object v7
.end method

.method public setText(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 194
    const-string v0, "Text must be not null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StandardExtensionElement$Builder;->text:Ljava/lang/String;

    .line 195
    return-object p0
.end method
