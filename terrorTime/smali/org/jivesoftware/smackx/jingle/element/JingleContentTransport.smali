.class public abstract Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
.super Ljava/lang/Object;
.source "JingleContentTransport.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "transport"


# instance fields
.field protected final candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;",
            ">;"
        }
    .end annotation
.end field

.field protected final info:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;-><init>(Ljava/util/List;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;)V
    .locals 1
    .param p2, "info"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;",
            ">;",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;",
            ")V"
        }
    .end annotation

    .line 40
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportCandidate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->candidates:Ljava/util/List;

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->candidates:Ljava/util/List;

    .line 48
    :goto_0
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->info:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;

    .line 49
    return-void
.end method


# virtual methods
.method protected addExtraAttributes(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V
    .locals 0
    .param p1, "xml"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 66
    return-void
.end method

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

    .line 52
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->candidates:Ljava/util/List;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "transport"

    return-object v0
.end method

.method public getInfo()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->info:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 70
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 71
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->addExtraAttributes(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 73
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->candidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->info:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 79
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->candidates:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/util/Collection;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 80
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->info:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransportInfo;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 81
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 84
    :goto_0
    return-object v0
.end method
