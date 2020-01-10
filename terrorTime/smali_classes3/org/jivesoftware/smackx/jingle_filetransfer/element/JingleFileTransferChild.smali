.class public Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;
.super Lorg/jivesoftware/smackx/jingle/element/JingleContentDescriptionChildElement;
.source "JingleFileTransferChild.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "file"

.field public static final ELEM_DATE:Ljava/lang/String; = "date"

.field public static final ELEM_DESC:Ljava/lang/String; = "desc"

.field public static final ELEM_MEDIA_TYPE:Ljava/lang/String; = "media-type"

.field public static final ELEM_NAME:Ljava/lang/String; = "name"

.field public static final ELEM_SIZE:Ljava/lang/String; = "size"


# instance fields
.field private final date:Ljava/util/Date;

.field private final desc:Ljava/lang/String;

.field private final hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

.field private final mediaType:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final range:Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

.field private final size:I


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Lorg/jivesoftware/smackx/hashes/element/HashElement;Ljava/lang/String;Ljava/lang/String;ILorg/jivesoftware/smackx/jingle_filetransfer/element/Range;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "hash"    # Lorg/jivesoftware/smackx/hashes/element/HashElement;
    .param p4, "mediaType"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "size"    # I
    .param p7, "range"    # Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    .line 45
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/element/JingleContentDescriptionChildElement;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->date:Ljava/util/Date;

    .line 47
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->desc:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

    .line 49
    iput-object p4, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->mediaType:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->name:Ljava/lang/String;

    .line 51
    iput p6, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->size:I

    .line 52
    iput-object p7, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->range:Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    .line 53
    return-void
.end method

.method public static getBuilder()Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    .locals 2

    .line 107
    new-instance v0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;-><init>(Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$1;)V

    return-object v0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "file"

    return-object v0
.end method

.method public getHash()Lorg/jivesoftware/smackx/hashes/element/HashElement;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->range:Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->size:I

    return v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 90
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 91
    .local v0, "sb":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 93
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->date:Ljava/util/Date;

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/util/Date;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 94
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->desc:Ljava/lang/String;

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 95
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->mediaType:Ljava/lang/String;

    const-string v2, "media-type"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 96
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 97
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->range:Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 98
    iget v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->size:I

    if-lez v1, :cond_0

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 101
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 102
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 103
    return-object v0
.end method
