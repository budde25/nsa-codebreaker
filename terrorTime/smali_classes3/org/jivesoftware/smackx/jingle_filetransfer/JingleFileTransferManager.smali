.class public final Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;
.super Lorg/jivesoftware/smack/Manager;
.source "JingleFileTransferManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;->INSTANCES:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 32
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;

    .line 37
    .local v1, "manager":Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;
    if-nez v1, :cond_0

    .line 38
    new-instance v2, Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 39
    sget-object v2, Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit v0

    return-object v1

    .line 35
    .end local v1    # "manager":Lorg/jivesoftware/smackx/jingle_filetransfer/JingleFileTransferManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
