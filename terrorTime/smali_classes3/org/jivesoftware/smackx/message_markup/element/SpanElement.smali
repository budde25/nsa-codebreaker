.class public Lorg/jivesoftware/smackx/message_markup/element/SpanElement;
.super Ljava/lang/Object;
.source "SpanElement.java"

# interfaces
.implements Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "span"

.field public static final code:Ljava/lang/String; = "code"

.field public static final deleted:Ljava/lang/String; = "deleted"

.field public static final emphasis:Ljava/lang/String; = "emphasis"


# instance fields
.field private final end:I

.field private final start:I

.field private final styles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/Set;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p3, "styles":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->start:I

    .line 40
    iput p2, p0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->end:I

    .line 41
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->styles:Ljava/util/Set;

    .line 42
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "span"

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->start:I

    return v0
.end method

.method public getStyles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->styles:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 80
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 81
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 82
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->getStart()I

    move-result v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 83
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->getEnd()I

    move-result v1

    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 84
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 86
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->getStyles()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    .line 87
    .local v2, "style":Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 88
    .end local v2    # "style":Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 91
    return-object v0
.end method
