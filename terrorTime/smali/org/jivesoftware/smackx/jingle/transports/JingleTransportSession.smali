.class public abstract Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;
.super Ljava/lang/Object;
.source "JingleTransportSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

.field protected ourProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .param p1, "session"    # Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 29
    .local p0, "this":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract createTransport()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract handleTransportInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
.end method

.method public abstract initiateIncomingSession(Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;)V
.end method

.method public abstract initiateOutgoingSession(Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;)V
.end method

.method public processJingle(Lorg/jivesoftware/smackx/jingle/element/Jingle;)V
    .locals 4
    .param p1, "jingle"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 36
    .local p0, "this":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession<TT;>;"
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getContents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    .line 41
    .local v0, "content":Lorg/jivesoftware/smackx/jingle/element/JingleContent;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getTransport()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    move-result-object v1

    .line 43
    .local v1, "t":Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;->setTheirProposal(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)V

    .line 46
    :cond_1
    return-void
.end method

.method public abstract setTheirProposal(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)V
.end method

.method public abstract transportManager()Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
            "TT;>;"
        }
    .end annotation
.end method
