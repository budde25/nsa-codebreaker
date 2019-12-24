.class public abstract Lorg/jivesoftware/smack/debugger/SmackDebugger;
.super Ljava/lang/Object;
.source "SmackDebugger.java"


# instance fields
.field protected final connection:Lorg/jivesoftware/smack/XMPPConnection;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/jivesoftware/smack/debugger/SmackDebugger;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 43
    return-void
.end method


# virtual methods
.method public abstract newConnectionReader(Ljava/io/Reader;)Ljava/io/Reader;
.end method

.method public abstract newConnectionWriter(Ljava/io/Writer;)Ljava/io/Writer;
.end method

.method public abstract onIncomingStreamElement(Lorg/jivesoftware/smack/packet/TopLevelStreamElement;)V
.end method

.method public abstract onOutgoingStreamElement(Lorg/jivesoftware/smack/packet/TopLevelStreamElement;)V
.end method

.method public abstract userHasLogged(Lorg/jxmpp/jid/EntityFullJid;)V
.end method
