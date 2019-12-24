.class public abstract Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter;
.super Ljava/lang/Object;
.source "AbstractJidTypeFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/StanzaFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;
    }
.end annotation


# instance fields
.field private final jidType:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;)V
    .locals 1
    .param p1, "jidType"    # Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "jidType must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter;->jidType:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    .line 37
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 2
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 41
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter;->getJidToMatchFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 42
    .local v0, "toMatch":Lorg/jxmpp/jid/Jid;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x0

    return v1

    .line 45
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter;->jidType:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->isTypeOf(Lorg/jxmpp/jid/Jid;)Z

    move-result v1

    return v1
.end method

.method protected abstract getJidToMatchFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jxmpp/jid/Jid;
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter;->jidType:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
