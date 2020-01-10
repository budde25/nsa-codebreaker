.class public abstract Lorg/jivesoftware/smackx/iot/IoTManager;
.super Lorg/jivesoftware/smack/Manager;
.source "IoTManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/iot/IoTManager$IoTIqRequestHandler;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static autoEnable:Z


# instance fields
.field private allowNonFriends:Z

.field private final ioTProvisioningManager:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/jivesoftware/smackx/iot/IoTManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/iot/IoTManager;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 50
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 52
    invoke-static {p1}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/IoTManager;->ioTProvisioningManager:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    .line 53
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 31
    sget-object v0, Lorg/jivesoftware/smackx/iot/IoTManager;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static isAutoEnableActive()Z
    .locals 1

    .line 46
    sget-boolean v0, Lorg/jivesoftware/smackx/iot/IoTManager;->autoEnable:Z

    return v0
.end method

.method public static setAutoEnableIoTManagers(Z)V
    .locals 0
    .param p0, "autoEnable"    # Z

    .line 42
    sput-boolean p0, Lorg/jivesoftware/smackx/iot/IoTManager;->autoEnable:Z

    .line 43
    return-void
.end method


# virtual methods
.method protected isAllowed(Lorg/jxmpp/jid/Jid;)Z
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 66
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/IoTManager;->allowNonFriends:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/IoTManager;->ioTProvisioningManager:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->isMyFriend(Lorg/jxmpp/jid/Jid;)Z

    move-result v0

    return v0
.end method

.method public setAllowNonFriends(Z)V
    .locals 0
    .param p1, "allowNonFriends"    # Z

    .line 62
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/iot/IoTManager;->allowNonFriends:Z

    .line 63
    return-void
.end method
