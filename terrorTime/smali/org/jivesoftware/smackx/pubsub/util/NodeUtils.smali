.class public Lorg/jivesoftware/smackx/pubsub/util/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormFromPacket(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smackx/pubsub/ConfigureForm;
    .locals 3
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p1, "elem"    # Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 40
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/FormNode;

    .line 41
    .local v0, "config":Lorg/jivesoftware/smackx/pubsub/FormNode;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getForm()Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v1

    .line 42
    .local v1, "formReply":Lorg/jivesoftware/smackx/xdata/Form;
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;-><init>(Lorg/jivesoftware/smackx/xdata/Form;)V

    return-object v2
.end method
