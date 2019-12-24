.class public Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;
.super Ljava/lang/Object;
.source "BlockQuoteElement.java"

# interfaces
.implements Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$BlockLevelMarkupElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "bquote"


# instance fields
.field private final end:I

.field private final start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;->start:I

    .line 35
    iput p2, p0, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;->end:I

    .line 36
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "bquote"

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;->start:I

    return v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 55
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 56
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 57
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;->getStart()I

    move-result v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 58
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;->getEnd()I

    move-result v1

    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 59
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 60
    return-object v0
.end method
