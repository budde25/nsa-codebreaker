.class public final Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
.super Ljava/lang/Object;
.source "JingleFileTransferChild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private desc:Ljava/lang/String;

.field private hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

.field private mediaType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private range:Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

.field private size:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$1;

    .line 110
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;
    .locals 9

    .line 158
    new-instance v8, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->date:Ljava/util/Date;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->desc:Ljava/lang/String;

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->mediaType:Ljava/lang/String;

    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->name:Ljava/lang/String;

    iget v6, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->size:I

    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->range:Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;-><init>(Ljava/util/Date;Ljava/lang/String;Lorg/jivesoftware/smackx/hashes/element/HashElement;Ljava/lang/String;Ljava/lang/String;ILorg/jivesoftware/smackx/jingle_filetransfer/element/Range;)V

    return-object v8
.end method

.method public setDate(Ljava/util/Date;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .line 123
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->date:Ljava/util/Date;

    .line 124
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->desc:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public setFile(Ljava/io/File;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 162
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setDate(Ljava/util/Date;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setSize(I)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    move-result-object v0

    .line 162
    return-object v0
.end method

.method public setHash(Lorg/jivesoftware/smackx/hashes/element/HashElement;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    .locals 0
    .param p1, "hash"    # Lorg/jivesoftware/smackx/hashes/element/HashElement;

    .line 133
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->hash:Lorg/jivesoftware/smackx/hashes/element/HashElement;

    .line 134
    return-object p0
.end method

.method public setMediaType(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    .locals 0
    .param p1, "mediaType"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->mediaType:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->name:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public setRange(Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    .locals 0
    .param p1, "range"    # Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    .line 153
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->range:Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    .line 154
    return-object p0
.end method

.method public setSize(I)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    .locals 0
    .param p1, "size"    # I

    .line 148
    iput p1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->size:I

    .line 149
    return-object p0
.end method
