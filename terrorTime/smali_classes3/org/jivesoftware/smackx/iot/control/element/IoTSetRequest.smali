.class public Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IoTSetRequest.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "set"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:control"


# instance fields
.field private final setData:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/iot/control/element/SetData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jivesoftware/smackx/iot/control/element/SetData;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "setData":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jivesoftware/smackx/iot/control/element/SetData;>;"
    const-string v0, "set"

    const-string v1, "urn:xmpp:iot:control"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .local v0, "tmp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/iot/control/element/SetData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/iot/control/element/SetData;

    .line 47
    .local v2, "data":Lorg/jivesoftware/smackx/iot/control/element/SetData;
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v2    # "data":Lorg/jivesoftware/smackx/iot/control/element/SetData;
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;->setData:Ljava/util/Collection;

    .line 50
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 1
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 58
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;->setData:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Ljava/util/Collection;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 60
    return-object p1
.end method

.method public getSetData()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/iot/control/element/SetData;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;->setData:Ljava/util/Collection;

    return-object v0
.end method
