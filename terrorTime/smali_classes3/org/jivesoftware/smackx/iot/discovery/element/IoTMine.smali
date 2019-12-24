.class public Lorg/jivesoftware/smackx/iot/discovery/element/IoTMine;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IoTMine.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "mine"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:discovery"


# instance fields
.field private final metaTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/iot/discovery/element/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private final publicThing:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 1
    .param p2, "publicThing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/iot/discovery/element/Tag;",
            ">;Z)V"
        }
    .end annotation

    .line 34
    .local p1, "metaTags":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/iot/discovery/element/Tag;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTMine;-><init>(Ljava/util/List;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 2
    .param p2, "publicThing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/iot/discovery/element/Tag;",
            ">;Z)V"
        }
    .end annotation

    .line 38
    .local p1, "metaTags":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/iot/discovery/element/Tag;>;"
    const-string v0, "mine"

    const-string v1, "urn:xmpp:iot:discovery"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTMine;->metaTags:Ljava/util/List;

    .line 40
    iput-boolean p2, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTMine;->publicThing:Z

    .line 41
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 45
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTMine;->publicThing:Z

    const-string v1, "public"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optBooleanAttributeDefaultTrue(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 46
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTMine;->metaTags:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Ljava/util/Collection;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 49
    return-object p1
.end method
