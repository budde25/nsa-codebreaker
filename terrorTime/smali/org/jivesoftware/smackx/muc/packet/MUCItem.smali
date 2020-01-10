.class public Lorg/jivesoftware/smackx/muc/packet/MUCItem;
.super Ljava/lang/Object;
.source "MUCItem.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "item"


# instance fields
.field private final actor:Lorg/jxmpp/jid/Jid;

.field private final actorNick:Lorg/jxmpp/jid/parts/Resourcepart;

.field private final affiliation:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

.field private final jid:Lorg/jxmpp/jid/Jid;

.field private final nick:Lorg/jxmpp/jid/parts/Resourcepart;

.field private final reason:Ljava/lang/String;

.field private final role:Lorg/jivesoftware/smackx/muc/MUCRole;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V
    .locals 8
    .param p1, "affiliation"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    .line 46
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 0
    .param p1, "affiliation"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .param p2, "role"    # Lorg/jivesoftware/smackx/muc/MUCRole;
    .param p3, "actor"    # Lorg/jxmpp/jid/Jid;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p6, "nick"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .param p7, "actorNick"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->affiliation:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    .line 83
    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->role:Lorg/jivesoftware/smackx/muc/MUCRole;

    .line 84
    iput-object p3, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->actor:Lorg/jxmpp/jid/Jid;

    .line 85
    iput-object p4, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->reason:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->jid:Lorg/jxmpp/jid/Jid;

    .line 87
    iput-object p6, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->nick:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 88
    iput-object p7, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->actorNick:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jxmpp/jid/Jid;)V
    .locals 8
    .param p1, "affiliation"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .param p2, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 62
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
    .locals 8
    .param p1, "affiliation"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .param p2, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p3, "reason"    # Ljava/lang/String;

    .line 58
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/muc/MUCRole;)V
    .locals 8
    .param p1, "role"    # Lorg/jivesoftware/smackx/muc/MUCRole;

    .line 50
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 8
    .param p1, "role"    # Lorg/jivesoftware/smackx/muc/MUCRole;
    .param p2, "nick"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 54
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/parts/Resourcepart;Ljava/lang/String;)V
    .locals 8
    .param p1, "role"    # Lorg/jivesoftware/smackx/muc/MUCRole;
    .param p2, "nick"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .param p3, "reason"    # Ljava/lang/String;

    .line 66
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getActor()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->actor:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getActorNick()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->actorNick:Lorg/jxmpp/jid/parts/Resourcepart;

    return-object v0
.end method

.method public getAffiliation()Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->affiliation:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 181
    const-string v0, "item"

    return-object v0
.end method

.method public getJid()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->jid:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getNick()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->nick:Lorg/jxmpp/jid/parts/Resourcepart;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Lorg/jivesoftware/smackx/muc/MUCRole;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->role:Lorg/jivesoftware/smackx/muc/MUCRole;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 165
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 166
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getAffiliation()Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    move-result-object v1

    const-string v2, "affiliation"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 167
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    const-string v2, "jid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 168
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getNick()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v1

    const-string v3, "nick"

    invoke-virtual {v0, v3, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 169
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getRole()Lorg/jivesoftware/smackx/muc/MUCRole;

    move-result-object v1

    const-string v3, "role"

    invoke-virtual {v0, v3, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 170
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 171
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string v3, "reason"

    invoke-virtual {v0, v3, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 172
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getActor()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "actor"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getActor()Lorg/jxmpp/jid/Jid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 175
    :cond_0
    const-string v1, "item"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 176
    return-object v0
.end method
