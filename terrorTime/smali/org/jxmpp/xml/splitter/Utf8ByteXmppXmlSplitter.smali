.class public Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;
.super Ljava/io/OutputStream;
.source "Utf8ByteXmppXmlSplitter.java"


# instance fields
.field private final buffer:[B

.field private count:B

.field private expectedLength:B

.field private final writeBuffer:[C

.field private final xmppXmlSplitter:Lorg/jxmpp/xml/splitter/XmppXmlSplitter;


# direct methods
.method public constructor <init>(Lorg/jxmpp/xml/splitter/XmppElementCallback;)V
    .locals 1
    .param p1, "xmppElementCallback"    # Lorg/jxmpp/xml/splitter/XmppElementCallback;

    .line 44
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->writeBuffer:[C

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->buffer:[B

    .line 45
    new-instance v0, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;

    invoke-direct {v0, p1}, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;-><init>(Lorg/jxmpp/xml/splitter/XmppElementCallback;)V

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->xmppXmlSplitter:Lorg/jxmpp/xml/splitter/XmppXmlSplitter;

    .line 46
    return-void
.end method


# virtual methods
.method public write(B)V
    .locals 7
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->buffer:[B

    iget-byte v1, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->count:B

    aput-byte p1, v0, v1

    .line 62
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_4

    .line 63
    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    .line 64
    .local v0, "firstByte":I
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 65
    iput-byte v5, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->expectedLength:B

    goto :goto_0

    .line 66
    :cond_0
    const/16 v1, 0xe0

    if-ge v0, v1, :cond_1

    .line 67
    iput-byte v4, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->expectedLength:B

    goto :goto_0

    .line 68
    :cond_1
    const/16 v1, 0xf0

    if-ge v0, v1, :cond_2

    .line 69
    iput-byte v3, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->expectedLength:B

    goto :goto_0

    .line 70
    :cond_2
    const/16 v1, 0xf8

    if-ge v0, v1, :cond_3

    .line 71
    iput-byte v2, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->expectedLength:B

    goto :goto_0

    .line 73
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid first UTF-8 byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    .end local v0    # "firstByte":I
    :cond_4
    :goto_0
    iget-byte v0, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->count:B

    add-int/2addr v0, v5

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->count:B

    iget-byte v1, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->expectedLength:B

    if-ne v0, v1, :cond_b

    .line 79
    if-ne v1, v5, :cond_5

    .line 80
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->buffer:[B

    aget-byte v0, v0, v6

    and-int/lit8 v0, v0, 0x7f

    .local v0, "codepoint":I
    goto :goto_3

    .line 87
    .end local v0    # "codepoint":I
    :cond_5
    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_7

    if-ne v1, v2, :cond_6

    .line 97
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->buffer:[B

    aget-byte v0, v0, v6

    and-int/lit8 v0, v0, 0x6

    .line 98
    .restart local v0    # "codepoint":I
    shl-int/lit8 v0, v0, 0x12

    .line 99
    goto :goto_1

    .line 101
    .end local v0    # "codepoint":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 93
    :cond_7
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->buffer:[B

    aget-byte v0, v0, v6

    and-int/lit8 v0, v0, 0xf

    .line 94
    .restart local v0    # "codepoint":I
    shl-int/lit8 v0, v0, 0xc

    .line 95
    goto :goto_1

    .line 89
    .end local v0    # "codepoint":I
    :cond_8
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->buffer:[B

    aget-byte v0, v0, v6

    and-int/lit8 v0, v0, 0x1f

    .line 90
    .restart local v0    # "codepoint":I
    shl-int/lit8 v0, v0, 0x6

    .line 91
    nop

    .line 104
    :goto_1
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    iget-byte v2, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->expectedLength:B

    if-ge v1, v2, :cond_9

    .line 106
    iget-object v3, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->buffer:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0x3f

    .line 108
    .local v3, "bits":I
    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x6

    shl-int v2, v3, v2

    .line 109
    .end local v3    # "bits":I
    .local v2, "bits":I
    or-int/2addr v0, v2

    .line 104
    .end local v2    # "bits":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    .end local v1    # "i":I
    :cond_9
    :goto_3
    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_a

    .line 115
    const/4 v1, 0x1

    .line 116
    .local v1, "len":I
    iget-object v2, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->writeBuffer:[C

    int-to-char v3, v0

    aput-char v3, v2, v6

    goto :goto_4

    .line 119
    .end local v1    # "len":I
    :cond_a
    const/4 v1, 0x2

    .line 121
    .restart local v1    # "len":I
    iget-object v2, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->writeBuffer:[C

    const v3, 0xd800

    const/high16 v4, -0x600000

    and-int/2addr v4, v0

    add-int/2addr v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v6

    .line 123
    const v3, 0xdc00

    and-int/lit16 v4, v0, 0x3ff

    add-int/2addr v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v5

    .line 126
    :goto_4
    iget-object v2, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->xmppXmlSplitter:Lorg/jxmpp/xml/splitter/XmppXmlSplitter;

    iget-object v3, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->writeBuffer:[C

    invoke-virtual {v2, v3, v6, v1}, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;->write([CII)V

    .line 129
    iput-byte v6, p0, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->count:B

    .line 131
    .end local v0    # "codepoint":I
    .end local v1    # "len":I
    :cond_b
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jxmpp/xml/splitter/Utf8ByteXmppXmlSplitter;->write(B)V

    .line 136
    return-void
.end method
