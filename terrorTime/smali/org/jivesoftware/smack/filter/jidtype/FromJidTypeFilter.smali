.class public Lorg/jivesoftware/smack/filter/jidtype/FromJidTypeFilter;
.super Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter;
.source "FromJidTypeFilter.java"


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;)V
    .locals 0
    .param p1, "jidType"    # Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    .line 32
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter;-><init>(Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getJidToMatchFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jxmpp/jid/Jid;
    .locals 1
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 37
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Stanza;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    return-object v0
.end method
