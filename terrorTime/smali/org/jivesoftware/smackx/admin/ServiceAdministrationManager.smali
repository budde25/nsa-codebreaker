.class public Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;
.super Lorg/jivesoftware/smack/Manager;
.source "ServiceAdministrationManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final COMMAND_NODE:Ljava/lang/String; = "http://jabber.org/protocol/admin"

.field private static final COMMAND_NODE_HASHSIGN:Ljava/lang/String; = "http://jabber.org/protocol/admin#"

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adHocCommandManager:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    nop

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 59
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 61
    invoke-static {p1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->getAddHocCommandsManager(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->adHocCommandManager:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    .line 62
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;

    .line 49
    .local v1, "serviceAdministrationManager":Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;
    if-nez v1, :cond_0

    .line 50
    new-instance v2, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 51
    sget-object v2, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit v0

    return-object v1

    .line 47
    .end local v1    # "serviceAdministrationManager":Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addUser()Lorg/jivesoftware/smackx/commands/RemoteCommand;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->addUser(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/commands/RemoteCommand;

    move-result-object v0

    return-object v0
.end method

.method public addUser(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/commands/RemoteCommand;
    .locals 2
    .param p1, "service"    # Lorg/jxmpp/jid/Jid;

    .line 69
    iget-object v0, p0, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->adHocCommandManager:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    const-string v1, "http://jabber.org/protocol/admin#add-user"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->getRemoteCommand(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/RemoteCommand;

    move-result-object v0

    return-object v0
.end method

.method public addUser(Lorg/jxmpp/jid/EntityBareJid;Ljava/lang/String;)V
    .locals 5
    .param p1, "userJid"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->addUser()Lorg/jivesoftware/smackx/commands/RemoteCommand;

    move-result-object v0

    .line 75
    .local v0, "command":Lorg/jivesoftware/smackx/commands/RemoteCommand;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->execute()V

    .line 77
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->getForm()Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/Form;->createAnswerForm()Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v1

    .line 79
    .local v1, "answerForm":Lorg/jivesoftware/smackx/xdata/Form;
    const-string v2, "accountjid"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v2

    .line 80
    .local v2, "accountJidField":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 82
    const-string v3, "password"

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v3

    .line 83
    .local v3, "passwordField":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v3, p2}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 85
    const-string v4, "password-verify"

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v4

    .line 86
    .local v4, "passwordVerifyField":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v4, p2}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->execute(Lorg/jivesoftware/smackx/xdata/Form;)V

    .line 89
    nop

    .line 90
    return-void
.end method

.method public deleteUser()Lorg/jivesoftware/smackx/commands/RemoteCommand;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->deleteUser(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/commands/RemoteCommand;

    move-result-object v0

    return-object v0
.end method

.method public deleteUser(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/commands/RemoteCommand;
    .locals 2
    .param p1, "service"    # Lorg/jxmpp/jid/Jid;

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->adHocCommandManager:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    const-string v1, "http://jabber.org/protocol/admin#delete-user"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->getRemoteCommand(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/RemoteCommand;

    move-result-object v0

    return-object v0
.end method

.method public deleteUser(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 108
    .local p1, "jidsToDelete":Ljava/util/Set;, "Ljava/util/Set<Lorg/jxmpp/jid/EntityBareJid;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->deleteUser()Lorg/jivesoftware/smackx/commands/RemoteCommand;

    move-result-object v0

    .line 109
    .local v0, "command":Lorg/jivesoftware/smackx/commands/RemoteCommand;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->execute()V

    .line 111
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->getForm()Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/Form;->createAnswerForm()Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v1

    .line 113
    .local v1, "answerForm":Lorg/jivesoftware/smackx/xdata/Form;
    const-string v2, "accountjids"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v2

    .line 114
    .local v2, "accountJids":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-static {p1}, Lorg/jxmpp/jid/util/JidUtil;->toStringList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/xdata/FormField;->addValues(Ljava/util/List;)V

    .line 116
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->execute(Lorg/jivesoftware/smackx/xdata/Form;)V

    .line 117
    nop

    .line 118
    return-void
.end method

.method public deleteUser(Lorg/jxmpp/jid/EntityBareJid;)V
    .locals 1
    .param p1, "userJidToDelete"    # Lorg/jxmpp/jid/EntityBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 102
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 103
    .local v0, "userJidsToDelete":Ljava/util/Set;, "Ljava/util/Set<Lorg/jxmpp/jid/EntityBareJid;>;"
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/admin/ServiceAdministrationManager;->deleteUser(Ljava/util/Set;)V

    .line 104
    return-void
.end method
