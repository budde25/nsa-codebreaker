.class public Lorg/jivesoftware/smack/util/ObservableReader;
.super Ljava/io/Reader;
.source "ObservableReader.java"


# instance fields
.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/ReaderListener;",
            ">;"
        }
    .end annotation
.end field

.field wrappedReader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "wrappedReader"    # Ljava/io/Reader;

    .line 36
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    .line 38
    return-void
.end method


# virtual methods
.method public addReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V
    .locals 2
    .param p1, "readerListener"    # Lorg/jivesoftware/smack/util/ReaderListener;

    .line 105
    if-nez p1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    monitor-exit v0

    .line 113
    return-void

    .line 112
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

    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 61
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    .line 91
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    return v0
.end method

.method public read([C)I
    .locals 1
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 43
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 44
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 46
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 47
    .local v2, "readerListeners":[Lorg/jivesoftware/smack/util/ReaderListener;
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 48
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/jivesoftware/smack/util/ReaderListener;

    move-object v2, v4

    .line 49
    iget-object v4, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 52
    aget-object v4, v2, v3

    invoke-interface {v4, v1}, Lorg/jivesoftware/smack/util/ReaderListener;->read(Ljava/lang/String;)V

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 55
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "readerListeners":[Lorg/jivesoftware/smack/util/ReaderListener;
    :cond_0
    return v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    return v0
.end method

.method public removeReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V
    .locals 2
    .param p1, "readerListener"    # Lorg/jivesoftware/smack/util/ReaderListener;

    .line 121
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 96
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
