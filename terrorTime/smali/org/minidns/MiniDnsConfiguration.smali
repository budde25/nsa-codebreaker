.class public Lorg/minidns/MiniDnsConfiguration;
.super Ljava/lang/Object;
.source "MiniDnsConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lorg/minidns/MiniDnsInitialization;->VERSION:Ljava/lang/String;

    return-object v0
.end method
