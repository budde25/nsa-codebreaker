.class final Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdHocCommandInfo"
.end annotation


# instance fields
.field private factory:Lorg/jivesoftware/smackx/commands/LocalCommandFactory;

.field private name:Ljava/lang/String;

.field private node:Ljava/lang/String;

.field private final ownerJID:Lorg/jxmpp/jid/Jid;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/commands/LocalCommandFactory;)V
    .locals 0
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ownerJID"    # Lorg/jxmpp/jid/Jid;
    .param p4, "factory"    # Lorg/jivesoftware/smackx/commands/LocalCommandFactory;

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->node:Ljava/lang/String;

    .line 676
    iput-object p2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->name:Ljava/lang/String;

    .line 677
    iput-object p3, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->ownerJID:Lorg/jxmpp/jid/Jid;

    .line 678
    iput-object p4, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->factory:Lorg/jivesoftware/smackx/commands/LocalCommandFactory;

    .line 679
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/commands/LocalCommandFactory;Lorg/jivesoftware/smackx/commands/AdHocCommandManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/jxmpp/jid/Jid;
    .param p4, "x3"    # Lorg/jivesoftware/smackx/commands/LocalCommandFactory;
    .param p5, "x4"    # Lorg/jivesoftware/smackx/commands/AdHocCommandManager$1;

    .line 666
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/commands/LocalCommandFactory;)V

    return-void
.end method


# virtual methods
.method public getCommandInstance()Lorg/jivesoftware/smackx/commands/LocalCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->factory:Lorg/jivesoftware/smackx/commands/LocalCommandFactory;

    invoke-interface {v0}, Lorg/jivesoftware/smackx/commands/LocalCommandFactory;->getInstance()Lorg/jivesoftware/smackx/commands/LocalCommand;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 687
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 691
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerJID()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 695
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->ownerJID:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method
