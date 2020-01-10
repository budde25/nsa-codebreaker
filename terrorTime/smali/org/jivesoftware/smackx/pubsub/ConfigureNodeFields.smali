.class public final enum Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;
.super Ljava/lang/Enum;
.source "ConfigureNodeFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum access_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum body_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum children:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum children_association_policy:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum children_association_whitelist:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum children_max:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum collection:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum dataform_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum deliver_payloads:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum itemreply:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum max_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum max_payload_size:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum node_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum notification_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum notify_config:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum notify_delete:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum notify_retract:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum persist_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum presence_based_delivery:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum publish_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum replyroom:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum replyto:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum roster_groups_allowed:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum subscribe:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum title:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 36
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/4 v1, 0x0

    const-string v2, "access_model"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->access_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 45
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/4 v2, 0x1

    const-string v3, "body_xslt"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->body_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 52
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/4 v3, 0x2

    const-string v4, "collection"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->collection:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 62
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/4 v4, 0x3

    const-string v5, "dataform_xslt"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->dataform_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 69
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/4 v5, 0x4

    const-string v6, "deliver_payloads"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->deliver_payloads:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 76
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/4 v6, 0x5

    const-string v7, "itemreply"

    invoke-direct {v0, v7, v6}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->itemreply:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 83
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/4 v7, 0x6

    const-string v8, "children_association_policy"

    invoke-direct {v0, v8, v7}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_policy:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 91
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/4 v8, 0x7

    const-string v9, "children_association_whitelist"

    invoke-direct {v0, v9, v8}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_whitelist:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 98
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v9, 0x8

    const-string v10, "children"

    invoke-direct {v0, v10, v9}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 106
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v10, 0x9

    const-string v11, "children_max"

    invoke-direct {v0, v11, v10}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_max:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 113
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v11, 0xa

    const-string v12, "max_items"

    invoke-direct {v0, v12, v11}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 120
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v12, 0xb

    const-string v13, "max_payload_size"

    invoke-direct {v0, v13, v12}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_payload_size:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 127
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v13, 0xc

    const-string v14, "node_type"

    invoke-direct {v0, v14, v13}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->node_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 134
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v14, 0xd

    const-string v15, "notify_config"

    invoke-direct {v0, v15, v14}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_config:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 141
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v15, 0xe

    const-string v14, "notify_delete"

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_delete:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 148
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v14, "notify_retract"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_retract:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 155
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v14, "notification_type"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notification_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 163
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v14, "persist_items"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->persist_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 170
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v14, "presence_based_delivery"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->presence_based_delivery:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 177
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v14, "publish_model"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->publish_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 184
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v14, "replyroom"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyroom:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 191
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v14, "replyto"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyto:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 198
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v14, "roster_groups_allowed"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->roster_groups_allowed:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 205
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v14, "subscribe"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->subscribe:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 212
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v14, "title"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->title:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 221
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v14, "type"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 30
    const/16 v0, 0x1a

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    sget-object v14, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->access_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v14, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->body_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->collection:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->dataform_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->deliver_payloads:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->itemreply:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_policy:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_whitelist:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_max:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_payload_size:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v12

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->node_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v13

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_config:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_delete:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_retract:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notification_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->persist_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->presence_based_delivery:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->publish_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyroom:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyto:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->roster_groups_allowed:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->subscribe:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->title:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;
    .locals 1

    .line 30
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pubsub#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
