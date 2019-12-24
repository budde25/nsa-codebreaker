.class public Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;
.super Ljava/lang/Object;
.source "Checksum.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ATTR_CREATOR:Ljava/lang/String; = "creator"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ELEMENT:Ljava/lang/String; = "checksum"


# instance fields
.field private final creator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

.field private final file:Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;)V
    .locals 2
    .param p1, "creator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "file"    # Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;->creator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    .line 38
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;->name:Ljava/lang/String;

    .line 39
    const-string v0, "file MUST NOT be null."

    invoke-static {p3, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;->file:Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;

    .line 40
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->getHash()Lorg/jivesoftware/smackx/hashes/element/HashElement;

    move-result-object v0

    const-string v1, "file MUST contain at least one hash element."

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "checksum"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "urn:xmpp:jingle:apps:file-transfer:5"

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 50
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 51
    .local v0, "sb":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;->creator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    const-string v2, "creator"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 52
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 53
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 54
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;->file:Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 55
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 56
    return-object v0
.end method
