.class public Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;
.super Ljava/lang/Object;
.source "MultipleAddresses.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;,
        Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "addresses"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/address"


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addresses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAddress(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;
    .param p2, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p3, "node"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "delivered"    # Z
    .param p6, "uri"    # Ljava/lang/String;

    .line 72
    new-instance v0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;-><init>(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$1;)V

    .line 73
    .local v0, "address":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    invoke-static {v0, p2}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->access$100(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;Lorg/jxmpp/jid/Jid;)V

    .line 74
    invoke-static {v0, p3}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->access$200(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;Ljava/lang/String;)V

    .line 75
    invoke-static {v0, p4}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->access$300(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;Ljava/lang/String;)V

    .line 76
    invoke-static {v0, p5}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->access$400(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;Z)V

    .line 77
    invoke-static {v0, p6}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->access$500(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public getAddressesOfType(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;)Ljava/util/List;
    .locals 4
    .param p1, "type"    # Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;>;"
    iget-object v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;

    .line 102
    .local v2, "address":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->getType()Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v2    # "address":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 112
    const-string v0, "addresses"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 117
    const-string v0, "http://jabber.org/protocol/address"

    return-object v0
.end method

.method public setNoReply()V
    .locals 3

    .line 87
    new-instance v0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;

    sget-object v1, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->noreply:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;-><init>(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$1;)V

    .line 89
    .local v0, "address":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    iget-object v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 122
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 123
    .local v0, "buf":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 125
    iget-object v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;

    .line 126
    .local v2, "address":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 127
    .end local v2    # "address":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 129
    return-object v0
.end method
