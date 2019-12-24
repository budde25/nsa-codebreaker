.class public final Lorg/jivesoftware/smackx/pubsub/filter/EventExtensionFilter;
.super Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;
.source "EventExtensionFilter.java"


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smackx/pubsub/filter/EventExtensionFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/filter/EventExtensionFilter;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/pubsub/filter/EventExtensionFilter;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/filter/EventExtensionFilter;->INSTANCE:Lorg/jivesoftware/smackx/pubsub/filter/EventExtensionFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 34
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/EventElement;->NAMESPACE:Ljava/lang/String;

    const-string v1, "event"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
