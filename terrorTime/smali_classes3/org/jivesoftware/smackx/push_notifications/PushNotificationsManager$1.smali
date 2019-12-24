.class Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager$1;
.super Ljava/lang/Object;
.source "PushNotificationsManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 54
    invoke-static {p1}, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;

    .line 55
    return-void
.end method
