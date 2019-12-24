.class public final enum Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;
.super Ljava/lang/Enum;
.source "Tag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/iot/discovery/element/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

.field public static final enum num:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

.field public static final enum str:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    const/4 v1, 0x0

    const-string v2, "str"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->str:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    .line 28
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    const/4 v2, 0x1

    const-string v3, "num"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->num:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    sget-object v3, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->str:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->num:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->$VALUES:[Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;
    .locals 1

    .line 26
    sget-object v0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->$VALUES:[Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    return-object v0
.end method
