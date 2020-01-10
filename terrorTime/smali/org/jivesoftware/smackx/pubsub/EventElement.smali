.class public Lorg/jivesoftware/smackx/pubsub/EventElement;
.super Ljava/lang/Object;
.source "EventElement.java"

# interfaces
.implements Lorg/jivesoftware/smackx/pubsub/EmbeddedPacketExtension;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "event"

.field public static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private final ext:Lorg/jivesoftware/smackx/pubsub/NodeExtension;

.field private final type:Lorg/jivesoftware/smackx/pubsub/EventElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->event:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElement;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/EventElementType;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)V
    .locals 0
    .param p1, "eventType"    # Lorg/jivesoftware/smackx/pubsub/EventElementType;
    .param p2, "eventExt"    # Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/EventElement;->type:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 52
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/EventElement;->ext:Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    .line 53
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/pubsub/EventElement;
    .locals 2
    .param p0, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 88
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/EventElement;->NAMESPACE:Ljava/lang/String;

    const-string v1, "event"

    invoke-virtual {p0, v1, v0}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/EventElement;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "event"

    return-object v0
.end method

.method public getEvent()Lorg/jivesoftware/smackx/pubsub/NodeExtension;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/EventElement;->ext:Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    return-object v0
.end method

.method public getEventType()Lorg/jivesoftware/smackx/pubsub/EventElementType;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/EventElement;->type:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;"
        }
    .end annotation

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/ExtensionElement;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/EventElement;->getEvent()Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->event:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/EventElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 80
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 81
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 82
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/EventElement;->ext:Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 83
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 84
    return-object v0
.end method
