.class public Lorg/jivesoftware/smackx/muc/Occupant;
.super Ljava/lang/Object;
.source "Occupant.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final affiliation:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

.field private final jid:Lorg/jxmpp/jid/Jid;

.field private final nick:Lorg/jxmpp/jid/parts/Resourcepart;

.field private final role:Lorg/jivesoftware/smackx/muc/MUCRole;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/jivesoftware/smackx/muc/Occupant;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/muc/Occupant;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 6
    .param p1, "presence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "x"

    const-string v1, "http://jabber.org/protocol/muc#user"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    .line 58
    .local v0, "mucUser":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v1

    .line 59
    .local v1, "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Lorg/jxmpp/jid/Jid;

    .line 60
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getAffiliation()Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->affiliation:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    .line 61
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getRole()Lorg/jivesoftware/smackx/muc/MUCRole;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->role:Lorg/jivesoftware/smackx/muc/MUCRole;

    .line 63
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v2

    .line 64
    .local v2, "from":Lorg/jxmpp/jid/EntityFullJid;
    if-nez v2, :cond_0

    .line 65
    sget-object v3, Lorg/jivesoftware/smackx/muc/Occupant;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Occupant presence without resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 66
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jivesoftware/smackx/muc/Occupant;->nick:Lorg/jxmpp/jid/parts/Resourcepart;

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {v2}, Lorg/jxmpp/jid/EntityFullJid;->getResourcepart()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smackx/muc/Occupant;->nick:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 70
    :goto_0
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V
    .locals 1
    .param p1, "item"    # Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Lorg/jxmpp/jid/Jid;

    .line 50
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getAffiliation()Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->affiliation:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    .line 51
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getRole()Lorg/jivesoftware/smackx/muc/MUCRole;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->role:Lorg/jivesoftware/smackx/muc/MUCRole;

    .line 52
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getNick()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->nick:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 117
    instance-of v0, p1, Lorg/jivesoftware/smackx/muc/Occupant;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/muc/Occupant;

    .line 121
    .local v0, "occupant":Lorg/jivesoftware/smackx/muc/Occupant;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Lorg/jxmpp/jid/Jid;

    iget-object v2, v0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Lorg/jxmpp/jid/Jid;

    invoke-interface {v1, v2}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public getAffiliation()Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->affiliation:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    return-object v0
.end method

.method public getJid()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getNick()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->nick:Lorg/jxmpp/jid/parts/Resourcepart;

    return-object v0
.end method

.method public getRole()Lorg/jivesoftware/smackx/muc/MUCRole;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->role:Lorg/jivesoftware/smackx/muc/MUCRole;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 127
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->affiliation:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->hashCode()I

    move-result v0

    .line 128
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->role:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muc/MUCRole;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 129
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x11

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Lorg/jxmpp/jid/Jid;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    .line 130
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->nick:Lorg/jxmpp/jid/parts/Resourcepart;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/jxmpp/jid/parts/Resourcepart;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v1, v3

    .line 131
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
