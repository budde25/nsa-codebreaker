.class public Lorg/jivesoftware/smackx/forward/packet/Forwarded;
.super Ljava/lang/Object;
.source "Forwarded.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "forwarded"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:forward:0"


# instance fields
.field private final delay:Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

.field private final forwardedPacket:Lorg/jivesoftware/smack/packet/Stanza;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 1
    .param p1, "fwdPacket"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/forward/packet/Forwarded;-><init>(Lorg/jivesoftware/smackx/delay/packet/DelayInformation;Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/delay/packet/DelayInformation;Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 0
    .param p1, "delay"    # Lorg/jivesoftware/smackx/delay/packet/DelayInformation;
    .param p2, "fwdPacket"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->delay:Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    .line 51
    iput-object p2, p0, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->forwardedPacket:Lorg/jivesoftware/smack/packet/Stanza;

    .line 52
    return-void
.end method

.method public static extractMessagesFrom(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/forward/packet/Forwarded;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation

    .line 130
    .local p0, "forwardedCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/forward/packet/Forwarded;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Message;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    .line 132
    .local v2, "forwarded":Lorg/jivesoftware/smackx/forward/packet/Forwarded;
    iget-object v3, v2, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->forwardedPacket:Lorg/jivesoftware/smack/packet/Stanza;

    check-cast v3, Lorg/jivesoftware/smack/packet/Message;

    .line 133
    .local v3, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v2    # "forwarded":Lorg/jivesoftware/smackx/forward/packet/Forwarded;
    .end local v3    # "message":Lorg/jivesoftware/smack/packet/Message;
    goto :goto_0

    .line 135
    :cond_0
    return-object v0
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/forward/packet/Forwarded;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 118
    const-string v0, "forwarded"

    const-string v1, "urn:xmpp:forward:0"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    return-object v0
.end method


# virtual methods
.method public getDelayInformation()Lorg/jivesoftware/smackx/delay/packet/DelayInformation;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->delay:Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "forwarded"

    return-object v0
.end method

.method public getForwardedPacket()Lorg/jivesoftware/smack/packet/Stanza;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->forwardedPacket:Lorg/jivesoftware/smack/packet/Stanza;

    return-object v0
.end method

.method public getForwardedStanza()Lorg/jivesoftware/smack/packet/Stanza;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->forwardedPacket:Lorg/jivesoftware/smack/packet/Stanza;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "urn:xmpp:forward:0"

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 75
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 76
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 77
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->getDelayInformation()Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 78
    iget-object v1, p0, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->forwardedPacket:Lorg/jivesoftware/smack/packet/Stanza;

    const-string v2, "urn:xmpp:forward:0"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Stanza;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 79
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 80
    return-object v0
.end method
