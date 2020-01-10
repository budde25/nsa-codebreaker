.class public final enum Lorg/jivesoftware/smackx/jingle/element/JingleAction;
.super Ljava/lang/Enum;
.source "JingleAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/jingle/element/JingleAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum content_accept:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum content_add:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum content_modify:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum content_reject:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum content_remove:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum description_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/jingle/element/JingleAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum security_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum session_accept:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum session_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum session_initiate:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum session_terminate:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum transport_accept:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum transport_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum transport_reject:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

.field public static final enum transport_replace:Lorg/jivesoftware/smackx/jingle/element/JingleAction;


# instance fields
.field private final asString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/4 v1, 0x0

    const-string v2, "content_accept"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->content_accept:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/4 v2, 0x1

    const-string v3, "content_add"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->content_add:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 32
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/4 v3, 0x2

    const-string v4, "content_modify"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->content_modify:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 33
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/4 v4, 0x3

    const-string v5, "content_reject"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->content_reject:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 34
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/4 v5, 0x4

    const-string v6, "content_remove"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->content_remove:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 35
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/4 v6, 0x5

    const-string v7, "description_info"

    invoke-direct {v0, v7, v6}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->description_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 36
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/4 v7, 0x6

    const-string v8, "security_info"

    invoke-direct {v0, v8, v7}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->security_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 37
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/4 v8, 0x7

    const-string v9, "session_accept"

    invoke-direct {v0, v9, v8}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_accept:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 38
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/16 v9, 0x8

    const-string v10, "session_info"

    invoke-direct {v0, v10, v9}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 39
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/16 v10, 0x9

    const-string v11, "session_initiate"

    invoke-direct {v0, v11, v10}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_initiate:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 40
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/16 v11, 0xa

    const-string v12, "session_terminate"

    invoke-direct {v0, v12, v11}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_terminate:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 41
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/16 v12, 0xb

    const-string v13, "transport_accept"

    invoke-direct {v0, v13, v12}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_accept:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 42
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/16 v13, 0xc

    const-string v14, "transport_info"

    invoke-direct {v0, v14, v13}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 43
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/16 v14, 0xd

    const-string v15, "transport_reject"

    invoke-direct {v0, v15, v14}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_reject:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 44
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/16 v15, 0xe

    const-string v14, "transport_replace"

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_replace:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 28
    const/16 v0, 0xf

    new-array v0, v0, [Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    sget-object v14, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->content_accept:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v14, v0, v1

    sget-object v14, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->content_add:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v14, v0, v2

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->content_modify:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v3

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->content_reject:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v4

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->content_remove:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v5

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->description_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v6

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->security_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v7

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_accept:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v8

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v9

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_initiate:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v10

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->session_terminate:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v11

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_accept:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v12

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v13

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_reject:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    const/16 v3, 0xd

    aput-object v2, v0, v3

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_replace:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    aput-object v2, v0, v15

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->$VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    .line 48
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->values()[Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->map:Ljava/util/Map;

    .line 50
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->values()[Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 51
    .local v3, "jingleAction":Lorg/jivesoftware/smackx/jingle/element/JingleAction;
    sget-object v4, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->map:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .end local v3    # "jingleAction":Lorg/jivesoftware/smackx/jingle/element/JingleAction;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
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

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->name()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5f

    const/16 v0, 0x2d

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->asString:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleAction;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .line 67
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    .line 68
    .local v0, "jingleAction":Lorg/jivesoftware/smackx/jingle/element/JingleAction;
    if-eqz v0, :cond_0

    .line 71
    return-object v0

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown jingle action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/jingle/element/JingleAction;
    .locals 1

    .line 28
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->$VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/jingle/element/JingleAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->asString:Ljava/lang/String;

    return-object v0
.end method
