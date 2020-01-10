.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCLightBlockingIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:muclight:0#blocking"


# instance fields
.field private final rooms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final users:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "rooms":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    .local p2, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    const-string v0, "query"

    const-string v1, "urn:xmpp:muclight:0#blocking"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->rooms:Ljava/util/HashMap;

    .line 53
    iput-object p2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->users:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method private parseBlocking(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;Ljava/util/HashMap;Z)V
    .locals 6
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .param p3, "isRoom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 90
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 93
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    new-instance v2, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$BlockingElement;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jxmpp/jid/Jid;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$BlockingElement;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 94
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 76
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->rooms:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->parseBlocking(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;Ljava/util/HashMap;Z)V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->users:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 83
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->parseBlocking(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;Ljava/util/HashMap;Z)V

    .line 86
    :cond_1
    return-object p1
.end method

.method public getRooms()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->rooms:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUsers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->users:Ljava/util/HashMap;

    return-object v0
.end method
