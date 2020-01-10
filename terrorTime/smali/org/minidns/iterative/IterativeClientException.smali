.class public abstract Lorg/minidns/iterative/IterativeClientException;
.super Lorg/minidns/MiniDnsException;
.source "IterativeClientException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/iterative/IterativeClientException$NotAuthoritativeNorGlueRrFound;,
        Lorg/minidns/iterative/IterativeClientException$MaxIterativeStepsReached;,
        Lorg/minidns/iterative/IterativeClientException$LoopDetected;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lorg/minidns/MiniDnsException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
