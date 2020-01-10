.class public Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;
.super Ljava/lang/Object;
.source "MUCLightRoomConfiguration.java"


# instance fields
.field private final customConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final roomName:Ljava/lang/String;

.field private final subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "roomName"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p3, "customConfigs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;->roomName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;->subject:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;->customConfigs:Ljava/util/HashMap;

    .line 44
    return-void
.end method


# virtual methods
.method public getCustomConfigs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;->customConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;->roomName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;->subject:Ljava/lang/String;

    return-object v0
.end method
