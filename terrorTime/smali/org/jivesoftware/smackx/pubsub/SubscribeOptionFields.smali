.class public final enum Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;
.super Ljava/lang/Enum;
.source "SubscribeOptionFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum digest:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum subscription_depth:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum subscription_type:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 33
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const/4 v1, 0x0

    const-string v2, "deliver"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 41
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const/4 v2, 0x1

    const-string v3, "digest"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 48
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const/4 v3, 0x2

    const-string v4, "digest_frequency"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 54
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const/4 v4, 0x3

    const-string v5, "expire"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 62
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const/4 v5, 0x4

    const-string v6, "include_body"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 69
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const/4 v6, 0x5

    const-string v7, "show_values"

    invoke-direct {v0, v7, v6}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 76
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const/4 v7, 0x6

    const-string v8, "subscription_type"

    invoke-direct {v0, v8, v7}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->subscription_type:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 83
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const/4 v8, 0x7

    const-string v9, "subscription_depth"

    invoke-direct {v0, v9, v8}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->subscription_depth:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    sget-object v9, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v9, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->subscription_type:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->subscription_depth:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v8

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    return-object v0
.end method

.method public static valueOfFromElement(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;
    .locals 2
    .param p0, "elementName"    # Ljava/lang/String;

    .line 92
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "portion":Ljava/lang/String;
    const-string v1, "show-values"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    return-object v1

    .line 97
    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    move-result-object v1

    return-object v1
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;
    .locals 1

    .line 27
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 4

    .line 86
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "pubsub#"

    if-ne p0, v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
