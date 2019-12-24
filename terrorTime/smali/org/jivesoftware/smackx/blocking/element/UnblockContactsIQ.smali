.class public Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "UnblockContactsIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "unblock"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:blocking"


# instance fields
.field private final jids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;-><init>(Ljava/util/List;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "jids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    const-string v0, "unblock"

    const-string v1, "urn:xmpp:blocking"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;->jids:Ljava/util/List;

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;->jids:Ljava/util/List;

    .line 63
    :goto_0
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 3
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 83
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;->jids:Ljava/util/List;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 85
    return-object p1

    .line 88
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;->jids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jxmpp/jid/Jid;

    .line 90
    .local v1, "jid":Lorg/jxmpp/jid/Jid;
    const-string v2, "item"

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 91
    const-string v2, "jid"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 92
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 93
    .end local v1    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_0

    .line 95
    :cond_1
    return-object p1
.end method

.method public getJids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;->jids:Ljava/util/List;

    return-object v0
.end method
