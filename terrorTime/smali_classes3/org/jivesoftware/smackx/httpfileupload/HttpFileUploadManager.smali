.class public final Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;
.super Lorg/jivesoftware/smack/Manager;
.source "HttpFileUploadManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:http:upload:0"

.field public static final NAMESPACE_0_2:Ljava/lang/String; = "urn:xmpp:http:upload"


# instance fields
.field private defaultUploadService:Lorg/jivesoftware/smackx/httpfileupload/UploadService;

.field private tlsSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    nop

    .line 81
    const-class v0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->LOGGER:Ljava/util/logging/Logger;

    .line 84
    new-instance v0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 92
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 116
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 118
    new-instance v0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager$2;-><init>(Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 134
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 65
    sget-object v0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static containsHttpFileUploadNamespace(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Z
    .locals 1
    .param p0, "discoverInfo"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 492
    const-string v0, "urn:xmpp:http:upload:0"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "urn:xmpp:http:upload"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;

    .line 107
    .local v1, "httpFileUploadManager":Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;
    if-nez v1, :cond_0

    .line 108
    new-instance v2, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 109
    sget-object v2, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    monitor-exit v0

    return-object v1

    .line 104
    .end local v1    # "httpFileUploadManager":Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static namespaceToVersion(Ljava/lang/String;)Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    .locals 3
    .param p0, "namespace"    # Ljava/lang/String;

    .line 477
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x71a58eb3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x4eb3fc29

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "urn:xmpp:http:upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "urn:xmpp:http:upload:0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    .line 485
    const/4 v0, 0x0

    .local v0, "version":Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    goto :goto_2

    .line 482
    .end local v0    # "version":Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    :cond_3
    sget-object v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->v0_2:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    .line 483
    .restart local v0    # "version":Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    goto :goto_2

    .line 479
    .end local v0    # "version":Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    :cond_4
    sget-object v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->v0_3:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    .line 480
    .restart local v0    # "version":Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    nop

    .line 488
    :goto_2
    return-object v0
.end method

.method private uploadFile(Ljava/io/File;Lorg/jivesoftware/smackx/httpfileupload/element/Slot;Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;)V
    .locals 20
    .param p1, "file"    # Ljava/io/File;
    .param p2, "slot"    # Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
    .param p3, "listener"    # Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    move-object/from16 v1, p3

    const-string v2, "Exception while closing output stream"

    const-string v3, "Exception while closing input stream"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 391
    .local v4, "fileSize":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    .line 394
    long-to-int v6, v4

    .line 397
    .local v6, "fileSizeInt":I
    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v7, p1

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    .line 399
    .local v8, "fis":Ljava/io/FileInputStream;
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->getPutUrl()Ljava/net/URL;

    move-result-object v9

    .line 401
    .local v9, "putUrl":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 403
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v0, "PUT"

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 405
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 407
    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 408
    const-string v11, "Content-Type"

    const-string v12, "application/octet-stream;"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->getHeaders()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 410
    .local v12, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .end local v12    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 413
    :cond_0
    move-object/from16 v11, p0

    iget-object v12, v11, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->tlsSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 414
    .local v12, "tlsSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v12, :cond_1

    instance-of v13, v10, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v13, :cond_1

    .line 415
    move-object v13, v10

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    .line 416
    .local v13, "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v13, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 420
    .end local v13    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_1
    :try_start_0
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 422
    .local v13, "outputStream":Ljava/io/OutputStream;
    const-wide/16 v14, 0x0

    .line 424
    .local v14, "bytesSend":J
    if-eqz v1, :cond_2

    .line 425
    move/from16 v16, v6

    .end local v6    # "fileSizeInt":I
    .local v16, "fileSizeInt":I
    const-wide/16 v6, 0x0

    :try_start_1
    invoke-interface {v1, v6, v7, v4, v5}, Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;->onUploadProgress(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 471
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    .end local v14    # "bytesSend":J
    :catchall_0
    move-exception v0

    move-object/from16 v19, v8

    goto/16 :goto_9

    .line 424
    .end local v16    # "fileSizeInt":I
    .restart local v6    # "fileSizeInt":I
    .restart local v13    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "bytesSend":J
    :cond_2
    move/from16 v16, v6

    .line 428
    .end local v6    # "fileSizeInt":I
    .restart local v16    # "fileSizeInt":I
    :goto_1
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 431
    .local v6, "inputStream":Ljava/io/BufferedInputStream;
    const/16 v7, 0x1000

    new-array v7, v7, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 434
    .local v7, "buffer":[B
    :goto_2
    :try_start_3
    invoke-virtual {v6, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v18, v0

    move-object/from16 v19, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v18, "bytesRead":I
    .local v19, "fis":Ljava/io/FileInputStream;
    const/4 v8, -0x1

    if-eq v0, v8, :cond_4

    .line 435
    move/from16 v8, v18

    const/4 v0, 0x0

    .end local v18    # "bytesRead":I
    .local v8, "bytesRead":I
    :try_start_4
    invoke-virtual {v13, v7, v0, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 436
    int-to-long v0, v8

    add-long/2addr v14, v0

    .line 438
    move-object/from16 v1, p3

    if-eqz v1, :cond_3

    .line 439
    invoke-interface {v1, v14, v15, v4, v5}, Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;->onUploadProgress(JJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 434
    .end local v8    # "bytesRead":I
    :cond_3
    move-object/from16 v8, v19

    const/4 v0, 0x0

    goto :goto_2

    .line 444
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v7

    goto/16 :goto_6

    .line 445
    .restart local v18    # "bytesRead":I
    :cond_4
    move/from16 v8, v18

    .end local v18    # "bytesRead":I
    .restart local v8    # "bytesRead":I
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 449
    move-object/from16 v17, v7

    goto :goto_3

    .line 471
    .end local v6    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v7    # "buffer":[B
    .end local v8    # "bytesRead":I
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    .end local v14    # "bytesSend":J
    :catchall_2
    move-exception v0

    goto/16 :goto_9

    .line 447
    .restart local v6    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v7    # "buffer":[B
    .restart local v8    # "bytesRead":I
    .restart local v13    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "bytesSend":J
    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    .line 448
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v1, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v17, v7

    .end local v7    # "buffer":[B
    .local v17, "buffer":[B
    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v7, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 451
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 455
    goto :goto_4

    .line 453
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 454
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_8
    sget-object v1, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v3, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 458
    :goto_4
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 459
    .local v0, "status":I
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_6

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_5

    goto :goto_5

    .line 465
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from server during file upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", file size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", put URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "fileSize":J
    .end local v9    # "putUrl":Ljava/net/URL;
    .end local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v12    # "tlsSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v16    # "fileSizeInt":I
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "slot":Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
    .end local p3    # "listener":Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 463
    .restart local v4    # "fileSize":J
    .restart local v9    # "putUrl":Ljava/net/URL;
    .restart local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v12    # "tlsSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v16    # "fileSizeInt":I
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "slot":Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
    .restart local p3    # "listener":Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;
    :cond_6
    :goto_5
    nop

    .line 471
    .end local v0    # "status":I
    .end local v6    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v8    # "bytesRead":I
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    .end local v14    # "bytesSend":J
    .end local v17    # "buffer":[B
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 472
    nop

    .line 473
    return-void

    .line 444
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v7    # "buffer":[B
    .local v8, "fis":Ljava/io/FileInputStream;
    .restart local v13    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "bytesSend":J
    :catchall_3
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object v1, v0

    .line 445
    .end local v7    # "buffer":[B
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "buffer":[B
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    :goto_6
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 449
    goto :goto_7

    .line 447
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 448
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    sget-object v7, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 451
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 455
    goto :goto_8

    .line 453
    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 454
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_c
    sget-object v3, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v3, v7, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8
    nop

    .end local v4    # "fileSize":J
    .end local v9    # "putUrl":Ljava/net/URL;
    .end local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v12    # "tlsSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v16    # "fileSizeInt":I
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "slot":Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
    .end local p3    # "listener":Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 471
    .end local v6    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    .end local v14    # "bytesSend":J
    .end local v17    # "buffer":[B
    .restart local v4    # "fileSize":J
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "putUrl":Ljava/net/URL;
    .restart local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v12    # "tlsSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v16    # "fileSizeInt":I
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "slot":Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
    .restart local p3    # "listener":Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v16    # "fileSizeInt":I
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .local v6, "fileSizeInt":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v0

    move/from16 v16, v6

    move-object/from16 v19, v8

    .end local v6    # "fileSizeInt":I
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "fileSizeInt":I
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    :goto_9
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 392
    .end local v9    # "putUrl":Ljava/net/URL;
    .end local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v12    # "tlsSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v16    # "fileSizeInt":I
    .end local v19    # "fis":Ljava/io/FileInputStream;
    :cond_7
    move-object/from16 v11, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " must be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static uploadServiceFrom(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Lorg/jivesoftware/smackx/httpfileupload/UploadService;
    .locals 7
    .param p0, "discoverInfo"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 137
    nop

    .line 140
    const-string v0, "urn:xmpp:http:upload:0"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->v0_3:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    .local v0, "version":Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    goto :goto_0

    .line 142
    .end local v0    # "version":Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    :cond_0
    const-string v0, "urn:xmpp:http:upload"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    sget-object v0, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->v0_2:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    .line 148
    .restart local v0    # "version":Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1

    .line 150
    .local v1, "address":Lorg/jxmpp/jid/DomainBareJid;
    invoke-static {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v2

    .line 151
    .local v2, "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    if-nez v2, :cond_1

    .line 152
    new-instance v3, Lorg/jivesoftware/smackx/httpfileupload/UploadService;

    invoke-direct {v3, v1, v0}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;-><init>(Lorg/jxmpp/jid/DomainBareJid;Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;)V

    return-object v3

    .line 155
    :cond_1
    const-string v3, "max-file-size"

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v3

    .line 156
    .local v3, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    if-nez v3, :cond_2

    .line 157
    new-instance v4, Lorg/jivesoftware/smackx/httpfileupload/UploadService;

    invoke-direct {v4, v1, v0}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;-><init>(Lorg/jxmpp/jid/DomainBareJid;Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;)V

    return-object v4

    .line 160
    :cond_2
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "maxFileSizeValue":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 164
    new-instance v5, Lorg/jivesoftware/smackx/httpfileupload/UploadService;

    invoke-direct {v5, v1, v0}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;-><init>(Lorg/jxmpp/jid/DomainBareJid;Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;)V

    return-object v5

    .line 168
    :cond_3
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 169
    .local v5, "maxFileSize":Ljava/lang/Long;
    new-instance v6, Lorg/jivesoftware/smackx/httpfileupload/UploadService;

    invoke-direct {v6, v1, v0, v5}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;-><init>(Lorg/jxmpp/jid/DomainBareJid;Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;Ljava/lang/Long;)V

    return-object v6

    .line 145
    .end local v0    # "version":Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    .end local v1    # "address":Lorg/jxmpp/jid/DomainBareJid;
    .end local v2    # "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .end local v3    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v4    # "maxFileSizeValue":Ljava/lang/String;
    .end local v5    # "maxFileSize":Ljava/lang/Long;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public discoverUploadService()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 189
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    nop

    .line 190
    const/4 v1, 0x1

    const-string v2, "urn:xmpp:http:upload:0"

    invoke-virtual {v0, v2, v1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findServicesDiscoverInfo(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, "servicesDiscoverInfo":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 193
    const-string v3, "urn:xmpp:http:upload"

    invoke-virtual {v0, v3, v1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findServicesDiscoverInfo(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 194
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    return v4

    .line 199
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 201
    .local v3, "discoverInfo":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    invoke-static {v3}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->uploadServiceFrom(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Lorg/jivesoftware/smackx/httpfileupload/UploadService;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->defaultUploadService:Lorg/jivesoftware/smackx/httpfileupload/UploadService;

    .line 202
    return v1
.end method

.method public getDefaultUploadService()Lorg/jivesoftware/smackx/httpfileupload/UploadService;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->defaultUploadService:Lorg/jivesoftware/smackx/httpfileupload/UploadService;

    return-object v0
.end method

.method public isUploadServiceDiscovered()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->defaultUploadService:Lorg/jivesoftware/smackx/httpfileupload/UploadService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestSlot(Ljava/lang/String;J)Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 285
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->requestSlot(Ljava/lang/String;JLjava/lang/String;Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smackx/httpfileupload/element/Slot;

    move-result-object v0

    return-object v0
.end method

.method public requestSlot(Ljava/lang/String;JLjava/lang/String;)Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
        }
    .end annotation

    .line 308
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->requestSlot(Ljava/lang/String;JLjava/lang/String;Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smackx/httpfileupload/element/Slot;

    move-result-object v0

    return-object v0
.end method

.method public requestSlot(Ljava/lang/String;JLjava/lang/String;Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "uploadServiceAddress"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
        }
    .end annotation

    .line 330
    move-wide/from16 v6, p2

    move-object/from16 v8, p5

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v9

    .line 331
    .local v9, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    move-object v10, p0

    iget-object v11, v10, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->defaultUploadService:Lorg/jivesoftware/smackx/httpfileupload/UploadService;

    .line 336
    .local v11, "defaultUploadService":Lorg/jivesoftware/smackx/httpfileupload/UploadService;
    if-nez v8, :cond_0

    .line 337
    move-object v0, v11

    move-object v12, v0

    .local v0, "uploadService":Lorg/jivesoftware/smackx/httpfileupload/UploadService;
    goto :goto_0

    .line 339
    .end local v0    # "uploadService":Lorg/jivesoftware/smackx/httpfileupload/UploadService;
    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->getAddress()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    invoke-interface {v0, v8}, Lorg/jxmpp/jid/DomainBareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    move-object v0, v11

    move-object v12, v0

    .restart local v0    # "uploadService":Lorg/jivesoftware/smackx/httpfileupload/UploadService;
    goto :goto_0

    .line 343
    .end local v0    # "uploadService":Lorg/jivesoftware/smackx/httpfileupload/UploadService;
    :cond_1
    invoke-static {v9}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    .line 344
    .local v0, "discoverInfo":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    invoke-static {v0}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->containsHttpFileUploadNamespace(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 348
    invoke-static {v0}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->uploadServiceFrom(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Lorg/jivesoftware/smackx/httpfileupload/UploadService;

    move-result-object v0

    move-object v12, v0

    .line 352
    .end local v0    # "discoverInfo":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .local v12, "uploadService":Lorg/jivesoftware/smackx/httpfileupload/UploadService;
    :goto_0
    if-eqz v12, :cond_5

    .line 356
    invoke-virtual {v12, v6, v7}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->acceptsFileOfSize(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 362
    sget-object v0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager$3;->$SwitchMap$org$jivesoftware$smackx$httpfileupload$UploadService$Version:[I

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->getVersion()Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 367
    new-instance v13, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest_V0_2;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->getAddress()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1

    move-object v0, v13

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest_V0_2;-><init>(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;JLjava/lang/String;)V

    .line 368
    .local v0, "slotRequest":Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;
    goto :goto_1

    .line 370
    .end local v0    # "slotRequest":Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 364
    :cond_3
    new-instance v13, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->getAddress()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1

    move-object v0, v13

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;-><init>(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;JLjava/lang/String;)V

    .line 365
    .restart local v0    # "slotRequest":Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;
    nop

    .line 373
    :goto_1
    invoke-interface {v9, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;

    return-object v1

    .line 357
    .end local v0    # "slotRequest":Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested file size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is greater than max allowed size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v12}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->getMaxFileSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_5
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v1, "No upload service specified and also none discovered."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    .end local v12    # "uploadService":Lorg/jivesoftware/smackx/httpfileupload/UploadService;
    .local v0, "discoverInfo":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no HTTP upload service running at the given address \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTlsContext(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "tlsContext"    # Ljavax/net/ssl/SSLContext;

    .line 377
    if-nez p1, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->tlsSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 381
    return-void
.end method

.method public uploadFile(Ljava/io/File;)Ljava/net/URL;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->uploadFile(Ljava/io/File;Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public uploadFile(Ljava/io/File;Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;)Ljava/net/URL;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-string v3, "application/octet-stream"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->requestSlot(Ljava/lang/String;JLjava/lang/String;)Lorg/jivesoftware/smackx/httpfileupload/element/Slot;

    move-result-object v0

    .line 263
    .local v0, "slot":Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
    invoke-direct {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->uploadFile(Ljava/io/File;Lorg/jivesoftware/smackx/httpfileupload/element/Slot;Lorg/jivesoftware/smackx/httpfileupload/UploadProgressListener;)V

    .line 265
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;->getGetUrl()Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 259
    .end local v0    # "slot":Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useTlsSettingsFrom(Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 1
    .param p1, "connectionConfiguration"    # Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 384
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCustomSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 385
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->setTlsContext(Ljavax/net/ssl/SSLContext;)V

    .line 386
    return-void
.end method
