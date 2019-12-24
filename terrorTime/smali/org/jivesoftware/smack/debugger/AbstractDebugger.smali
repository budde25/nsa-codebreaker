.class public abstract Lorg/jivesoftware/smack/debugger/AbstractDebugger;
.super Lorg/jivesoftware/smack/debugger/SmackDebugger;
.source "AbstractDebugger.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static printInterpreted:Z


# instance fields
.field private final connListener:Lorg/jivesoftware/smack/ConnectionListener;

.field private reader:Lorg/jivesoftware/smack/util/ObservableReader;

.field private final readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

.field private final reconnectionListener:Lorg/jivesoftware/smack/ReconnectionListener;

.field private writer:Lorg/jivesoftware/smack/util/ObservableWriter;

.field private final writerListener:Lorg/jivesoftware/smack/util/WriterListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->LOGGER:Ljava/util/logging/Logger;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->printInterpreted:Z

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 52
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/debugger/SmackDebugger;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 55
    new-instance v0, Lorg/jivesoftware/smack/util/ObservableReader;

    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->reader:Lorg/jivesoftware/smack/util/ObservableReader;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/util/ObservableReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->reader:Lorg/jivesoftware/smack/util/ObservableReader;

    .line 56
    new-instance v0, Lorg/jivesoftware/smack/debugger/AbstractDebugger$1;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/debugger/AbstractDebugger$1;-><init>(Lorg/jivesoftware/smack/debugger/AbstractDebugger;Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->reader:Lorg/jivesoftware/smack/util/ObservableReader;

    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableReader;->addReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V

    .line 65
    new-instance v0, Lorg/jivesoftware/smack/util/ObservableWriter;

    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->writer:Lorg/jivesoftware/smack/util/ObservableWriter;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/util/ObservableWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->writer:Lorg/jivesoftware/smack/util/ObservableWriter;

    .line 66
    new-instance v0, Lorg/jivesoftware/smack/debugger/AbstractDebugger$2;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/debugger/AbstractDebugger$2;-><init>(Lorg/jivesoftware/smack/debugger/AbstractDebugger;Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->writer:Lorg/jivesoftware/smack/util/ObservableWriter;

    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableWriter;->addWriterListener(Lorg/jivesoftware/smack/util/WriterListener;)V

    .line 74
    new-instance v0, Lorg/jivesoftware/smack/debugger/AbstractDebugger$3;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/debugger/AbstractDebugger$3;-><init>(Lorg/jivesoftware/smack/debugger/AbstractDebugger;Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->connListener:Lorg/jivesoftware/smack/ConnectionListener;

    .line 105
    new-instance v0, Lorg/jivesoftware/smack/debugger/AbstractDebugger$4;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/debugger/AbstractDebugger$4;-><init>(Lorg/jivesoftware/smack/debugger/AbstractDebugger;Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->reconnectionListener:Lorg/jivesoftware/smack/ReconnectionListener;

    .line 122
    instance-of v0, p1, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    if-eqz v0, :cond_0

    .line 123
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 124
    .local v0, "abstractXmppConnection":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->getInstanceFor(Lorg/jivesoftware/smack/AbstractXMPPConnection;)Lorg/jivesoftware/smack/ReconnectionManager;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->reconnectionListener:Lorg/jivesoftware/smack/ReconnectionListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/ReconnectionManager;->addReconnectionListener(Lorg/jivesoftware/smack/ReconnectionListener;)Z

    .line 125
    .end local v0    # "abstractXmppConnection":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    goto :goto_0

    .line 126
    :cond_0
    sget-object v0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The connection instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not an instance of AbstractXMPPConnection, thus we can not install the ReconnectionListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract log(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public newConnectionReader(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 2
    .param p1, "newReader"    # Ljava/io/Reader;

    .line 137
    iget-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->reader:Lorg/jivesoftware/smack/util/ObservableReader;

    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableReader;->removeReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V

    .line 138
    new-instance v0, Lorg/jivesoftware/smack/util/ObservableReader;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/util/ObservableReader;-><init>(Ljava/io/Reader;)V

    .line 139
    .local v0, "debugReader":Lorg/jivesoftware/smack/util/ObservableReader;
    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableReader;->addReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V

    .line 140
    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->reader:Lorg/jivesoftware/smack/util/ObservableReader;

    .line 141
    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->reader:Lorg/jivesoftware/smack/util/ObservableReader;

    return-object v1
.end method

.method public newConnectionWriter(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 2
    .param p1, "newWriter"    # Ljava/io/Writer;

    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->writer:Lorg/jivesoftware/smack/util/ObservableWriter;

    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableWriter;->removeWriterListener(Lorg/jivesoftware/smack/util/WriterListener;)V

    .line 147
    new-instance v0, Lorg/jivesoftware/smack/util/ObservableWriter;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/util/ObservableWriter;-><init>(Ljava/io/Writer;)V

    .line 148
    .local v0, "debugWriter":Lorg/jivesoftware/smack/util/ObservableWriter;
    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableWriter;->addWriterListener(Lorg/jivesoftware/smack/util/WriterListener;)V

    .line 149
    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->writer:Lorg/jivesoftware/smack/util/ObservableWriter;

    .line 150
    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->writer:Lorg/jivesoftware/smack/util/ObservableWriter;

    return-object v1
.end method

.method public onIncomingStreamElement(Lorg/jivesoftware/smack/packet/TopLevelStreamElement;)V
    .locals 2
    .param p1, "streamElement"    # Lorg/jivesoftware/smack/packet/TopLevelStreamElement;

    .line 173
    sget-boolean v0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->printInterpreted:Z

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCV PKT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/jivesoftware/smack/packet/TopLevelStreamElement;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->log(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public onOutgoingStreamElement(Lorg/jivesoftware/smack/packet/TopLevelStreamElement;)V
    .locals 0
    .param p1, "streamElement"    # Lorg/jivesoftware/smack/packet/TopLevelStreamElement;

    .line 181
    return-void
.end method

.method public userHasLogged(Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 5
    .param p1, "user"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 155
    invoke-interface {p1}, Lorg/jxmpp/jid/EntityFullJid;->getLocalpart()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jxmpp/jid/parts/Localpart;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "localpart":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 157
    .local v2, "isAnonymous":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User logged ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 158
    invoke-interface {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionCounter()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 161
    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 163
    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getPort()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jxmpp/jid/EntityFullJid;->getResourcepart()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->log(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v4, p0, Lorg/jivesoftware/smack/debugger/AbstractDebugger;->connListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-interface {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 169
    return-void
.end method
