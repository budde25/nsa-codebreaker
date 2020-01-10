.class public abstract Lorg/jivesoftware/smack/filter/AbstractFromToMatchesFilter;
.super Ljava/lang/Object;
.source "AbstractFromToMatchesFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/StanzaFilter;


# instance fields
.field private final address:Lorg/jxmpp/jid/Jid;

.field private final ignoreResourcepart:Z


# direct methods
.method protected constructor <init>(Lorg/jxmpp/jid/Jid;Z)V
    .locals 1
    .param p1, "address"    # Lorg/jxmpp/jid/Jid;
    .param p2, "ignoreResourcepart"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 43
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/AbstractFromToMatchesFilter;->address:Lorg/jxmpp/jid/Jid;

    goto :goto_0

    .line 46
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/filter/AbstractFromToMatchesFilter;->address:Lorg/jxmpp/jid/Jid;

    .line 48
    :goto_0
    iput-boolean p2, p0, Lorg/jivesoftware/smack/filter/AbstractFromToMatchesFilter;->ignoreResourcepart:Z

    .line 49
    return-void
.end method


# virtual methods
.method public final accept(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 2
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 53
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/filter/AbstractFromToMatchesFilter;->getAddressToCompare(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 55
    .local v0, "stanzaAddress":Lorg/jxmpp/jid/Jid;
    if-nez v0, :cond_1

    .line 56
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/AbstractFromToMatchesFilter;->address:Lorg/jxmpp/jid/Jid;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 59
    :cond_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/filter/AbstractFromToMatchesFilter;->ignoreResourcepart:Z

    if-eqz v1, :cond_2

    .line 60
    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    .line 63
    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/AbstractFromToMatchesFilter;->address:Lorg/jxmpp/jid/Jid;

    invoke-interface {v0, v1}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method protected abstract getAddressToCompare(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jxmpp/jid/Jid;
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 70
    iget-boolean v0, p0, Lorg/jivesoftware/smack/filter/AbstractFromToMatchesFilter;->ignoreResourcepart:Z

    if-eqz v0, :cond_0

    const-string v0, "ignoreResourcepart"

    goto :goto_0

    :cond_0
    const-string v0, "full"

    .line 71
    .local v0, "matchMode":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smack/filter/AbstractFromToMatchesFilter;->address:Lorg/jxmpp/jid/Jid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
