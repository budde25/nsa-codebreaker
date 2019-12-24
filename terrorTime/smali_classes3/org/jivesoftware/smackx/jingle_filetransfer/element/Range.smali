.class public Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# static fields
.field public static final ATTR_LENGTH:Ljava/lang/String; = "length"

.field public static final ATTR_OFFSET:Ljava/lang/String; = "offset"

.field public static final ELEMENT:Ljava/lang/String; = "range"


# instance fields
.field private final hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;-><init>(IILorg/jivesoftware/smackx/hashes/element/HashElement;)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "length"    # I

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;-><init>(IILorg/jivesoftware/smackx/hashes/element/HashElement;)V

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;-><init>(IILorg/jivesoftware/smackx/hashes/element/HashElement;)V

    .line 57
    return-void
.end method

.method public constructor <init>(IILorg/jivesoftware/smackx/hashes/element/HashElement;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "hash"    # Lorg/jivesoftware/smackx/hashes/element/HashElement;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->offset:I

    .line 67
    iput p2, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->length:I

    .line 68
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    if-nez v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 125
    :cond_2
    :goto_0
    return v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "range"

    return-object v0
.end method

.method public getHash()Lorg/jivesoftware/smackx/hashes/element/HashElement;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 85
    iget v0, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 103
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 105
    .local v0, "sb":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->offset:I

    if-lez v1, :cond_0

    .line 106
    const-string v2, "offset"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 108
    :cond_0
    iget v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->length:I

    if-lez v1, :cond_1

    .line 109
    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 112
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 114
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 115
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 119
    :goto_0
    return-object v0
.end method
