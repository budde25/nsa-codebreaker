.class public Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "GetItemsRequest.java"


# instance fields
.field protected final maxItems:I

.field protected final subId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "nodeId"    # Ljava/lang/String;
    .param p2, "maxItemsToReturn"    # I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/lang/String;
    .param p2, "subscriptionId"    # Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "nodeId"    # Ljava/lang/String;
    .param p2, "subscriptionId"    # Ljava/lang/String;
    .param p3, "maxItemsToReturn"    # I

    .line 43
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 44
    iput p3, p0, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->maxItems:I

    .line 45
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->subId:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getMaxItems()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->maxItems:I

    return v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->subId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 58
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 59
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 60
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->getNode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "node"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 61
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 62
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->getMaxItems()I

    move-result v1

    const-string v2, "max_items"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optIntAttribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 63
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 64
    return-object v0
.end method
