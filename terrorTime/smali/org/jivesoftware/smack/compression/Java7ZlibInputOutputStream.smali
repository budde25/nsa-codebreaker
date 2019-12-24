.class public Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;
.super Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;
.source "Java7ZlibInputOutputStream.java"


# static fields
.field private static final FULL_FLUSH_INT:I = 0x3

.field private static final SYNC_FLUSH_INT:I = 0x2

.field private static final compressionLevel:I = -0x1

.field private static final method:Ljava/lang/reflect/Method;

.field private static final supported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Ljava/util/zip/Deflater;

    const-string v4, "deflate"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, [B

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 57
    :goto_0
    goto :goto_1

    .line 56
    :catch_0
    move-exception v3

    goto :goto_1

    .line 55
    :catch_1
    move-exception v3

    goto :goto_0

    .line 58
    :goto_1
    sput-object v0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->method:Ljava/lang/reflect/Method;

    .line 59
    sget-object v3, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->method:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    move v1, v2

    :goto_2
    sput-boolean v1, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->supported:Z

    .line 60
    .end local v0    # "m":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    const-string v0, "zlib"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 43
    sget-boolean v0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->supported:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .locals 1

    .line 43
    sget-object v0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 73
    new-instance v0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$1;

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    const/16 v2, 0x200

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$1;-><init>(Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 104
    sget-object v0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->flushMethod:Lorg/jivesoftware/smack/compression/XMPPInputOutputStream$FlushMethod;

    sget-object v1, Lorg/jivesoftware/smack/compression/XMPPInputOutputStream$FlushMethod;->SYNC_FLUSH:Lorg/jivesoftware/smack/compression/XMPPInputOutputStream$FlushMethod;

    if-ne v0, v1, :cond_0

    .line 105
    const/4 v0, 0x2

    .local v0, "flushMethodInt":I
    goto :goto_0

    .line 107
    .end local v0    # "flushMethodInt":I
    :cond_0
    const/4 v0, 0x3

    .line 109
    .restart local v0    # "flushMethodInt":I
    :goto_0
    new-instance v1, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;

    new-instance v2, Ljava/util/zip/Deflater;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    invoke-direct {v1, p0, p1, v2, v0}, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;-><init>(Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V

    return-object v1
.end method

.method public isSupported()Z
    .locals 1

    .line 68
    sget-boolean v0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->supported:Z

    return v0
.end method
