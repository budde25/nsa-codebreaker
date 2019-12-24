.class final Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$ByteStreamRequest;
.super Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;
.source "Socks5TransferNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteStreamRequest"
.end annotation


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;)V
    .locals 0
    .param p1, "manager"    # Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    .param p2, "byteStreamRequest"    # Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .line 122
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;)V

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .param p3, "x2"    # Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$1;

    .line 119
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$ByteStreamRequest;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;)V

    return-void
.end method
