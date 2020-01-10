.class public Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
.super Lorg/jivesoftware/smack/XMPPException;
.source "XMPPException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/XMPPException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XMPPErrorException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f3fbbb5b820744L


# instance fields
.field private final error:Lorg/jivesoftware/smack/packet/StanzaError;

.field private final request:Lorg/jivesoftware/smack/packet/Stanza;

.field private final stanza:Lorg/jivesoftware/smack/packet/Stanza;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/packet/StanzaError;)V
    .locals 1
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p2, "error"    # Lorg/jivesoftware/smack/packet/StanzaError;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;-><init>(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/packet/StanzaError;Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/packet/StanzaError;Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 0
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p2, "error"    # Lorg/jivesoftware/smack/packet/StanzaError;
    .param p3, "request"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 119
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPException;-><init>()V

    .line 120
    iput-object p2, p0, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->error:Lorg/jivesoftware/smack/packet/StanzaError;

    .line 121
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->stanza:Lorg/jivesoftware/smack/packet/Stanza;

    .line 122
    iput-object p3, p0, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->request:Lorg/jivesoftware/smack/packet/Stanza;

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/StanzaError$Builder;)V
    .locals 2
    .param p1, "xmppErrorBuilder"    # Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->build()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;-><init>(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/packet/StanzaError;)V

    .line 98
    return-void
.end method

.method public static ifHasErrorThenThrow(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 1
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->ifHasErrorThenThrow(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 180
    return-void
.end method

.method public static ifHasErrorThenThrow(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v0

    .line 184
    .local v0, "xmppError":Lorg/jivesoftware/smack/packet/StanzaError;
    if-nez v0, :cond_0

    .line 187
    return-void

    .line 185
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;

    invoke-direct {v1, p0, v0, p1}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;-><init>(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/packet/StanzaError;Lorg/jivesoftware/smack/packet/Stanza;)V

    throw v1
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->stanza:Lorg/jivesoftware/smack/packet/Stanza;

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Stanza;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    .line 163
    .local v1, "from":Lorg/jxmpp/jid/Jid;
    if-eqz v1, :cond_0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XMPP error reply received from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .end local v1    # "from":Lorg/jxmpp/jid/Jid;
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->error:Lorg/jivesoftware/smack/packet/StanzaError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->request:Lorg/jivesoftware/smack/packet/Stanza;

    if-eqz v1, :cond_1

    .line 171
    const-string v1, " as result of the following request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->request:Lorg/jivesoftware/smack/packet/Stanza;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequest()Lorg/jivesoftware/smack/packet/Stanza;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->request:Lorg/jivesoftware/smack/packet/Stanza;

    return-object v0
.end method

.method public getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->error:Lorg/jivesoftware/smack/packet/StanzaError;

    return-object v0
.end method

.method public getXMPPError()Lorg/jivesoftware/smack/packet/StanzaError;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->error:Lorg/jivesoftware/smack/packet/StanzaError;

    return-object v0
.end method
