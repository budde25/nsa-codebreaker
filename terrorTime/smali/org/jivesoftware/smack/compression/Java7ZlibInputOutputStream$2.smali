.class Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;
.super Ljava/util/zip/DeflaterOutputStream;
.source "Java7ZlibInputOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;

.field final synthetic val$flushMethodInt:I


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;
    .param p2, "arg0"    # Ljava/io/OutputStream;
    .param p3, "arg1"    # Ljava/util/zip/Deflater;

    .line 109
    iput-object p1, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->this$0:Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;

    iput p4, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->val$flushMethodInt:I

    invoke-direct {p0, p2, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    const-string v0, "Can\'t flush"

    invoke-static {}, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    .line 114
    return-void

    .line 118
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->access$100()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->def:Ljava/util/zip/Deflater;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->buf:[B

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    iget-object v6, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->buf:[B

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget v6, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->val$flushMethodInt:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    .local v2, "count":I
    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->buf:[B

    invoke-virtual {v1, v3, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v2    # "count":I
    :cond_1
    nop

    .line 128
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    .line 129
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
