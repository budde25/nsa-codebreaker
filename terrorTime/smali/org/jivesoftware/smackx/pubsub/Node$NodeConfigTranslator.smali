.class public Lorg/jivesoftware/smackx/pubsub/Node$NodeConfigTranslator;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/pubsub/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeConfigTranslator"
.end annotation


# instance fields
.field private final listener:Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;)V
    .locals 0
    .param p1, "eventListener"    # Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Node$NodeConfigTranslator;->listener:Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;

    .line 672
    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 676
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->event:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/EventElement;

    .line 677
    .local v0, "event":Lorg/jivesoftware/smackx/pubsub/EventElement;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/EventElement;->getEvent()Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;

    .line 680
    .local v1, "config":Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Node$NodeConfigTranslator;->listener:Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;

    invoke-interface {v2, v1}, Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;->handleNodeConfiguration(Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;)V

    .line 681
    return-void
.end method
