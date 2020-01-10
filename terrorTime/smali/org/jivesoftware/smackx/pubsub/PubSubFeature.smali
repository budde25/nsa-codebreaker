.class public final enum Lorg/jivesoftware/smackx/pubsub/PubSubFeature;
.super Ljava/lang/Enum;
.source "PubSubFeature.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/PubSubFeature;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum access_authorize:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum access_open:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum access_presence:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum access_roster:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum access_whitelist:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum auto_create:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum auto_subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum collections:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum config_node:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum create_and_configure:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum create_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum delete_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum delete_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum filtered_notifications:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum get_pending:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum instant_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum item_ids:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum last_published:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum leased_subscription:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum manage_subscriptions:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum member_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum meta_data:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum modify_affiliations:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum multi_collection:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum multi_subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum outcast_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum persistent_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum presence_notifications:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum presence_subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum publish:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum publish_only_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum publish_options:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum publisher_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum purge_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum retract_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum retrieve_affiliations:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum retrieve_default:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum retrieve_default_sub:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum retrieve_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum retrieve_subscriptions:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum subscription_options:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

.field public static final enum subscriptions_notifications:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;


# instance fields
.field private final feature:Ljava/lang/String;

.field private final qualifiedFeature:Ljava/lang/String;

.field private final support:Lorg/jivesoftware/smackx/disco/Feature$Support;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/4 v2, 0x0

    const-string v3, "access_authorize"

    invoke-direct {v0, v3, v2, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->access_authorize:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 33
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/4 v3, 0x1

    const-string v4, "access_open"

    invoke-direct {v0, v4, v3, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->access_open:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 34
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/4 v4, 0x2

    const-string v5, "access_presence"

    invoke-direct {v0, v5, v4, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->access_presence:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 35
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/4 v5, 0x3

    const-string v6, "access_roster"

    invoke-direct {v0, v6, v5, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->access_roster:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 36
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/4 v6, 0x4

    const-string v7, "access_whitelist"

    invoke-direct {v0, v7, v6, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->access_whitelist:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 37
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/4 v7, 0x5

    const-string v8, "auto_create"

    invoke-direct {v0, v8, v7, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->auto_create:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 38
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/4 v8, 0x6

    const-string v9, "auto_subscribe"

    invoke-direct {v0, v9, v8, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->auto_subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 39
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/4 v9, 0x7

    const-string v10, "collections"

    invoke-direct {v0, v10, v9, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->collections:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 40
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/16 v10, 0x8

    const-string v11, "config_node"

    invoke-direct {v0, v11, v10, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->config_node:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 41
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/16 v11, 0x9

    const-string v12, "create_and_configure"

    invoke-direct {v0, v12, v11, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->create_and_configure:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 42
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/16 v12, 0xa

    const-string v13, "create_nodes"

    invoke-direct {v0, v13, v12, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->create_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 43
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/16 v13, 0xb

    const-string v14, "delete_items"

    invoke-direct {v0, v14, v13, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->delete_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 44
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/16 v14, 0xc

    const-string v15, "delete_nodes"

    invoke-direct {v0, v15, v14, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->delete_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 45
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/16 v15, 0xd

    const-string v14, "get_pending"

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->get_pending:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 46
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const/16 v14, 0xe

    const-string v15, "item_ids"

    invoke-direct {v0, v15, v14, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->item_ids:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 47
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v15, "last_published"

    const/16 v14, 0xf

    invoke-direct {v0, v15, v14, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->last_published:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 48
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "leased_subscription"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->leased_subscription:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 49
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "manage_subscriptions"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->manage_subscriptions:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 50
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "member_affiliation"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->member_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 51
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "meta_data"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->meta_data:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 52
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "modify_affiliations"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->modify_affiliations:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 53
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "multi_collection"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->multi_collection:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 54
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "multi_subscribe"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->multi_subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 55
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "outcast_affiliation"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->outcast_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 56
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "persistent_items"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->persistent_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 57
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "presence_notifications"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->presence_notifications:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 58
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "presence_subscribe"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->presence_subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 59
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->required:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "publish"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->publish:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 60
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "publish_options"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->publish_options:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 61
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "publish_only_affiliation"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->publish_only_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 62
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "publisher_affiliation"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->publisher_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 63
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "purge_nodes"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->purge_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 64
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "retract_items"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retract_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 65
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "retrieve_affiliations"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retrieve_affiliations:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 66
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "retrieve_default"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retrieve_default:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 67
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "retrieve_default_sub"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retrieve_default_sub:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 68
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "retrieve_items"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retrieve_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 69
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "retrieve_subscriptions"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retrieve_subscriptions:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 70
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->required:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "subscribe"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 71
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "subscription_options"

    const/16 v15, 0x27

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->subscription_options:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 72
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->optional:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "subscriptions_notifications"

    const/16 v15, 0x28

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->subscriptions_notifications:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 73
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "instant_nodes"

    const/16 v15, 0x29

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->instant_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 74
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/disco/Feature$Support;->recommended:Lorg/jivesoftware/smackx/disco/Feature$Support;

    const-string v14, "filtered_notifications"

    const/16 v15, 0x2a

    invoke-direct {v0, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->filtered_notifications:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    .line 30
    const/16 v0, 0x2b

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->access_authorize:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->access_open:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->access_presence:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->access_roster:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->access_whitelist:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->auto_create:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->auto_subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->collections:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->config_node:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->create_and_configure:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->create_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v12

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->delete_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v1, v0, v13

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->delete_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->get_pending:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->item_ids:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->last_published:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->leased_subscription:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->manage_subscriptions:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->member_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->meta_data:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->modify_affiliations:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->multi_collection:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->multi_subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->outcast_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->persistent_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->presence_notifications:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->presence_subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->publish:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->publish_options:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->publish_only_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->publisher_affiliation:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->purge_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retract_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retrieve_affiliations:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retrieve_default:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retrieve_default_sub:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retrieve_items:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->retrieve_subscriptions:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->subscription_options:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->subscriptions_notifications:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->instant_nodes:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->filtered_notifications:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/jivesoftware/smackx/disco/Feature$Support;)V
    .locals 1
    .param p3, "support"    # Lorg/jivesoftware/smackx/disco/Feature$Support;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/disco/Feature$Support;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->name()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5f

    const/16 v0, 0x2d

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->feature:Ljava/lang/String;

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "http://jabber.org/protocol/pubsub#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->feature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->qualifiedFeature:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->support:Lorg/jivesoftware/smackx/disco/Feature$Support;

    .line 85
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/PubSubFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/PubSubFeature;
    .locals 1

    .line 30
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 107
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->qualifiedFeature:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->qualifiedFeature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 112
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->qualifiedFeature:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public support()Lorg/jivesoftware/smackx/disco/Feature$Support;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->support:Lorg/jivesoftware/smackx/disco/Feature$Support;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->qualifiedFeature:Ljava/lang/String;

    return-object v0
.end method
