.class final enum Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;
.super Ljava/lang/Enum;
.source "IoTDataField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

.field public static final enum bool:Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

.field public static final enum integer:Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;


# instance fields
.field private final stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    const/4 v1, 0x0

    const-string v2, "integer"

    const-string v3, "int"

    invoke-direct {v0, v2, v1, v3}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;->integer:Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    const/4 v2, 0x1

    const-string v3, "bool"

    const-string v4, "boolean"

    invoke-direct {v0, v3, v2, v4}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;->bool:Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    sget-object v3, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;->integer:Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;->bool:Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;->$VALUES:[Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "stringRepresentation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;->stringRepresentation:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    .line 24
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;
    .locals 1

    .line 24
    sget-object v0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;->$VALUES:[Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    return-object v0
.end method
