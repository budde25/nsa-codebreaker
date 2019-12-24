.class public Lorg/jivesoftware/smack/util/ObservableWriter;
.super Ljava/io/Writer;
.source "ObservableWriter.java"


# static fields
.field private static final MAX_STRING_BUILDER_SIZE:I = 0x1000


# instance fields
.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/WriterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final stringBuilder:Ljava/lang/StringBuilder;

.field wrappedWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "wrappedWriter"    # Ljava/io/Writer;

    .line 37
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->wrappedWriter:Ljava/io/Writer;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->listeners:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->stringBuilder:Ljava/lang/StringBuilder;

    .line 38
    iput-object p1, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->wrappedWriter:Ljava/io/Writer;

    .line 39
    return-void
.end method

.method private maybeNotifyListeners(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ObservableWriter;->notifyListeners()V

    .line 89
    :cond_0
    return-void
.end method

.method private notifyListeners()V
    .locals 5

    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jivesoftware/smack/util/WriterListener;

    .line 98
    .local v1, "writerListeners":[Lorg/jivesoftware/smack/util/WriterListener;
    iget-object v2, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 102
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 103
    .local v4, "writerListener":Lorg/jivesoftware/smack/util/WriterListener;
    invoke-interface {v4, v0}, Lorg/jivesoftware/smack/util/WriterListener;->write(Ljava/lang/String;)V

    .line 102
    .end local v4    # "writerListener":Lorg/jivesoftware/smack/util/WriterListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void

    .line 99
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "writerListeners":[Lorg/jivesoftware/smack/util/WriterListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addWriterListener(Lorg/jivesoftware/smack/util/WriterListener;)V
    .locals 2
    .param p1, "writerListener"    # Lorg/jivesoftware/smack/util/WriterListener;

    .line 114
    if-nez p1, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->wrappedWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 57
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ObservableWriter;->notifyListeners()V

    .line 51
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->wrappedWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 52
    return-void
.end method

.method public removeWriterListener(Lorg/jivesoftware/smack/util/WriterListener;)V
    .locals 2
    .param p1, "writerListener"    # Lorg/jivesoftware/smack/util/WriterListener;

    .line 130
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->wrappedWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 62
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->wrappedWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/ObservableWriter;->maybeNotifyListeners(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->wrappedWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 80
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/ObservableWriter;->maybeNotifyListeners(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public write([C)V
    .locals 1
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->wrappedWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    .line 67
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 68
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/util/ObservableWriter;->maybeNotifyListeners(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableWriter;->wrappedWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 44
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 45
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/util/ObservableWriter;->maybeNotifyListeners(Ljava/lang/String;)V

    .line 46
    return-void
.end method
