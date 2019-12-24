.class public Lorg/jivesoftware/smackx/pubsub/FormNode;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "FormNode.java"


# instance fields
.field private final configForm:Lorg/jivesoftware/smackx/xdata/Form;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/FormNodeType;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/Form;)V
    .locals 2
    .param p1, "formType"    # Lorg/jivesoftware/smackx/pubsub/FormNodeType;
    .param p2, "nodeId"    # Ljava/lang/String;
    .param p3, "submitForm"    # Lorg/jivesoftware/smackx/xdata/Form;

    .line 55
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/FormNodeType;->getNodeElement()Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 57
    if-eqz p3, :cond_0

    .line 59
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/FormNode;->configForm:Lorg/jivesoftware/smackx/xdata/Form;

    .line 60
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Submit form cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/FormNodeType;Lorg/jivesoftware/smackx/xdata/Form;)V
    .locals 2
    .param p1, "formType"    # Lorg/jivesoftware/smackx/pubsub/FormNodeType;
    .param p2, "submitForm"    # Lorg/jivesoftware/smackx/xdata/Form;

    .line 39
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/FormNodeType;->getNodeElement()Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    .line 41
    if-eqz p2, :cond_0

    .line 43
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/FormNode;->configForm:Lorg/jivesoftware/smackx/xdata/Form;

    .line 44
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Submit form cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getForm()Lorg/jivesoftware/smackx/xdata/Form;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/FormNode;->configForm:Lorg/jivesoftware/smackx/xdata/Form;

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/FormNode;->configForm:Lorg/jivesoftware/smackx/xdata/Form;

    if-nez v0, :cond_0

    .line 74
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getNode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    if-eqz v1, :cond_1

    .line 81
    const-string v1, " node=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/FormNode;->configForm:Lorg/jivesoftware/smackx/xdata/Form;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
