.class public Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;
.super Ljava/lang/Object;
.source "CarbonExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;,
        Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:carbons:2"


# instance fields
.field private final dir:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

.field private final fwd:Lorg/jivesoftware/smackx/forward/packet/Forwarded;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;Lorg/jivesoftware/smackx/forward/packet/Forwarded;)V
    .locals 0
    .param p1, "dir"    # Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;
    .param p2, "fwd"    # Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;->dir:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    .line 50
    iput-object p2, p0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;->fwd:Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    .line 51
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;
    .locals 3
    .param p0, "msg"    # Lorg/jivesoftware/smack/packet/Message;

    .line 117
    sget-object v0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;->received:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:xmpp:carbons:2"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;

    .line 118
    .local v0, "cc":Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;
    if-nez v0, :cond_0

    .line 119
    sget-object v2, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;->sent:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;

    .line 120
    :cond_0
    return-object v0
.end method

.method public static getFrom(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;
    .locals 1
    .param p0, "msg"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-static {p0}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;->from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDirection()Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;->dir:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;->dir:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForwarded()Lorg/jivesoftware/smackx/forward/packet/Forwarded;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;->fwd:Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "urn:xmpp:carbons:2"

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 83
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 84
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 85
    iget-object v1, p0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;->fwd:Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 86
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 87
    return-object v0
.end method
