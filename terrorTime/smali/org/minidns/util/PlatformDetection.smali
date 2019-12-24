.class public Lorg/minidns/util/PlatformDetection;
.super Ljava/lang/Object;
.source "PlatformDetection.java"


# static fields
.field private static android:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAndroid()Z
    .locals 2

    .line 18
    sget-object v0, Lorg/minidns/util/PlatformDetection;->android:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 20
    :try_start_0
    const-string v0, "android.Manifest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/minidns/util/PlatformDetection;->android:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/minidns/util/PlatformDetection;->android:Ljava/lang/Boolean;

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lorg/minidns/util/PlatformDetection;->android:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
