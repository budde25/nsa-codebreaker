.class public abstract Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationException;
.super Ljava/lang/Exception;
.source "JingleTransportInitiationException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationException$CandidateError;,
        Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationException$ProxyError;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
