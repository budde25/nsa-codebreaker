.class public Lorg/jivesoftware/smack/util/XmlStringBuilder;
.super Ljava/lang/Object;
.source "XmlStringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;
.implements Lorg/jivesoftware/smack/packet/Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final RIGHT_ANGLE_BRACKET:Ljava/lang/String;


# instance fields
.field private final enclosingNamespace:Ljava/lang/String;

.field private final sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    nop

    .line 31
    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->RIGHT_ANGLE_BRACKET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 43
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->enclosingNamespace:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V
    .locals 0
    .param p1, "pe"    # Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 47
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->prelude(Lorg/jivesoftware/smack/packet/ExtensionElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/ExtensionElement;Ljava/lang/String;)V
    .locals 1
    .param p1, "ee"    # Lorg/jivesoftware/smack/packet/ExtensionElement;
    .param p2, "enclosingNamespace"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "namespace":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->prelude(Lorg/jivesoftware/smack/packet/ExtensionElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/NamedElement;)V
    .locals 1
    .param p1, "e"    # Lorg/jivesoftware/smack/packet/NamedElement;

    .line 52
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 53
    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/NamedElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 54
    return-void
.end method

.method private appendXmlTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p1, "res"    # Ljava/lang/StringBuilder;
    .param p2, "enclosingNamespace"    # Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->getAsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 584
    .local v1, "csq":Ljava/lang/CharSequence;
    instance-of v2, v1, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    if-eqz v2, :cond_0

    .line 585
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v2, p1, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->appendXmlTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 587
    :cond_0
    instance-of v2, v1, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;

    if-eqz v2, :cond_2

    .line 588
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;

    .line 589
    .local v2, "xmlNsAttribute":Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;
    invoke-static {v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->access$100(Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 590
    iget-object v3, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 591
    invoke-static {v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->access$100(Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;)Ljava/lang/String;

    move-result-object p2

    .line 593
    .end local v2    # "xmlNsAttribute":Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;
    :cond_1
    goto :goto_1

    .line 595
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 597
    .end local v1    # "csq":Ljava/lang/CharSequence;
    :goto_1
    goto :goto_0

    .line 598
    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(C)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;II)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "c"    # C

    .line 511
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(C)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 512
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 497
    nop

    .line 498
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 499
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 504
    nop

    .line 505
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;II)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 506
    return-object p0
.end method

.method public append(Ljava/util/Collection;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jivesoftware/smack/packet/Element;",
            ">;)",
            "Lorg/jivesoftware/smack/util/XmlStringBuilder;"
        }
    .end annotation

    .line 462
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jivesoftware/smack/packet/Element;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/util/Collection;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/util/Collection;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p2, "enclosingNamespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jivesoftware/smack/packet/Element;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jivesoftware/smack/util/XmlStringBuilder;"
        }
    .end annotation

    .line 466
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jivesoftware/smack/packet/Element;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/Element;

    .line 467
    .local v1, "element":Lorg/jivesoftware/smack/packet/Element;
    invoke-interface {v1, p2}, Lorg/jivesoftware/smack/packet/Element;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 468
    .end local v1    # "element":Lorg/jivesoftware/smack/packet/Element;
    goto :goto_0

    .line 469
    :cond_0
    return-object p0
.end method

.method public append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "xsb"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 456
    nop

    .line 457
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    iget-object v1, p1, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Lorg/jivesoftware/smack/util/LazyStringBuilder;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 458
    return-object p0
.end method

