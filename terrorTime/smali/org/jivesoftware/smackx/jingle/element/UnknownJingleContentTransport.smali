.class public final Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentTransport;
.super Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
.source "UnknownJingleContentTransport.java"


# instance fields
.field private final standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/packet/StandardExtensionElement;)V
    .locals 1
    .param p1, "standardExtensionElement"    # Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;-><init>(Ljava/util/List;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;)V

    .line 30
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentTransport;->standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    .line 31
    return-void
.end method


# virtual methods
.method public getCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentTransport;->standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentTransport;->standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandardExtensionElement()Lorg/jivesoftware/smack/packet/StandardExtensionElement;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentTransport;->standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentTransport;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentTransport;->standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method
