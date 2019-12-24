.class public final Lorg/jivesoftware/smack/sm/predicates/OnceForThisStanza;
.super Ljava/lang/Object;
.source "OnceForThisStanza.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/StanzaFilter;


# instance fields
.field private final connection:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

.field private final id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p2, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/jivesoftware/smack/sm/predicates/OnceForThisStanza;->connection:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 36
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Stanza;->getStanzaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/sm/predicates/OnceForThisStanza;->id:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lorg/jivesoftware/smack/sm/predicates/OnceForThisStanza;->id:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stanza ID must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setup(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 1
    .param p0, "connection"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 30
    new-instance v0, Lorg/jivesoftware/smack/sm/predicates/OnceForThisStanza;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/sm/predicates/OnceForThisStanza;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 31
    .local v0, "packetFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->addRequestAckPredicate(Lorg/jivesoftware/smack/filter/StanzaFilter;)Z

    .line 32
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 44
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Stanza;->getStanzaId()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "otherId":Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 46
    return v2

    .line 48
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/sm/predicates/OnceForThisStanza;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lorg/jivesoftware/smack/sm/predicates/OnceForThisStanza;->connection:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v1, p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->removeRequestAckPredicate(Lorg/jivesoftware/smack/filter/StanzaFilter;)Z

    .line 50
    const/4 v1, 0x1

    return v1

    .line 52
    :cond_1
    return v2
.end method
