.class public Lorg/jivesoftware/smackx/pubsub/RetractItem;
.super Ljava/lang/Object;
.source "RetractItem.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 39
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/RetractItem;->id:Ljava/lang/String;

    .line 40
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemId must not be \'null\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "retract"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/RetractItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->event:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/RetractItem;->toXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<retract id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/RetractItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
