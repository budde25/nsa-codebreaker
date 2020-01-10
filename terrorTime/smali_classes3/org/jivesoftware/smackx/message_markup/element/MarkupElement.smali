.class public Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;
.super Ljava/lang/Object;
.source "MarkupElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$BlockLevelMarkupElement;,
        Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;,
        Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "markup"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:markup:0"


# instance fields
.field private final childElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "childElements":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;->childElements:Ljava/util/List;

    .line 42
    return-void
.end method

.method public static getBuilder()Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
    .locals 2

    .line 49
    new-instance v0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;-><init>(Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$1;)V

    return-object v0
.end method


# virtual methods
.method public getChildElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;->childElements:Ljava/util/List;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "markup"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "urn:xmpp:markup:0"

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 72
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 74
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;->getChildElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;

    .line 75
    .local v2, "child":Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 76
    .end local v2    # "child":Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 79
    return-object v0
.end method
