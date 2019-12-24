.class public Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;
.super Ljava/lang/Object;
.source "FileTooLargeError.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "file-too-large"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:http:upload:0"


# instance fields
.field private final maxFileSize:J

.field private final namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxFileSize"    # J

    .line 38
    const-string v0, "urn:xmpp:http:upload:0"

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;-><init>(JLjava/lang/String;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "maxFileSize"    # J
    .param p3, "namespace"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;->maxFileSize:J

    .line 43
    iput-object p3, p0, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;->namespace:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;
    .locals 3
    .param p0, "iq"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 70
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v0

    .line 71
    .local v0, "error":Lorg/jivesoftware/smack/packet/StanzaError;
    if-nez v0, :cond_0

    .line 72
    const/4 v1, 0x0

    return-object v1

    .line 74
    :cond_0
    const-string v1, "file-too-large"

    const-string v2, "urn:xmpp:http:upload:0"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/packet/StanzaError;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;

    return-object v1
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "file-too-large"

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;->maxFileSize:J

    return-wide v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 62
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 63
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 64
    iget-wide v1, p0, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;->maxFileSize:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "max-file-size"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 65
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 66
    return-object v0
.end method
