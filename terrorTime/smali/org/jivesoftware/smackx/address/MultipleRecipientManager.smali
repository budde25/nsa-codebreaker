.class public Lorg/jivesoftware/smackx/address/MultipleRecipientManager;
.super Ljava/lang/Object;
.source "MultipleRecipientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMultipleRecipientInfo(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 205
    const-string v0, "addresses"

    const-string v1, "http://jabber.org/protocol/address"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;

    .line 206
    .local v0, "extension":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;-><init>(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;)V

    :goto_0
    return-object v1
.end method

.method private static getMultipleRecipientServiceAddress(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jxmpp/jid/DomainBareJid;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 287
    invoke-static {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 288
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const-string v1, "http://jabber.org/protocol/address"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findService(Ljava/lang/String;Z)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1

    return-object v1
.end method

.method public static reply(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 13
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "original"    # Lorg/jivesoftware/smack/packet/Message;
    .param p2, "reply"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lorg/jivesoftware/smackx/address/MultipleRecipientManager;->getMultipleRecipientInfo(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;

    move-result-object v0

    .line 150
    .local v0, "info":Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;
    if-eqz v0, :cond_8

    .line 153
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->shouldNotReply()Z

    move-result v1

    if-nez v1, :cond_7

    .line 156
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->getReplyRoom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    if-nez v1, :cond_6

    .line 160
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->getReplyAddress()Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;

    move-result-object v1

    .line 164
    .local v1, "replyAddress":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 166
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jivesoftware/smack/packet/Message;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 167
    invoke-interface {p0, p2}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    goto/16 :goto_2

    .line 171
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->getTOAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v2, "to":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->getCCAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v3, "cc":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->getTOAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;

    .line 174
    .local v5, "jid":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v5    # "jid":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientInfo;->getCCAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;

    .line 177
    .restart local v5    # "jid":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v5    # "jid":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    goto :goto_1

    .line 180
    :cond_3
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 181
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_4
    invoke-interface {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v12

    .line 185
    .local v12, "from":Lorg/jxmpp/jid/EntityFullJid;
    invoke-interface {v2, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 186
    invoke-interface {v12}, Lorg/jxmpp/jid/EntityFullJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v4

    .line 187
    .local v4, "bareJID":Lorg/jxmpp/jid/EntityBareJid;
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 188
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 191
    .end local v4    # "bareJID":Lorg/jxmpp/jid/EntityBareJid;
    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    move-object v5, p2

    move-object v6, v2

    move-object v7, v3

    invoke-static/range {v4 .. v11}, Lorg/jivesoftware/smackx/address/MultipleRecipientManager;->send(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/packet/Stanza;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/Jid;Z)V

    .line 193
    .end local v2    # "to":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    .end local v3    # "cc":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    .end local v12    # "from":Lorg/jxmpp/jid/EntityFullJid;
    :goto_2
    return-void

    .line 157
    .end local v1    # "replyAddress":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    :cond_6
    new-instance v1, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "Reply should be sent through a room"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_7
    new-instance v1, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "Original message should not be replied"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_8
    new-instance v1, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "Original message does not contain multiple recipient info"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static send(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/packet/Stanza;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 8
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 77
    .local p2, "to":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p3, "cc":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p4, "bcc":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lorg/jivesoftware/smackx/address/MultipleRecipientManager;->send(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/packet/Stanza;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/Jid;Z)V

    .line 78
    return-void
.end method

.method public static send(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/packet/Stanza;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/Jid;Z)V
    .locals 11
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p5, "replyTo"    # Lorg/jxmpp/jid/Jid;
    .param p6, "replyRoom"    # Lorg/jxmpp/jid/Jid;
    .param p7, "noReply"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jxmpp/jid/Jid;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 109
    .local p2, "to":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p3, "cc":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p4, "bcc":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    if-nez p7, :cond_4

    .line 110
    invoke-static/range {p5 .. p5}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static/range {p6 .. p6}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/Jid;

    .line 112
    .local v0, "toJid":Lorg/jxmpp/jid/Jid;
    move-object v9, p1

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Stanza;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 113
    invoke-interface {p0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 114
    return-void

    .line 110
    .end local v0    # "toJid":Lorg/jxmpp/jid/Jid;
    :cond_3
    move-object v9, p1

    goto :goto_1

    .line 109
    :cond_4
    move-object v9, p1

    .line 116
    :goto_1
    invoke-static {p0}, Lorg/jivesoftware/smackx/address/MultipleRecipientManager;->getMultipleRecipientServiceAddress(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v10

    .line 117
    .local v10, "serviceAddress":Lorg/jxmpp/jid/DomainBareJid;
    if-eqz v10, :cond_5

    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v10

    invoke-static/range {v0 .. v8}, Lorg/jivesoftware/smackx/address/MultipleRecipientManager;->sendThroughService(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/packet/Stanza;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/Jid;ZLorg/jxmpp/jid/DomainBareJid;)V

    goto :goto_2

    .line 124
    :cond_5
    if-nez p7, :cond_6

    if-nez p5, :cond_6

    if-nez p6, :cond_6

    .line 131
    invoke-static {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/address/MultipleRecipientManager;->sendToIndividualRecipients(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/packet/Stanza;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 133
    :goto_2
    return-void

    .line 128
    :cond_6
    new-instance v0, Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException;

    const-string v1, "Extended Stanza Addressing"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sendThroughService(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/packet/Stanza;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/Jid;ZLorg/jxmpp/jid/DomainBareJid;)V
    .locals 11
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p5, "replyTo"    # Lorg/jxmpp/jid/Jid;
    .param p6, "replyRoom"    # Lorg/jxmpp/jid/Jid;
    .param p7, "noReply"    # Z
    .param p8, "serviceAddress"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jxmpp/jid/Jid;",
            "Z",
            "Lorg/jxmpp/jid/DomainBareJid;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 235
    .local p2, "to":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p3, "cc":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p4, "bcc":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    move-object v0, p1

    new-instance v1, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;-><init>()V

    .line 236
    .local v1, "multipleAddresses":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;
    if-eqz p2, :cond_0

    .line 237
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/jxmpp/jid/Jid;

    .line 238
    .local v10, "jid":Lorg/jxmpp/jid/Jid;
    sget-object v3, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->to:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, v10

    invoke-virtual/range {v2 .. v8}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addAddress(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 239
    .end local v10    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_0

    .line 241
    :cond_0
    if-eqz p3, :cond_1

    .line 242
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/jxmpp/jid/Jid;

    .line 243
    .restart local v10    # "jid":Lorg/jxmpp/jid/Jid;
    sget-object v3, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->to:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, v10

    invoke-virtual/range {v2 .. v8}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addAddress(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 244
    .end local v10    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_1

    .line 246
    :cond_1
    if-eqz p4, :cond_2

    .line 247
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/jxmpp/jid/Jid;

    .line 248
    .restart local v10    # "jid":Lorg/jxmpp/jid/Jid;
    sget-object v3, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->bcc:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, v10

    invoke-virtual/range {v2 .. v8}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addAddress(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 249
    .end local v10    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_2

    .line 251
    :cond_2
    if-eqz p7, :cond_3

    .line 252
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->setNoReply()V

    goto :goto_3

    .line 255
    :cond_3
    if-eqz p5, :cond_4

    .line 256
    sget-object v3, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->replyto:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 257
    move-object v2, v1

    move-object/from16 v4, p5

    invoke-virtual/range {v2 .. v8}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addAddress(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 259
    :cond_4
    if-eqz p6, :cond_5

    .line 260
    sget-object v3, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->replyroom:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object/from16 v4, p6

    invoke-virtual/range {v2 .. v8}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addAddress(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 265
    :cond_5
    :goto_3
    move-object/from16 v2, p8

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/Stanza;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 267
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/Stanza;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 269
    invoke-interface {p0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 270
    return-void
.end method

.method private static sendToIndividualRecipients(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/packet/Stanza;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 5
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 211
    .local p2, "to":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p3, "cc":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p4, "bcc":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 212
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jxmpp/jid/Jid;

    .line 213
    .local v2, "jid":Lorg/jxmpp/jid/Jid;
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/Stanza;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 214
    new-instance v3, Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Stanza;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;-><init>(Ljava/lang/CharSequence;Lorg/jivesoftware/smackx/address/MultipleRecipientManager$1;)V

    invoke-interface {p0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 215
    .end local v2    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_0

    .line 217
    :cond_0
    if-eqz p3, :cond_1

    .line 218
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jxmpp/jid/Jid;

    .line 219
    .restart local v2    # "jid":Lorg/jxmpp/jid/Jid;
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/Stanza;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 220
    new-instance v3, Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Stanza;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;-><init>(Ljava/lang/CharSequence;Lorg/jivesoftware/smackx/address/MultipleRecipientManager$1;)V

    invoke-interface {p0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 221
    .end local v2    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_1

    .line 223
    :cond_1
    if-eqz p4, :cond_2

    .line 224
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jxmpp/jid/Jid;

    .line 225
    .restart local v2    # "jid":Lorg/jxmpp/jid/Jid;
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/Stanza;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 226
    new-instance v3, Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Stanza;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/jivesoftware/smackx/address/MultipleRecipientManager$PacketCopy;-><init>(Ljava/lang/CharSequence;Lorg/jivesoftware/smackx/address/MultipleRecipientManager$1;)V

    invoke-interface {p0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 227
    .end local v2    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_2

    .line 229
    :cond_2
    return-void
.end method