.method public attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 275
    nop

    .line 276
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 265
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/jivesoftware/smack/util/XmlStringBuilder;"
        }
    .end annotation

    .line 269
    .local p2, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    nop

    .line 270
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 271
    return-object p0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 240
    nop

    .line 241
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(C)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 242
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escapeAttributeValue(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 243
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(C)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 244
    return-object p0
.end method

.method public attribute(Ljava/lang/String;Ljava/util/Date;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .line 260
    nop

    .line 261
    invoke-static {p2}, Lorg/jxmpp/util/XmppDateTime;->formatXEP0082Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bool"    # Z

    .line 248
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 522
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 197
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 198
    return-object p0
.end method

.method public closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "e"    # Lorg/jivesoftware/smack/packet/NamedElement;

    .line 202
    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/NamedElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 203
    return-object p0
.end method

.method public closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2

    .line 207
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 208
    return-object p0
.end method

.method public condAttribute(ZLjava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 0
    .param p1, "condition"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 489
    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p0, p2, p3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 492
    :cond_0
    return-object p0
.end method

.method public condEmptyElement(ZLjava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 0
    .param p1, "condition"    # Z
    .param p2, "element"    # Ljava/lang/String;

    .line 482
    if-eqz p1, :cond_0

    .line 483
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 485
    :cond_0
    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/CharSequence;

    .line 108
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/jivesoftware/smack/util/XmlStringBuilder;"
        }
    .end annotation

    .line 112
    .local p2, "content":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    nop

    .line 113
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 114
    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 82
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 83
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 84
    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/util/Date;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/util/Date;

    .line 96
    nop

    .line 97
    invoke-static {p2}, Lorg/jxmpp/util/XmppDateTime;->formatXEP0082Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "element"    # Lorg/jivesoftware/smack/packet/Element;

    .line 118
    nop

    .line 119
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/packet/Element;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public emptyElement(Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/jivesoftware/smack/util/XmlStringBuilder;"
        }
    .end annotation

    .line 473
    .local p1, "element":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public emptyElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "element"    # Ljava/lang/String;

    .line 477
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 478
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 537
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 538
    const/4 v0, 0x0

    return v0

    .line 540
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .line 541
    .local v0, "otherCharSequenceBuilder":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public escape(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 428
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 409
    nop

    .line 410
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 411
    return-object p0
.end method

.method public escapeAttributeValue(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 415
    nop

    .line 416
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXmlAttributeApos(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 417
    return-object p0
.end method

.method public escapedElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "escapedContent"    # Ljava/lang/String;

    .line 63
    nop

    .line 64
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 65
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 66
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 67
    return-object p0
.end method

.method public halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 181
    nop

    .line 182
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(C)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 183
    return-object p0
.end method

.method public halfOpenElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "namedElement"    # Lorg/jivesoftware/smack/packet/NamedElement;

    .line 187
    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/NamedElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 546
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 517
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 191
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 192
    return-object p0
.end method

.method public optAppend(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 0
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 442
    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 445
    :cond_0
    return-object p0
.end method

.method public optAppend(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "element"    # Lorg/jivesoftware/smack/packet/Element;

    .line 449
    if-eqz p1, :cond_0

    .line 450
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->enclosingNamespace:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/packet/Element;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 452
    :cond_0
    return-object p0
.end method

.method public optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 303
    if-eqz p2, :cond_0

    .line 304
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 306
    :cond_0
    return-object p0
.end method

.method public optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/jivesoftware/smack/util/XmlStringBuilder;"
        }
    .end annotation

    .line 310
    .local p2, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-eqz p2, :cond_0

    .line 311
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 313
    :cond_0
    return-object p0
.end method

.method public optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 280
    if-eqz p2, :cond_0

    .line 281
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 283
    :cond_0
    return-object p0
.end method

.method public optAttribute(Ljava/lang/String;Ljava/util/Date;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .line 296
    if-eqz p2, :cond_0

    .line 297
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/util/Date;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 299
    :cond_0
    return-object p0
.end method

.method public optBooleanAttribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bool"    # Z

    .line 345
    if-eqz p2, :cond_0

    .line 346
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(C)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    move-result-object v0

    const-string v1, "=\'true\'"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 348
    :cond_0
    return-object p0
.end method

.method public optBooleanAttributeDefaultTrue(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bool"    # Z

    .line 352
    if-nez p2, :cond_0

    .line 353
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(C)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    move-result-object v0

    const-string v1, "=\'false\'"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 355
    :cond_0
    return-object p0
.end method

.method public optElement(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/CharSequence;

    .line 146
    if-eqz p2, :cond_0

    .line 147
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 149
    :cond_0
    return-object p0
.end method

.method public optElement(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/jivesoftware/smack/util/XmlStringBuilder;"
        }
    .end annotation

    .line 160
    .local p2, "content":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 163
    :cond_0
    return-object p0
.end method

.method public optElement(Ljava/lang/String;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .line 167
    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 170
    :cond_0
    return-object p0
.end method

.method public optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 123
    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 126
    :cond_0
    return-object p0
.end method

.method public optElement(Ljava/lang/String;Ljava/util/Date;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/util/Date;

    .line 139
    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/util/Date;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 142
    :cond_0
    return-object p0
.end method

.method public optElement(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "element"    # Lorg/jivesoftware/smack/packet/Element;

    .line 153
    if-eqz p1, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/packet/Element;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 156
    :cond_0
    return-object p0
.end method

.method public optEscape(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 421
    if-nez p1, :cond_0

    .line 422
    return-object p0

    .line 424
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public optIntAttribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 324
    if-ltz p2, :cond_0

    .line 325
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 327
    :cond_0
    return-object p0
.end method

.method public optIntElement(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 174
    if-ltz p2, :cond_0

    .line 175
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 177
    :cond_0
    return-object p0
.end method

.method public optLongAttribute(Ljava/lang/String;Ljava/lang/Long;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .line 338
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 339
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 341
    :cond_0
    return-object p0
.end method

.method public optXmlLangAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .line 402
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->xmllangAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 405
    :cond_0
    return-object p0
.end method

.method public prelude(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 0
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 436
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 437
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->xmlnsAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 438
    return-object p0
.end method

.method public prelude(Lorg/jivesoftware/smack/packet/ExtensionElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "pe"    # Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 432
    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->prelude(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public rightAngelBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    sget-object v1, Lorg/jivesoftware/smack/util/XmlStringBuilder;->RIGHT_ANGLE_BRACKET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 218
    return-object p0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 527
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->appendXmlTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 579
    return-object v0
.end method

.method public write(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "enclosingNamespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->sb:Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->getAsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 559
    .local v1, "csq":Ljava/lang/CharSequence;
    instance-of v2, v1, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    if-eqz v2, :cond_0

    .line 560
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-virtual {v2, p1, p2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_1

    .line 562
    :cond_0
    instance-of v2, v1, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;

    if-eqz v2, :cond_2

    .line 563
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;

    .line 564
    .local v2, "xmlNsAttribute":Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;
    invoke-static {v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->access$100(Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 565
    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 566
    invoke-static {v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;->access$100(Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;)Ljava/lang/String;

    move-result-object p2

    .line 568
    .end local v2    # "xmlNsAttribute":Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;
    :cond_1
    goto :goto_1

    .line 570
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 572
    .end local v1    # "csq":Ljava/lang/CharSequence;
    :goto_1
    goto :goto_0

    .line 573
    :cond_3
    return-void
.end method

.method public xmllangAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 397
    const-string v0, "xml:lang"

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 398
    return-object p0
.end method

.method public xmlnsAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 389
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/util/XmlStringBuilder;->enclosingNamespace:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/util/XmlStringBuilder$1;)V

    .line 391
    .local v0, "xmlNsAttribute":Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 393
    .end local v0    # "xmlNsAttribute":Lorg/jivesoftware/smack/util/XmlStringBuilder$XmlNsAttribute;
    :cond_0
    return-object p0
.end method
