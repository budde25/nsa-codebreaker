.class public Lorg/minidns/dnssec/DnssecValidatorInitializationException;
.super Ljava/lang/RuntimeException;
.source "DnssecValidatorInitializationException.java"


# static fields
.field private static final serialVersionUID:J = -0x1452163a321cfecfL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method
