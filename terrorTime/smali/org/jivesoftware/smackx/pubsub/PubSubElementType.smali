.class public final enum Lorg/jivesoftware/smackx/pubsub/PubSubElementType;
.super Ljava/lang/Enum;
.source "PubSubElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/PubSubElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum AFFILIATIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum AFFILIATIONS_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum CONFIGURATION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum CONFIGURE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum CONFIGURE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum CREATE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum DEFAULT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum DELETE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum DELETE_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum ITEM:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum ITEMS_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum ITEM_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum OPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum PUBLISH:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum PUBLISH_OPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum PURGE_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum PURGE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum RETRACT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum SUBSCRIBE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum SUBSCRIPTION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum SUBSCRIPTIONS_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

.field public static final enum UNSUBSCRIBE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;


# instance fields
.field private final eName:Ljava/lang/String;

.field private final nSpace:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const/4 v2, 0x0

    const-string v3, "CREATE"

    const-string v4, "create"

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CREATE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v3, "delete"

    const/4 v4, 0x1

    const-string v5, "DELETE"

    invoke-direct {v0, v5, v4, v3, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DELETE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 32
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->event:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const/4 v5, 0x2

    const-string v6, "DELETE_EVENT"

    invoke-direct {v0, v6, v5, v3, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DELETE_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 33
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v3, "configure"

    const/4 v6, 0x3

    const-string v7, "CONFIGURE"

    invoke-direct {v0, v7, v6, v3, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 34
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const/4 v7, 0x4

    const-string v8, "CONFIGURE_OWNER"

    invoke-direct {v0, v8, v7, v3, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 35
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->event:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const/4 v3, 0x5

    const-string v8, "CONFIGURATION"

    const-string v9, "configuration"

    invoke-direct {v0, v8, v3, v9, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURATION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 36
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const/4 v8, 0x6

    const-string v9, "OPTIONS"

    const-string v10, "options"

    invoke-direct {v0, v9, v8, v10, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->OPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 37
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const/4 v9, 0x7

    const-string v10, "DEFAULT"

    const-string v11, "default"

    invoke-direct {v0, v10, v9, v11, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DEFAULT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 38
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "items"

    const/16 v11, 0x8

    const-string v12, "ITEMS"

    invoke-direct {v0, v12, v11, v10, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 39
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->event:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const/16 v12, 0x9

    const-string v13, "ITEMS_EVENT"

    invoke-direct {v0, v13, v12, v10, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 40
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "item"

    const/16 v13, 0xa

    const-string v14, "ITEM"

    invoke-direct {v0, v14, v13, v10, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEM:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 41
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->event:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v14, "ITEM_EVENT"

    const/16 v15, 0xb

    invoke-direct {v0, v14, v15, v10, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEM_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 42
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "PUBLISH"

    const/16 v14, 0xc

    const-string v15, "publish"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PUBLISH:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 43
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "PUBLISH_OPTIONS"

    const/16 v14, 0xd

    const-string v15, "publish-options"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PUBLISH_OPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 44
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "PURGE_OWNER"

    const/16 v14, 0xe

    const-string v15, "purge"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PURGE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 45
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->event:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "PURGE_EVENT"

    const/16 v14, 0xf

    const-string v15, "purge"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PURGE_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 46
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "RETRACT"

    const/16 v14, 0x10

    const-string v15, "retract"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->RETRACT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 47
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "AFFILIATIONS"

    const/16 v14, 0x11

    const-string v15, "affiliations"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->AFFILIATIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 48
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "AFFILIATIONS_OWNER"

    const/16 v14, 0x12

    const-string v15, "affiliations"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->AFFILIATIONS_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 49
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "SUBSCRIBE"

    const/16 v14, 0x13

    const-string v15, "subscribe"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIBE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 50
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "SUBSCRIPTION"

    const/16 v14, 0x14

    const-string v15, "subscription"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 51
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "SUBSCRIPTIONS"

    const/16 v14, 0x15

    const-string v15, "subscriptions"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 52
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "SUBSCRIPTIONS_OWNER"

    const/16 v14, 0x16

    const-string v15, "subscriptions"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 53
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v10, "UNSUBSCRIBE"

    const/16 v14, 0x17

    const-string v15, "unsubscribe"

    invoke-direct {v0, v10, v14, v15, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->UNSUBSCRIBE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 29
    const/16 v0, 0x18

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CREATE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DELETE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DELETE_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURATION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->OPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DEFAULT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    aput-object v1, v0, v12

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEM:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    aput-object v1, v0, v13

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEM_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PUBLISH:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PUBLISH_OPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PURGE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PURGE_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->RETRACT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->AFFILIATIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->AFFILIATIONS_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIBE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->UNSUBSCRIBE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V
    .locals 0
    .param p3, "elemName"    # Ljava/lang/String;
    .param p4, "ns"    # Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->eName:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->nSpace:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/PubSubElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    return-object v0
.end method

.method public static valueOfFromElemName(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/PubSubElementType;
    .locals 5
    .param p0, "elemName"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;

    .line 72
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 73
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "fragment":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x5f

    if-eqz v1, :cond_1

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    move-result-object v2

    return-object v2

    .line 78
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    move-result-object v2

    return-object v2
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/PubSubElementType;
    .locals 1

    .line 29
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->eName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->nSpace:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    return-object v0
.end method
