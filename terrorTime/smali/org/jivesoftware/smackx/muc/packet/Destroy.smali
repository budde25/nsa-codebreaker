.class public Lorg/jivesoftware/smackx/muc/packet/Destroy;
.super Ljava/lang/Object;
.source "Destroy.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;
.implements Ljava/io/Serializable;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "destroy"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final jid:Lorg/jxmpp/jid/EntityBareJid;

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/muc/packet/Destroy;)V
    .locals 2
    .param p1, "other"    # Lorg/jivesoftware/smackx/muc/packet/Destroy;

    .line 45
    iget-object v0, p1, Lorg/jivesoftware/smackx/muc/packet/Destroy;->jid:Lorg/jxmpp/jid/EntityBareJid;

    iget-object v1, p1, Lorg/jivesoftware/smackx/muc/packet/Destroy;->reason:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/muc/packet/Destroy;-><init>(Lorg/jxmpp/jid/EntityBareJid;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/EntityBareJid;Ljava/lang/String;)V
    .locals 0
    .param p1, "alternativeJid"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p2, "reason"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/packet/Destroy;->jid:Lorg/jxmpp/jid/EntityBareJid;

    .line 50
    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/packet/Destroy;->reason:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/Destroy;->clone()Lorg/jivesoftware/smackx/muc/packet/Destroy;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jivesoftware/smackx/muc/packet/Destroy;
    .locals 1

    .line 88
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/Destroy;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/packet/Destroy;-><init>(Lorg/jivesoftware/smackx/muc/packet/Destroy;)V

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "destroy"

    return-object v0
.end method

.method public getJid()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/Destroy;->jid:Lorg/jxmpp/jid/EntityBareJid;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/Destroy;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/packet/Destroy;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 73
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 74
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/Destroy;->getJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    const-string v2, "jid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 75
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 76
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/Destroy;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 77
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 78
    return-object v0
.end method
