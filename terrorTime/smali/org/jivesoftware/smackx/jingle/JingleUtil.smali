.class public Lorg/jivesoftware/smackx/jingle/JingleUtil;
.super Ljava/lang/Object;
.source "JingleUtil.java"


# instance fields
.field private final connection:Lorg/jivesoftware/smack/XMPPConnection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 43
    return-void
.end method


# virtual methods
.method public createAck(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "jingle"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 333
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method public createErrorMalformedRequest(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 483
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v0

    return-object v0
.end method

.method public createErrorOutOfOrder(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 471
    invoke-static {}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder()Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    .line 472
    .local v0, "error":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->unexpected_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setCondition(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleError;->OUT_OF_ORDER:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    .line 473
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    .line 474
    invoke-static {p1, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v1

    return-object v1
.end method

.method public createErrorTieBreak(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 459
    invoke-static {}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder()Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    .line 460
    .local v0, "error":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->conflict:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setCondition(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleError;->TIE_BREAK:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    .line 461
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    .line 462
    invoke-static {p1, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v1

    return-object v1
.end method

.method public createErrorUnknownInitiator(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 438
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v0

    return-object v0
.end method

.method public createErrorUnknownSession(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 426
    invoke-static {}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder()Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    .line 427
    .local v0, "error":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setCondition(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleError;->UNKNOWN_SESSION:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    .line 428
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    .line 429
    invoke-static {p1, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v1

    return-object v1
.end method

.method public createErrorUnsupportedInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 447
    invoke-static {}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder()Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    .line 448
    .local v0, "error":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->feature_not_implemented:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setCondition(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleError;->UNSUPPORTED_INFO:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    .line 449
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    .line 450
    invoke-static {p1, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v1

    return-object v1
.end method

.method public createSessionAccept(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 4
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p4, "contentName"    # Ljava/lang/String;
    .param p5, "contentSenders"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .param p6, "description"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    .param p7, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 118
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 119
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setResponder(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_accept:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 120
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 123
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v1

    .line 124
    .local v1, "cb":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    .line 125
    invoke-virtual {v2, p4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    .line 126
    invoke-virtual {v2, p5}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setSenders(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    .line 127
    invoke-virtual {v2, p6}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setDescription(Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    .line 128
    invoke-virtual {v2, p7}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 130
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v2

    .line 131
    .local v2, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 132
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 134
    return-object v2
.end method

.method public createSessionInitiate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 4
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p4, "contentName"    # Ljava/lang/String;
    .param p5, "contentSenders"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .param p6, "description"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    .param p7, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 53
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 54
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    sget-object v1, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_initiate:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 56
    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setInitiator(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 58
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v1

    .line 59
    .local v1, "cb":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    .line 60
    invoke-virtual {v2, p4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    .line 61
    invoke-virtual {v2, p5}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setSenders(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    .line 62
    invoke-virtual {v2, p6}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setDescription(Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2, p7}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 65
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v2

    .line 66
    .local v2, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 67
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 69
    return-object v2
.end method

.method public createSessionInitiateFileOffer(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 8
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p4, "contentName"    # Ljava/lang/String;
    .param p5, "description"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    .param p6, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 78
    sget-object v5, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->initiator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionInitiate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createSessionPing(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 3
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 314
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 315
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 316
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 318
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v1

    .line 319
    .local v1, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 320
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 322
    return-object v1
.end method

.method public createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "reason"    # Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 166
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason;

    invoke-direct {v0, p3}, Lorg/jivesoftware/smackx/jingle/element/JingleReason;-><init>(Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 3
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "reason"    # Lorg/jivesoftware/smackx/jingle/element/JingleReason;

    .line 153
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 154
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    sget-object v1, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_terminate:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setReason(Lorg/jivesoftware/smackx/jingle/element/JingleReason;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 158
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v1

    .line 159
    .local v1, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 160
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 162
    return-object v1
.end method

.method public createSessionTerminateAlternativeSession(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "altSessionId"    # Ljava/lang/String;

    .line 206
    invoke-static {p3}, Lorg/jivesoftware/smackx/jingle/element/JingleReason;->AlternativeSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleReason$AlternativeSession;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createSessionTerminateBusy(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 194
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->busy:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createSessionTerminateCancel(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 218
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->cancel:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createSessionTerminateContentCancel(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 4
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p4, "contentName"    # Ljava/lang/String;

    .line 232
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 233
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    sget-object v1, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_terminate:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 236
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v1

    .line 237
    .local v1, "cb":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 239
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v2

    .line 240
    .local v2, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 241
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 243
    return-object v2
.end method

.method public createSessionTerminateDecline(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 170
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->decline:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createSessionTerminateFailedApplication(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 288
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->failed_application:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createSessionTerminateFailedTransport(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 266
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->failed_transport:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createSessionTerminateIncompatibleParameters(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 299
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->incompatible_parameters:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createSessionTerminateSuccess(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 182
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->success:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createSessionTerminateUnsupportedApplications(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 277
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->unsupported_applications:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createSessionTerminateUnsupportedTransports(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 255
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->unsupported_transports:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public createTransportAccept(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 4
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p5, "contentName"    # Ljava/lang/String;
    .param p6, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 370
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 371
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    sget-object v1, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_accept:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    .line 372
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setInitiator(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    .line 373
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 375
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v1

    .line 376
    .local v1, "cb":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    invoke-virtual {v1, p4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 378
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v2

    .line 379
    .local v2, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 380
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 382
    return-object v2
.end method

.method public createTransportReject(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 4
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p5, "contentName"    # Ljava/lang/String;
    .param p6, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 397
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 398
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    sget-object v1, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_reject:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    .line 399
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setInitiator(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    .line 400
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 402
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v1

    .line 403
    .local v1, "cb":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    invoke-virtual {v1, p4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 405
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v2

    .line 406
    .local v2, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 407
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 409
    return-object v2
.end method

.method public createTransportReplace(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 4
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p5, "contentName"    # Ljava/lang/String;
    .param p6, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 343
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 344
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setInitiator(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    .line 345
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_replace:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 346
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 348
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v1

    .line 349
    .local v1, "cb":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    invoke-virtual {v1, p5}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 350
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v2

    .line 352
    .local v2, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 353
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 355
    return-object v2
.end method

.method public sendAck(Lorg/jivesoftware/smackx/jingle/element/Jingle;)V
    .locals 2
    .param p1, "jingle"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createAck(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 338
    return-void
.end method

.method public sendContentRejectFileNotAvailable(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "description"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendErrorMalformedRequest(Lorg/jivesoftware/smackx/jingle/element/Jingle;)V
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createErrorMalformedRequest(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 489
    return-void
.end method

.method public sendErrorOutOfOrder(Lorg/jivesoftware/smackx/jingle/element/Jingle;)V
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createErrorOutOfOrder(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 480
    return-void
.end method

.method public sendErrorTieBreak(Lorg/jivesoftware/smackx/jingle/element/Jingle;)V
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createErrorTieBreak(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 468
    return-void
.end method

.method public sendErrorUnknownInitiator(Lorg/jivesoftware/smackx/jingle/element/Jingle;)V
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createErrorUnknownInitiator(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 444
    return-void
.end method

.method public sendErrorUnknownSession(Lorg/jivesoftware/smackx/jingle/element/Jingle;)V
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createErrorUnknownSession(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 435
    return-void
.end method

.method public sendErrorUnsupportedInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)V
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createErrorUnsupportedInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 456
    return-void
.end method

.method public sendSessionAccept(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p4, "contentName"    # Ljava/lang/String;
    .param p5, "contentSenders"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .param p6, "description"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    .param p7, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 146
    invoke-virtual/range {p0 .. p7}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionAccept(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 149
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResult()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionInitiate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p4, "contentName"    # Ljava/lang/String;
    .param p5, "contentSenders"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .param p6, "description"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    .param p7, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    invoke-virtual/range {p0 .. p7}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionInitiate(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 107
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResult()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionInitiateFileOffer(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p4, "contentName"    # Ljava/lang/String;
    .param p5, "description"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    .param p6, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 91
    invoke-virtual/range {p0 .. p6}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionInitiateFileOffer(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 92
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionPing(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 328
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionPing(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 329
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionTerminateAlternativeSession(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "altSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateAlternativeSession(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 214
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionTerminateBusy(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateBusy(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 202
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionTerminateCancel(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateCancel(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 227
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionTerminateContentCancel(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p4, "contentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateContentCancel(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 251
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionTerminateDecline(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateDecline(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 178
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionTerminateFailedApplication(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateFailedApplication(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 295
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionTerminateFailedTransport(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateFailedTransport(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 273
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionTerminateIncompatibleParameters(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateIncompatibleParameters(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 306
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionTerminateSuccess(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateSuccess(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 190
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionTerminateUnsupportedApplications(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateUnsupportedApplications(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 284
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendSessionTerminateUnsupportedTransports(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 261
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createSessionTerminateUnsupportedTransports(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 262
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendTransportAccept(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p5, "contentName"    # Ljava/lang/String;
    .param p6, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 390
    invoke-virtual/range {p0 .. p6}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createTransportAccept(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 391
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendTransportReject(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p5, "contentName"    # Ljava/lang/String;
    .param p6, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 417
    invoke-virtual/range {p0 .. p6}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createTransportReject(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 418
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method

.method public sendTransportReplace(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p5, "contentName"    # Ljava/lang/String;
    .param p6, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 363
    invoke-virtual/range {p0 .. p6}, Lorg/jivesoftware/smackx/jingle/JingleUtil;->createTransportReplace(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v0

    .line 364
    .local v0, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    return-object v1
.end method
