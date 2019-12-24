.class public final enum Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;
.super Ljava/lang/Enum;
.source "MamPrefsIQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

.field public static final enum always:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

.field public static final enum never:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

.field public static final enum roster:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    const/4 v1, 0x0

    const-string v2, "always"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->always:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    .line 40
    new-instance v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    const/4 v2, 0x1

    const-string v3, "never"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->never:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    .line 41
    new-instance v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    const/4 v3, 0x2

    const-string v4, "roster"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->roster:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    sget-object v4, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->always:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->never:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->roster:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->$VALUES:[Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;
    .locals 1

    .line 38
    sget-object v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->$VALUES:[Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    return-object v0
.end method
