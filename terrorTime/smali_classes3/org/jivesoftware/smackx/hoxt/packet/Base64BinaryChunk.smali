.class public Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;
.super Ljava/lang/Object;
.source "Base64BinaryChunk.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ATTRIBUTE_LAST:Ljava/lang/String; = "last"

.field public static final ATTRIBUTE_NR:Ljava/lang/String; = "nr"

.field public static final ATTRIBUTE_STREAM_ID:Ljava/lang/String; = "streamId"

.field public static final ELEMENT_CHUNK:Ljava/lang/String; = "chunk"


# instance fields
.field private final last:Z

.field private final nr:I

.field private final streamId:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "streamId"    # Ljava/lang/String;
    .param p3, "nr"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "streamId"    # Ljava/lang/String;
    .param p3, "nr"    # I
    .param p4, "last"    # Z

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "text must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->text:Ljava/lang/String;

    .line 54
    const-string v0, "streamId must not be null"

    invoke-static {p2, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->streamId:Ljava/lang/String;

    .line 55
    if-ltz p3, :cond_0

    .line 58
    iput p3, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->nr:I

    .line 59
    iput-boolean p4, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->last:Z

    .line 60
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nr must be a non negative integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 111
    const-string v0, "chunk"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "urn:xmpp:http"

    return-object v0
.end method

.method public getNr()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->nr:I

    return v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isLast()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->last:Z

    return v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 121
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 122
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->streamId:Ljava/lang/String;

    const-string v2, "streamId"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 123
    iget v1, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->nr:I

    const-string v2, "nr"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 124
    iget-boolean v1, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->last:Z

    const-string v2, "last"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optBooleanAttribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 125
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 126
    iget-object v1, p0, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 127
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 128
    return-object v0
.end method
