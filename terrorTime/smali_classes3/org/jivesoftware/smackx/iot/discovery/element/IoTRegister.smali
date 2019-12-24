.class public Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IoTRegister.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "register"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:discovery"


# instance fields
.field private final nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

.field private final selfOwned:Z

.field private final tags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/iot/discovery/element/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lorg/jivesoftware/smackx/iot/element/NodeInfo;Z)V
    .locals 2
    .param p2, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .param p3, "selfOwned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/iot/discovery/element/Tag;",
            ">;",
            "Lorg/jivesoftware/smackx/iot/element/NodeInfo;",
            "Z)V"
        }
    .end annotation

    .line 35
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/iot/discovery/element/Tag;>;"
    const-string v0, "register"

    const-string v1, "urn:xmpp:iot:discovery"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;->tags:Ljava/util/Collection;

    .line 40
    iput-object p2, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 41
    iput-boolean p3, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;->selfOwned:Z

    .line 42
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 46
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->appendTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 47
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;->selfOwned:Z

    const-string v1, "selfOwned"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optBooleanAttribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 48
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;->tags:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Ljava/util/Collection;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 52
    return-object p1
.end method
