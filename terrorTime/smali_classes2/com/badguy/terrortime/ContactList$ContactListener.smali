.class Lcom/badguy/terrortime/ContactList$ContactListener;
.super Ljava/lang/Object;
.source "ContactList.java"

# interfaces
.implements Lorg/jivesoftware/smack/roster/RosterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badguy/terrortime/ContactList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/ContactList;


# direct methods
.method private constructor <init>(Lcom/badguy/terrortime/ContactList;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/badguy/terrortime/ContactList$ContactListener;->this$0:Lcom/badguy/terrortime/ContactList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/badguy/terrortime/ContactList;Lcom/badguy/terrortime/ContactList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/badguy/terrortime/ContactList;
    .param p2, "x1"    # Lcom/badguy/terrortime/ContactList$1;

    .line 127
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/ContactList$ContactListener;-><init>(Lcom/badguy/terrortime/ContactList;)V

    return-void
.end method


# virtual methods
.method public entriesAdded(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList$ContactListener;->this$0:Lcom/badguy/terrortime/ContactList;

    invoke-static {v0, p1}, Lcom/badguy/terrortime/ContactList;->access$100(Lcom/badguy/terrortime/ContactList;Ljava/util/Collection;)V

    .line 131
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList$ContactListener;->this$0:Lcom/badguy/terrortime/ContactList;

    const-string v1, "XMPP_CONTACTS_CHANGED"

    invoke-static {v0, v1}, Lcom/badguy/terrortime/ContactList;->access$200(Lcom/badguy/terrortime/ContactList;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public entriesDeleted(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList$ContactListener;->this$0:Lcom/badguy/terrortime/ContactList;

    invoke-virtual {v0}, Lcom/badguy/terrortime/ContactList;->refreshContactList()V

    .line 143
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList$ContactListener;->this$0:Lcom/badguy/terrortime/ContactList;

    const-string v1, "XMPP_CONTACTS_CHANGED"

    invoke-static {v0, v1}, Lcom/badguy/terrortime/ContactList;->access$200(Lcom/badguy/terrortime/ContactList;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public entriesUpdated(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList$ContactListener;->this$0:Lcom/badguy/terrortime/ContactList;

    invoke-virtual {v0}, Lcom/badguy/terrortime/ContactList;->refreshContactList()V

    .line 137
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList$ContactListener;->this$0:Lcom/badguy/terrortime/ContactList;

    const-string v1, "XMPP_CONTACTS_CHANGED"

    invoke-static {v0, v1}, Lcom/badguy/terrortime/ContactList;->access$200(Lcom/badguy/terrortime/ContactList;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 6
    .param p1, "presence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 148
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 149
    .local v0, "jid":Lorg/jxmpp/jid/Jid;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 150
    .local v1, "available":Z
    :goto_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->getLocalpartOrNull()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v2

    .line 151
    .local v2, "local":Lorg/jxmpp/jid/parts/Localpart;
    if-nez v2, :cond_1

    .line 152
    iget-object v3, p0, Lcom/badguy/terrortime/ContactList$ContactListener;->this$0:Lcom/badguy/terrortime/ContactList;

    invoke-static {v3}, Lcom/badguy/terrortime/ContactList;->access$300(Lcom/badguy/terrortime/ContactList;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/badguy/terrortime/ContactList$ContactListener;->this$0:Lcom/badguy/terrortime/ContactList;

    invoke-static {v3}, Lcom/badguy/terrortime/ContactList;->access$300(Lcom/badguy/terrortime/ContactList;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jxmpp/jid/parts/Localpart;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_1
    if-eqz v1, :cond_2

    .line 158
    iget-object v3, p0, Lcom/badguy/terrortime/ContactList$ContactListener;->this$0:Lcom/badguy/terrortime/ContactList;

    invoke-static {v3}, Lcom/badguy/terrortime/ContactList;->access$400(Lcom/badguy/terrortime/ContactList;)Lcom/badguy/terrortime/Client;

    move-result-object v3

    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/Client;->getContact(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badguy/terrortime/Contact;

    .line 159
    .local v3, "contact":Lcom/badguy/terrortime/Contact;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/badguy/terrortime/Contact;->toggleRefreshOn()V

    .line 161
    .end local v3    # "contact":Lcom/badguy/terrortime/Contact;
    :cond_2
    iget-object v3, p0, Lcom/badguy/terrortime/ContactList$ContactListener;->this$0:Lcom/badguy/terrortime/ContactList;

    const-string v4, "XMPP_CONTACTS_CHANGED"

    invoke-static {v3, v4}, Lcom/badguy/terrortime/ContactList;->access$200(Lcom/badguy/terrortime/ContactList;Ljava/lang/String;)V

    .line 162
    return-void
.end method
