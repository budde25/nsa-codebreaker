.class public final enum Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;
.super Ljava/lang/Enum;
.source "JingleReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/element/JingleReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field protected static final LUT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum alternative_session:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum busy:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum cancel:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum connectivity_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum decline:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum expired:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum failed_application:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum failed_transport:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum general_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum gone:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum incompatible_parameters:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum media_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum security_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum success:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum timeout:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum unsupported_applications:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

.field public static final enum unsupported_transports:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;


# instance fields
.field protected final asString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 58
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/4 v1, 0x0

    const-string v2, "alternative_session"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->alternative_session:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 59
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/4 v2, 0x1

    const-string v3, "busy"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->busy:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 60
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/4 v3, 0x2

    const-string v4, "cancel"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->cancel:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 61
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/4 v4, 0x3

    const-string v5, "connectivity_error"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->connectivity_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 62
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/4 v5, 0x4

    const-string v6, "decline"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->decline:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 63
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/4 v6, 0x5

    const-string v7, "expired"

    invoke-direct {v0, v7, v6}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->expired:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 64
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/4 v7, 0x6

    const-string v8, "failed_application"

    invoke-direct {v0, v8, v7}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->failed_application:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 65
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/4 v8, 0x7

    const-string v9, "failed_transport"

    invoke-direct {v0, v9, v8}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->failed_transport:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 66
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/16 v9, 0x8

    const-string v10, "general_error"

    invoke-direct {v0, v10, v9}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->general_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 67
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/16 v10, 0x9

    const-string v11, "gone"

    invoke-direct {v0, v11, v10}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->gone:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 68
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/16 v11, 0xa

    const-string v12, "incompatible_parameters"

    invoke-direct {v0, v12, v11}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->incompatible_parameters:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 69
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/16 v12, 0xb

    const-string v13, "media_error"

    invoke-direct {v0, v13, v12}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->media_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 70
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/16 v13, 0xc

    const-string v14, "security_error"

    invoke-direct {v0, v14, v13}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->security_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 71
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/16 v14, 0xd

    const-string v15, "success"

    invoke-direct {v0, v15, v14}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->success:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 72
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/16 v15, 0xe

    const-string v14, "timeout"

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->timeout:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 73
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const-string v14, "unsupported_applications"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->unsupported_applications:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 74
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const-string v14, "unsupported_transports"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->unsupported_transports:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 57
    const/16 v0, 0x11

    new-array v0, v0, [Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    sget-object v14, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->alternative_session:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v14, v0, v1

    sget-object v14, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->busy:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v14, v0, v2

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->cancel:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v2, v0, v3

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->connectivity_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v2, v0, v4

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->decline:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v2, v0, v5

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->expired:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v2, v0, v6

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->failed_application:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v2, v0, v7

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->failed_transport:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v2, v0, v8

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->general_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v2, v0, v9

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->gone:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v2, v0, v10

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->incompatible_parameters:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v2, v0, v11

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->media_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v2, v0, v12

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->security_error:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    aput-object v2, v0, v13

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->success:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/16 v3, 0xd

    aput-object v2, v0, v3

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->timeout:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/16 v3, 0xe

    aput-object v2, v0, v3

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->unsupported_applications:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/16 v3, 0xf

    aput-object v2, v0, v3

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->unsupported_transports:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    const/16 v3, 0x10

    aput-object v2, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->$VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->values()[Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->LUT:Ljava/util/Map;

    .line 80
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->values()[Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 81
    .local v3, "reason":Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;
    sget-object v4, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->LUT:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v3    # "reason":Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->name()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5f

    const/16 v0, 0x2d

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->asString:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->LUT:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    .line 98
    .local v0, "reason":Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;
    if-eqz v0, :cond_0

    .line 101
    return-object v0

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;
    .locals 1

    .line 57
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->$VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->asString:Ljava/lang/String;

    return-object v0
.end method
