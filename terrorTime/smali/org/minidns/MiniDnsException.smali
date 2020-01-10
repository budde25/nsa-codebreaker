.class public abstract Lorg/minidns/MiniDnsException;
.super Ljava/io/IOException;
.source "MiniDnsException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/MiniDnsException$NoQueryPossibleException;,
        Lorg/minidns/MiniDnsException$ErrorResponseException;,
        Lorg/minidns/MiniDnsException$NullResultException;,
        Lorg/minidns/MiniDnsException$IdMismatch;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
