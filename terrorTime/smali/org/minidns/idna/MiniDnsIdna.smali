.class public Lorg/minidns/idna/MiniDnsIdna;
.super Ljava/lang/Object;
.source "MiniDnsIdna.java"


# static fields
.field private static idnaTransformator:Lorg/minidns/idna/IdnaTransformator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/minidns/idna/DefaultIdnaTransformator;

    invoke-direct {v0}, Lorg/minidns/idna/DefaultIdnaTransformator;-><init>()V

    sput-object v0, Lorg/minidns/idna/MiniDnsIdna;->idnaTransformator:Lorg/minidns/idna/IdnaTransformator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setActiveTransformator(Lorg/minidns/idna/IdnaTransformator;)V
    .locals 1
    .param p0, "idnaTransformator"    # Lorg/minidns/idna/IdnaTransformator;

    .line 26
    if-eqz p0, :cond_0

    .line 29
    sput-object p0, Lorg/minidns/idna/MiniDnsIdna;->idnaTransformator:Lorg/minidns/idna/IdnaTransformator;

    .line 30
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static toASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 18
    sget-object v0, Lorg/minidns/idna/MiniDnsIdna;->idnaTransformator:Lorg/minidns/idna/IdnaTransformator;

    invoke-interface {v0, p0}, Lorg/minidns/idna/IdnaTransformator;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 22
    sget-object v0, Lorg/minidns/idna/MiniDnsIdna;->idnaTransformator:Lorg/minidns/idna/IdnaTransformator;

    invoke-interface {v0, p0}, Lorg/minidns/idna/IdnaTransformator;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
