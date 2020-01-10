.class public abstract Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "JingleTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;",
        ">",
        "Lorg/jivesoftware/smack/AbstractConnectionListener;"
    }
.end annotation


# instance fields
.field private final connection:Lorg/jivesoftware/smack/XMPPConnection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 32
    .local p0, "this":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<TD;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 34
    invoke-interface {p1, p0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public connected(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 48
    .local p0, "this":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<TD;>;"
    return-void
.end method

.method public connectionClosed()V
    .locals 0

    .line 53
    .local p0, "this":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<TD;>;"
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .line 58
    .local p0, "this":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<TD;>;"
    return-void
.end method

.method public getConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .line 38
    .local p0, "this":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<TD;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract transportSession(Lorg/jivesoftware/smackx/jingle/JingleSession;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/jingle/JingleSession;",
            ")",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession<",
            "TD;>;"
        }
    .end annotation
.end method
