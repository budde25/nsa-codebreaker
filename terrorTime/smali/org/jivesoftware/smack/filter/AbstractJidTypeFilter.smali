.class public abstract Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter;
.super Ljava/lang/Object;
.source "AbstractJidTypeFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/StanzaFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;
    }
.end annotation


# instance fields
.field private final jidType:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;)V
    .locals 0
    .param p1, "jidType"    # Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter;->jidType:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    .line 38
    return-void
.end method


# virtual methods
.method public final accept(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 4
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 44
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter;->getJidToInspect(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 46
    .local v0, "jid":Lorg/jxmpp/jid/Jid;
    if-nez v0, :cond_0

    .line 47
    const/4 v1, 0x0

    return v1

    .line 50
    :cond_0
    sget-object v1, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$1;->$SwitchMap$org$jivesoftware$smack$filter$AbstractJidTypeFilter$JidType:[I

    iget-object v2, p0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter;->jidType:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 60
    return v2

    .line 62
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 58
    :cond_2
    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->isDomainBareJid()Z

    move-result v1

    return v1

    .line 56
    :cond_3
    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->isDomainFullJid()Z

    move-result v1

    return v1

    .line 54
    :cond_4
    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->isEntityBareJid()Z

    move-result v1

    return v1

    .line 52
    :cond_5
    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->isEntityFullJid()Z

    move-result v1

    return v1
.end method

.method protected abstract getJidToInspect(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jxmpp/jid/Jid;
.end method
