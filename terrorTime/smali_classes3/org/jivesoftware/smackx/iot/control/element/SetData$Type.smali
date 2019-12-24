.class public final enum Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;
.super Ljava/lang/Enum;
.source "SetData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/iot/control/element/SetData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

.field public static final enum BOOL:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

.field public static final enum DOUBLE:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

.field public static final enum INT:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

.field public static final enum LONG:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;


# instance fields
.field private final toStringCache:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    const/4 v1, 0x0

    const-string v2, "BOOL"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->BOOL:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    .line 28
    new-instance v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    const/4 v2, 0x1

    const-string v3, "INT"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->INT:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    const/4 v3, 0x2

    const-string v4, "LONG"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->LONG:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    .line 30
    new-instance v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    const/4 v4, 0x3

    const-string v5, "DOUBLE"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->DOUBLE:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    sget-object v5, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->BOOL:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    aput-object v5, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->INT:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->LONG:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->DOUBLE:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->$VALUES:[Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->toStringCache:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;
    .locals 1

    .line 26
    sget-object v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->$VALUES:[Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->toStringCache:Ljava/lang/String;

    return-object v0
.end method
