.class public final Lorg/jivesoftware/smack/SmackException$NoResponseException;
.super Lorg/jivesoftware/smack/SmackException;
.source "SmackException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/SmackException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoResponseException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a87a4c476e25994L


# instance fields
.field private final filter:Lorg/jivesoftware/smack/filter/StanzaFilter;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/SmackException$NoResponseException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 77
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p2, p0, Lorg/jivesoftware/smack/SmackException$NoResponseException;->filter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 79
    return-void
.end method

.method private static getWaitingFor(J)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "replyTimeout"    # J

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No response received within reply timeout. Timeout was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms (~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    return-object v0
.end method

.method private static getWaitingFor(Lorg/jivesoftware/smack/XMPPConnection;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 126
    invoke-interface {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getReplyTimeout()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->getWaitingFor(J)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static newWith(JLorg/jivesoftware/smack/StanzaCollector;)Lorg/jivesoftware/smack/SmackException$NoResponseException;
    .locals 1
    .param p0, "timeout"    # J
    .param p2, "collector"    # Lorg/jivesoftware/smack/StanzaCollector;

    .line 105
    invoke-virtual {p2}, Lorg/jivesoftware/smack/StanzaCollector;->getStanzaFilter()Lorg/jivesoftware/smack/filter/StanzaFilter;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->newWith(JLorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/SmackException$NoResponseException;

    move-result-object v0

    return-object v0
.end method

.method public static newWith(JLorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/SmackException$NoResponseException;
    .locals 3
    .param p0, "timeout"    # J
    .param p2, "filter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 113
    invoke-static {p0, p1}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->getWaitingFor(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " Waited for response using: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
    :cond_0
    const-string v1, "No filter used or filter was \'null\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :goto_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Lorg/jivesoftware/smack/SmackException$NoResponseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/jivesoftware/smack/SmackException$NoResponseException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    return-object v1
.end method

.method public static newWith(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Lorg/jivesoftware/smack/SmackException$NoResponseException;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "waitingFor"    # Ljava/lang/String;

    .line 91
    invoke-static {p0}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->getWaitingFor(Lorg/jivesoftware/smack/XMPPConnection;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " While waiting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v1, Lorg/jivesoftware/smack/SmackException$NoResponseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/SmackException$NoResponseException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static newWith(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/StanzaCollector;)Lorg/jivesoftware/smack/SmackException$NoResponseException;
    .locals 1
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "collector"    # Lorg/jivesoftware/smack/StanzaCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-virtual {p1}, Lorg/jivesoftware/smack/StanzaCollector;->getStanzaFilter()Lorg/jivesoftware/smack/filter/StanzaFilter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->newWith(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/SmackException$NoResponseException;

    move-result-object v0

    return-object v0
.end method

.method public static newWith(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/SmackException$NoResponseException;
    .locals 2
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "filter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 109
    invoke-interface {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getReplyTimeout()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->newWith(JLorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/SmackException$NoResponseException;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFilter()Lorg/jivesoftware/smack/filter/StanzaFilter;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackException$NoResponseException;->filter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    return-object v0
.end method
