.class public final Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;
.super Lorg/jivesoftware/smack/Manager;
.source "FileTransferNegotiator.java"


# static fields
.field public static IBB_ONLY:Z = false

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAMESPACE:[Ljava/lang/String;

.field public static final SI_NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/si"

.field public static final SI_PROFILE_FILE_TRANSFER_NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/si/profile/file-transfer"

.field protected static final STREAM_DATA_FIELD_NAME:Ljava/lang/String; = "stream-method"

.field private static final STREAM_INIT_PREFIX:Ljava/lang/String; = "jsi_"

.field private static final randomGenerator:Ljava/util/Random;


# instance fields
.field private final byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

.field private final inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-string v0, "http://jabber.org/protocol/si"

    const-string v1, "http://jabber.org/protocol/si/profile/file-transfer"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->NAMESPACE:[Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->INSTANCES:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->randomGenerator:Ljava/util/Random;

    .line 76
    const-string v0, "ibb"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 171
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 172
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 173
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 175
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->setServiceEnabled(Lorg/jivesoftware/smack/XMPPConnection;Z)V

    .line 176
    return-void
.end method

.method private static createDefaultInitiationForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 4

    .line 370
    new-instance v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    sget-object v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V

    .line 371
    .local v0, "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    new-instance v1, Lorg/jivesoftware/smackx/xdata/FormField;

    const-string v2, "stream-method"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    sget-object v2, Lorg/jivesoftware/smackx/xdata/FormField$Type;->list_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/FormField;->setType(Lorg/jivesoftware/smackx/xdata/FormField$Type;)V

    .line 373
    sget-boolean v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v2, :cond_0

    .line 374
    new-instance v2, Lorg/jivesoftware/smackx/xdata/FormField$Option;

    const-string v3, "http://jabber.org/protocol/bytestreams"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/xdata/FormField$Option;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/FormField;->addOption(Lorg/jivesoftware/smackx/xdata/FormField$Option;)V

    .line 376
    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/xdata/FormField$Option;

    const-string v3, "http://jabber.org/protocol/ibb"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/xdata/FormField$Option;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/FormField;->addOption(Lorg/jivesoftware/smackx/xdata/FormField$Option;)V

    .line 377
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 378
    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    .line 89
    .local v1, "fileTransferNegotiator":Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;
    if-nez v1, :cond_0

    .line 90
    new-instance v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 91
    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit v0

    return-object v1

    .line 87
    .end local v1    # "fileTransferNegotiator":Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNegotiator(Lorg/jivesoftware/smackx/xdata/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 6
    .param p1, "field"    # Lorg/jivesoftware/smackx/xdata/FormField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoAcceptableTransferMechanisms;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "isByteStream":Z
    const/4 v1, 0x0

    .line 228
    .local v1, "isIBB":Z
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/FormField;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/xdata/FormField$Option;

    .line 229
    .local v3, "option":Lorg/jivesoftware/smackx/xdata/FormField$Option;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/xdata/FormField$Option;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "variable":Ljava/lang/String;
    const-string v5, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v5, :cond_0

    .line 231
    const/4 v0, 0x1

    goto :goto_1

    .line 233
    :cond_0
    const-string v5, "http://jabber.org/protocol/ibb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    const/4 v1, 0x1

    .line 236
    .end local v3    # "option":Lorg/jivesoftware/smackx/xdata/FormField$Option;
    :cond_1
    :goto_1
    goto :goto_0

    .line 238
    .end local v4    # "variable":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 239
    :cond_3
    new-instance v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoAcceptableTransferMechanisms;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoAcceptableTransferMechanisms;-><init>()V

    throw v2

    .line 242
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 243
    new-instance v2, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    iget-object v5, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V

    return-object v2

    .line 247
    :cond_5
    if-eqz v0, :cond_6

    .line 248
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    return-object v2

    .line 251
    :cond_6
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    return-object v2
.end method

.method public static getNextStreamID()Ljava/lang/String;
    .locals 3

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "jsi_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getOutgoingNegotiator(Lorg/jivesoftware/smackx/xdata/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 6
    .param p1, "field"    # Lorg/jivesoftware/smackx/xdata/FormField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoAcceptableTransferMechanisms;
        }
    .end annotation

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "isByteStream":Z
    const/4 v1, 0x0

    .line 344
    .local v1, "isIBB":Z
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 345
    .local v3, "variable":Ljava/lang/CharSequence;
    const-string v4, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v4, :cond_0

    .line 346
    const/4 v0, 0x1

    goto :goto_1

    .line 348
    :cond_0
    const-string v4, "http://jabber.org/protocol/ibb"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    const/4 v1, 0x1

    .line 351
    .end local v3    # "variable":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    goto :goto_0

    .line 353
    :cond_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 354
    :cond_3
    new-instance v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoAcceptableTransferMechanisms;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoAcceptableTransferMechanisms;-><init>()V

    throw v2

    .line 357
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 358
    new-instance v2, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    iget-object v5, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V

    return-object v2

    .line 361
    :cond_5
    if-eqz v0, :cond_6

    .line 362
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    return-object v2

    .line 365
    :cond_6
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    return-object v2
.end method

.method private static getStreamMethodField(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)Lorg/jivesoftware/smackx/xdata/FormField;
    .locals 1
    .param p0, "form"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 220
    const-string v0, "stream-method"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedProtocols()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "http://jabber.org/protocol/ibb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    sget-boolean v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v1, :cond_0

    .line 159
    const-string v1, "http://jabber.org/protocol/bytestreams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static isServiceEnabled(Lorg/jivesoftware/smack/XMPPConnection;)Z
    .locals 5
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 132
    nop

    .line 133
    invoke-static {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 135
    .local v0, "manager":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "namespaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->NAMESPACE:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    const-string v2, "http://jabber.org/protocol/ibb"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-boolean v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v2, :cond_0

    .line 139
    const-string v2, "http://jabber.org/protocol/bytestreams"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, "namespace":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->includesFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    const/4 v2, 0x0

    return v2

    .line 146
    .end local v3    # "namespace":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 147
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private static setServiceEnabled(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 4
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "isEnabled"    # Z

    .line 105
    nop

    .line 106
    invoke-static {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 108
    .local v0, "manager":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "namespaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->NAMESPACE:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    const-string v2, "http://jabber.org/protocol/ibb"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-boolean v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v2, :cond_0

    .line 112
    const-string v2, "http://jabber.org/protocol/bytestreams"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    .local v3, "namespace":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V

    .line 121
    .end local v3    # "namespace":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 122
    :cond_2
    return-void
.end method


# virtual methods
.method public negotiateOutgoingTransfer(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 6
    .param p1, "userID"    # Lorg/jxmpp/jid/Jid;
    .param p2, "streamID"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "size"    # J
    .param p6, "desc"    # Ljava/lang/String;
    .param p7, "responseTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoAcceptableTransferMechanisms;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 307
    new-instance v0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;-><init>()V

    .line 308
    .local v0, "si":Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setSessionID(Ljava/lang/String;)V

    .line 309
    invoke-static {p3}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setMimeType(Ljava/lang/String;)V

    .line 311
    new-instance v1, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;

    invoke-direct {v1, p3, p4, p5}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;-><init>(Ljava/lang/String;J)V

    .line 312
    .local v1, "siFile":Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;
    invoke-virtual {v1, p6}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->setDesc(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setFile(Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;)V

    .line 315
    invoke-static {}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createDefaultInitiationForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setFeatureNegotiationForm(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 317
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 318
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 319
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 321
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    int-to-long v3, p7

    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow(J)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2

    .line 324
    .local v2, "siResponse":Lorg/jivesoftware/smack/packet/Stanza;
    instance-of v3, v2, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v3, :cond_1

    .line 325
    move-object v3, v2

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 326
    .local v3, "iqResponse":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/packet/IQ$Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    move-object v4, v2

    check-cast v4, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    .line 328
    .local v4, "response":Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    nop

    .line 329
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getFeatureNegotiationForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v5

    .line 328
    invoke-static {v5}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getStreamMethodField(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getOutgoingNegotiator(Lorg/jivesoftware/smackx/xdata/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    move-result-object v5

    return-object v5

    .line 333
    .end local v4    # "response":Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    :cond_0
    new-instance v4, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;-><init>(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/packet/StanzaError;)V

    throw v4

    .line 337
    .end local v3    # "iqResponse":Lorg/jivesoftware/smack/packet/IQ;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public selectStreamNegotiator(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 6
    .param p1, "request"    # Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoStreamMethodsOfferedException;,
            Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoAcceptableTransferMechanisms;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->getStreamInitiation()Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    move-result-object v0

    .line 192
    .local v0, "si":Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    nop

    .line 193
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getFeatureNegotiationForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getStreamMethodField(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v1

    .line 195
    .local v1, "streamMethodField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v1, :cond_0

    .line 206
    :try_start_0
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getNegotiator(Lorg/jivesoftware/smackx/xdata/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    move-result-object v2
    :try_end_0
    .catch Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoAcceptableTransferMechanisms; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v2, "selectedStreamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    nop

    .line 216
    return-object v2

    .line 208
    .end local v2    # "selectedStreamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoAcceptableTransferMechanisms;
    sget-object v3, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    const-string v4, "No acceptable transfer mechanism"

    invoke-static {v3, v4}, Lorg/jivesoftware/smack/packet/StanzaError;->from(Lorg/jivesoftware/smack/packet/StanzaError$Condition;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v3

    .line 210
    .local v3, "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 211
    throw v2

    .line 196
    .end local v2    # "e":Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoAcceptableTransferMechanisms;
    .end local v3    # "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    const-string v2, "No stream methods contained in stanza."

    .line 197
    .local v2, "errorMessage":Ljava/lang/String;
    sget-object v3, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v3, v2}, Lorg/jivesoftware/smack/packet/StanzaError;->from(Lorg/jivesoftware/smack/packet/StanzaError$Condition;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v3

    .line 198
    .local v3, "error":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    invoke-static {v0, v3}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v4

    .line 199
    .local v4, "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 200
    new-instance v5, Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoStreamMethodsOfferedException;

    invoke-direct {v5}, Lorg/jivesoftware/smackx/filetransfer/FileTransferException$NoStreamMethodsOfferedException;-><init>()V

    throw v5
.end method
