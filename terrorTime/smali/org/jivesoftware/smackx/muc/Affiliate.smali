.class public Lorg/jivesoftware/smackx/muc/Affiliate;
.super Ljava/lang/Object;
.source "Affiliate.java"


# instance fields
.field private final affiliation:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

.field private final jid:Lorg/jxmpp/jid/Jid;

.field private final nick:Lorg/jxmpp/jid/parts/Resourcepart;

.field private final role:Lorg/jivesoftware/smackx/muc/MUCRole;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V
    .locals 1
    .param p1, "item"    # Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->jid:Lorg/jxmpp/jid/Jid;

    .line 43
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getAffiliation()Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->affiliation:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    .line 44
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getRole()Lorg/jivesoftware/smackx/muc/MUCRole;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->role:Lorg/jivesoftware/smackx/muc/MUCRole;

    .line 45
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getNick()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->nick:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 46
    return-void
.end method


# virtual methods
.method public getAffiliation()Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->affiliation:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    return-object v0
.end method

.method public getJid()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->jid:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getNick()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->nick:Lorg/jxmpp/jid/parts/Resourcepart;

    return-object v0
.end method

.method public getRole()Lorg/jivesoftware/smackx/muc/MUCRole;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->role:Lorg/jivesoftware/smackx/muc/MUCRole;

    return-object v0
.end method
