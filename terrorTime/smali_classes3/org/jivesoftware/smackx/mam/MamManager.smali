.class public final Lorg/jivesoftware/smackx/mam/MamManager;
.super Lorg/jivesoftware/smack/Manager;
.source "MamManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;,
        Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;,
        Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;,
        Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;,
        Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;,
        Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;
    }
.end annotation


# static fields
.field private static final FORM_FIELD_END:Ljava/lang/String; = "end"

.field private static final FORM_FIELD_START:Ljava/lang/String; = "start"

.field private static final FORM_FIELD_WITH:Ljava/lang/String; = "with"

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/mam/MamManager;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final archiveAddress:Lorg/jxmpp/jid/Jid;

.field private final serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Lorg/jivesoftware/smackx/mam/MamManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/mam/MamManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 173
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/mam/MamManager;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/Jid;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "archiveAddress"    # Lorg/jxmpp/jid/Jid;

    .line 220
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 221
    iput-object p2, p0, Lorg/jivesoftware/smackx/mam/MamManager;->archiveAddress:Lorg/jxmpp/jid/Jid;

    .line 222
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager;->serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    .line 223
    return-void
.end method

.method static synthetic access$2100(Lorg/jivesoftware/smackx/mam/MamManager;)Lorg/jxmpp/jid/Jid;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager;

    .line 158
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager;->archiveAddress:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/jivesoftware/smackx/mam/MamManager;Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager;
    .param p1, "x1"    # Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchivePage(Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 1

    .line 158
    invoke-static {}, Lorg/jivesoftware/smackx/mam/MamManager;->getNewMamForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/xdata/FormField;
    .locals 1
    .param p0, "x0"    # Lorg/jxmpp/jid/Jid;

    .line 158
    invoke-static {p0}, Lorg/jivesoftware/smackx/mam/MamManager;->getWithFormField(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    return-object v0
.end method

.method private static addWithJid(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 1
    .param p0, "withJid"    # Lorg/jxmpp/jid/Jid;
    .param p1, "dataForm"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 665
    if-nez p0, :cond_0

    .line 666
    return-void

    .line 668
    :cond_0
    invoke-static {p0}, Lorg/jivesoftware/smackx/mam/MamManager;->getWithFormField(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 669
    .local v0, "formField":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 670
    return-void
.end method

.method private ensureMamQueryResultMatchesThisManager(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;)V
    .locals 8
    .param p1, "mamQueryResult"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    .line 1068
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/MamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    .line 1069
    .local v0, "localAddress":Lorg/jxmpp/jid/EntityFullJid;
    const/4 v1, 0x0

    .line 1070
    .local v1, "localBareAddress":Lorg/jxmpp/jid/EntityBareJid;
    if-eqz v0, :cond_0

    .line 1071
    invoke-interface {v0}, Lorg/jxmpp/jid/EntityFullJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    .line 1073
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/mam/MamManager;->archiveAddress:Lorg/jxmpp/jid/Jid;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 1075
    .local v2, "isLocalUserArchive":Z
    :goto_1
    iget-object v3, p1, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;->mamFin:Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v3

    .line 1077
    .local v3, "finIqFrom":Lorg/jxmpp/jid/Jid;
    const/16 v4, 0x27

    if-eqz v3, :cond_5

    .line 1078
    iget-object v5, p0, Lorg/jivesoftware/smackx/mam/MamManager;->archiveAddress:Lorg/jxmpp/jid/Jid;

    invoke-interface {v3, v5}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v2, :cond_3

    invoke-interface {v3, v1}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 1081
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The given MamQueryResult is from the MAM archive \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\' whereas this MamManager is responsible for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jivesoftware/smackx/mam/MamManager;->archiveAddress:Lorg/jxmpp/jid/Jid;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1079
    :cond_4
    :goto_2
    return-void

    .line 1084
    :cond_5
    if-eqz v2, :cond_6

    .line 1089
    return-void

    .line 1085
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The given MamQueryResult is from the local entity (user) MAM archive, whereas this MamManager is responsible for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jivesoftware/smackx/mam/MamManager;->archiveAddress:Lorg/jxmpp/jid/Jid;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/mam/MamManager;
    .locals 1
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 184
    const/4 v0, 0x0

    check-cast v0, Lorg/jxmpp/jid/Jid;

    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/mam/MamManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/mam/MamManager;
    .locals 4
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "archiveAddress"    # Lorg/jxmpp/jid/Jid;

    const-class v0, Lorg/jivesoftware/smackx/mam/MamManager;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/mam/MamManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 203
    .local v1, "managers":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/mam/MamManager;>;"
    if-nez v1, :cond_0

    .line 204
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 205
    sget-object v2, Lorg/jivesoftware/smackx/mam/MamManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/mam/MamManager;

    .line 208
    .local v2, "mamManager":Lorg/jivesoftware/smackx/mam/MamManager;
    if-nez v2, :cond_1

    .line 209
    new-instance v3, Lorg/jivesoftware/smackx/mam/MamManager;

    invoke-direct {v3, p0, p1}, Lorg/jivesoftware/smackx/mam/MamManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/Jid;)V

    move-object v2, v3

    .line 210
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_1
    monitor-exit v0

    return-object v2

    .line 201
    .end local v1    # "managers":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/mam/MamManager;>;"
    .end local v2    # "mamManager":Lorg/jivesoftware/smackx/mam/MamManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local p1    # "archiveAddress":Lorg/jxmpp/jid/Jid;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstanceFor(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Lorg/jivesoftware/smackx/mam/MamManager;
    .locals 3
    .param p0, "multiUserChat"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 196
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getXmppConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 197
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getRoom()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    .line 198
    .local v1, "archiveAddress":Lorg/jxmpp/jid/Jid;
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/mam/MamManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/mam/MamManager;

    move-result-object v2

    return-object v2
.end method

.method private static getNewMamForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 3

    .line 1110
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField;

    const-string v1, "FORM_TYPE"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v0, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    sget-object v1, Lorg/jivesoftware/smackx/xdata/FormField$Type;->hidden:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/FormField;->setType(Lorg/jivesoftware/smackx/xdata/FormField$Type;)V

    .line 1112
    const-string v1, "urn:xmpp:mam:1"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 1113
    new-instance v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    sget-object v2, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->submit:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V

    .line 1114
    .local v1, "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 1115
    return-object v1
.end method

.method private static getWithFormField(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/xdata/FormField;
    .locals 2
    .param p0, "withJid"    # Lorg/jxmpp/jid/Jid;

    .line 659
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField;

    const-string v1, "with"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, "formField":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-interface {p0}, Lorg/jxmpp/jid/Jid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 661
    return-object v0
.end method

.method private page(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 2
    .param p1, "mamQueryResult"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .param p2, "requestRsmSet"    # Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 770
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/mam/MamManager;->ensureMamQueryResultMatchesThisManager(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;)V

    .line 772
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;->access$1000(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;->access$1100(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;)Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/jivesoftware/smackx/mam/MamManager;->page(Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v0

    return-object v0
.end method

.method private queryArchive(Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;
    .locals 8
    .param p1, "mamQueryIq"    # Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 900
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchivePage(Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    move-result-object v6

    .line 901
    .local v6, "mamQueryPage":Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;
    new-instance v7, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->getNode()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;-><init>(Lorg/jivesoftware/smackx/mam/MamManager;Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;Lorg/jivesoftware/smackx/mam/MamManager$1;)V

    return-object v7
.end method

.method private queryArchivePage(Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;
    .locals 7
    .param p1, "mamQueryIq"    # Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 906
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/MamManager;->getAuthenticatedConnectionOrThrow()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 909
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    new-instance v1, Lorg/jivesoftware/smack/filter/IQReplyFilter;

    invoke-direct {v1, p1, v0}, Lorg/jivesoftware/smack/filter/IQReplyFilter;-><init>(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/XMPPConnection;)V

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    .line 911
    .local v1, "mamFinIQCollector":Lorg/jivesoftware/smack/StanzaCollector;
    invoke-static {}, Lorg/jivesoftware/smack/StanzaCollector;->newConfiguration()Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v2

    new-instance v3, Lorg/jivesoftware/smackx/mam/filter/MamResultFilter;

    invoke-direct {v3, p1}, Lorg/jivesoftware/smackx/mam/filter/MamResultFilter;-><init>(Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)V

    .line 912
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setStanzaFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setCollectorToReset(Lorg/jivesoftware/smack/StanzaCollector;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v2

    .line 913
    .local v2, "resultCollectorConfiguration":Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    invoke-interface {v0, v2}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v3

    .line 916
    .local v3, "resultCollector":Lorg/jivesoftware/smack/StanzaCollector;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 917
    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    .local v4, "mamFinIQ":Lorg/jivesoftware/smackx/mam/element/MamFinIQ;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 920
    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 921
    nop

    .line 923
    new-instance v5, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v4, v6}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;-><init>(Lorg/jivesoftware/smack/StanzaCollector;Lorg/jivesoftware/smackx/mam/element/MamFinIQ;Lorg/jivesoftware/smackx/mam/MamManager$1;)V

    return-object v5

    .line 919
    .end local v4    # "mamFinIQ":Lorg/jivesoftware/smackx/mam/element/MamFinIQ;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 920
    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    throw v4
.end method

.method private queryMamPrefs(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;
    .locals 5
    .param p1, "mamPrefsIQ"    # Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 1281
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/MamManager;->getAuthenticatedConnectionOrThrow()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 1283
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;

    .line 1285
    .local v1, "mamPrefsResultIQ":Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
    new-instance v2, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;

    invoke-static {p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;-><init>(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;Lorg/jivesoftware/smackx/xdata/packet/DataForm;Lorg/jivesoftware/smackx/mam/MamManager$1;)V

    return-object v2
.end method


# virtual methods
.method public enableMamForAllMessages()Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1208
    sget-object v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->always:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->setDefaultBehavior(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;)Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;

    move-result-object v0

    return-object v0
.end method

.method public enableMamForRosterMessages()Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1213
    sget-object v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->roster:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->setDefaultBehavior(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;)Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;

    move-result-object v0

    return-object v0
.end method

.method public getArchiveAddress()Lorg/jxmpp/jid/Jid;
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager;->archiveAddress:Lorg/jxmpp/jid/Jid;

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/MamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    .line 235
    .local v0, "localJid":Lorg/jxmpp/jid/EntityFullJid;
    if-nez v0, :cond_0

    .line 236
    const/4 v1, 0x0

    return-object v1

    .line 238
    :cond_0
    invoke-interface {v0}, Lorg/jxmpp/jid/EntityFullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    return-object v1

    .line 240
    .end local v0    # "localJid":Lorg/jxmpp/jid/EntityFullJid;
    :cond_1
    return-object v0
.end method

.method public getMessageUidOfLatestMessage()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1131
    invoke-static {}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->builder()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 1132
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->setResultPageSize(Ljava/lang/Integer;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->queryLastPage()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 1134
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->build()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;

    move-result-object v0

    .line 1136
    .local v0, "mamQueryArgs":Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;)Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;

    move-result-object v1

    .line 1137
    .local v1, "mamQuery":Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->getMessages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1138
    const/4 v2, 0x0

    return-object v2

    .line 1141
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->getMamResultExtensions()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->getId()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1105
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/MamManager;->getArchiveAddress()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 1106
    .local v0, "archiveAddress":Lorg/jxmpp/jid/Jid;
    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager;->serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    const-string v2, "urn:xmpp:mam:1"

    invoke-virtual {v1, v0, v2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public mostRecentPage(Lorg/jxmpp/jid/Jid;I)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 1
    .param p1, "chatJid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 846
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/mam/MamManager;->pageBefore(Lorg/jxmpp/jid/Jid;Ljava/lang/String;I)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public page(Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 4
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "dataForm"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .param p3, "rsmSet"    # Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    new-instance v0, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 713
    .local v0, "mamQueryIQ":Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 714
    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager;->archiveAddress:Lorg/jxmpp/jid/Jid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 715
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 716
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;

    move-result-object v1

    .line 717
    .local v1, "mamQuery":Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;
    new-instance v2, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;-><init>(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;Lorg/jivesoftware/smackx/mam/MamManager$1;)V

    return-object v2
.end method

.method public page(Lorg/jivesoftware/smackx/xdata/packet/DataForm;Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 1
    .param p1, "dataForm"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .param p2, "rsmSet"    # Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 689
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/mam/MamManager;->page(Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public pageAfter(Lorg/jxmpp/jid/Jid;Ljava/lang/String;I)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 10
    .param p1, "chatJid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "messageUid"    # Ljava/lang/String;
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    new-instance v9, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, v9

    move-object v1, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    .line 824
    .local v0, "rsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    invoke-static {}, Lorg/jivesoftware/smackx/mam/MamManager;->getNewMamForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v1

    .line 825
    .local v1, "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    invoke-static {p1, v1}, Lorg/jivesoftware/smackx/mam/MamManager;->addWithJid(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 826
    invoke-virtual {p0, v2, v1, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->page(Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v2

    return-object v2
.end method

.method public pageBefore(Lorg/jxmpp/jid/Jid;Ljava/lang/String;I)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 10
    .param p1, "chatJid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "messageUid"    # Ljava/lang/String;
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 796
    new-instance v9, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, v9

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    .line 797
    .local v0, "rsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    invoke-static {}, Lorg/jivesoftware/smackx/mam/MamManager;->getNewMamForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v1

    .line 798
    .local v1, "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    invoke-static {p1, v1}, Lorg/jivesoftware/smackx/mam/MamManager;->addWithJid(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 799
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->page(Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v2

    return-object v2
.end method

.method public pageNext(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;I)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 4
    .param p1, "mamQueryResult"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 739
    iget-object v0, p1, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;->mamFin:Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->getRSMSet()Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    move-result-object v0

    .line 740
    .local v0, "previousResultRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    new-instance v1, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;->getLast()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;->after:Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;

    invoke-direct {v1, p2, v2, v3}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;-><init>(ILjava/lang/String;Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;)V

    .line 741
    .local v1, "requestRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    invoke-direct {p0, p1, v1}, Lorg/jivesoftware/smackx/mam/MamManager;->page(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v2

    return-object v2
.end method

.method public pagePrevious(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;I)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 4
    .param p1, "mamQueryResult"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 763
    iget-object v0, p1, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;->mamFin:Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->getRSMSet()Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    move-result-object v0

    .line 764
    .local v0, "previousResultRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    new-instance v1, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;->getFirst()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;->before:Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;

    invoke-direct {v1, p2, v2, v3}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;-><init>(ILjava/lang/String;Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;)V

    .line 765
    .local v1, "requestRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    invoke-direct {p0, p1, v1}, Lorg/jivesoftware/smackx/mam/MamManager;->page(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v2

    return-object v2
.end method

.method public queryArchive(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;)Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;
    .locals 5
    .param p1, "mamQueryArgs"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 645
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "queryId":Ljava/lang/String;
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->access$900(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "node":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->getDataForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v2

    .line 649
    .local v2, "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    new-instance v3, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;

    invoke-direct {v3, v0, v1, v2}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 650
    .local v3, "mamQueryIQ":Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 651
    iget-object v4, p0, Lorg/jivesoftware/smackx/mam/MamManager;->archiveAddress:Lorg/jxmpp/jid/Jid;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 653
    invoke-virtual {p1, v3}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->maybeAddRsmSet(Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)V

    .line 655
    invoke-direct {p0, v3}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;

    move-result-object v4

    return-object v4
.end method

.method public queryArchive(Ljava/lang/Integer;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 7
    .param p1, "max"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lorg/jxmpp/jid/Jid;Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public queryArchive(Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lorg/jxmpp/jid/Jid;Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 7
    .param p1, "max"    # Ljava/lang/Integer;
    .param p2, "start"    # Ljava/util/Date;
    .param p3, "end"    # Ljava/util/Date;
    .param p4, "withJid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;)",
            "Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 601
    .local p5, "additionalFields":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/xdata/FormField;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lorg/jxmpp/jid/Jid;Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public queryArchive(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lorg/jxmpp/jid/Jid;Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 4
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/Integer;
    .param p3, "start"    # Ljava/util/Date;
    .param p4, "end"    # Ljava/util/Date;
    .param p5, "withJid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;)",
            "Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 630
    .local p6, "additionalFields":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/xdata/FormField;>;"
    invoke-static {}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->builder()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 631
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->queryNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 632
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->setResultPageSize(Ljava/lang/Integer;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 633
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->limitResultsSince(Ljava/util/Date;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 634
    invoke-virtual {v0, p4}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->limitResultsBefore(Ljava/util/Date;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 635
    invoke-virtual {v0, p5}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->limitResultsToJid(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 636
    invoke-virtual {v0, p6}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->withAdditionalFormFields(Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->build()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;

    move-result-object v0

    .line 639
    .local v0, "mamQueryArgs":Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;)Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;

    move-result-object v1

    .line 640
    .local v1, "mamQuery":Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;
    new-instance v2, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;-><init>(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;Lorg/jivesoftware/smackx/mam/MamManager$1;)V

    return-object v2
.end method

.method public queryArchive(Ljava/util/Date;Ljava/util/Date;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 7
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 516
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lorg/jxmpp/jid/Jid;Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public queryArchive(Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;)",
            "Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 535
    .local p1, "additionalFields":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/xdata/FormField;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lorg/jxmpp/jid/Jid;Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public queryArchive(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 7
    .param p1, "withJid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lorg/jxmpp/jid/Jid;Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public queryArchiveWithEndDate(Ljava/util/Date;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 7
    .param p1, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 575
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lorg/jxmpp/jid/Jid;Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public queryArchiveWithStartDate(Ljava/util/Date;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
    .locals 7
    .param p1, "start"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 555
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lorg/jxmpp/jid/Jid;Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public queryMostRecentPage(Lorg/jxmpp/jid/Jid;I)Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 851
    invoke-static {}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;->builder()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->queryLastPage()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 854
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->limitResultsToJid(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 855
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->setResultPageSize(Ljava/lang/Integer;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->build()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;

    move-result-object v0

    .line 857
    .local v0, "mamQueryArgs":Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->queryArchive(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;)Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;

    move-result-object v1

    return-object v1
.end method

.method public retrieveArchivingPreferences()Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 1156
    new-instance v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;-><init>()V

    .line 1157
    .local v0, "mamPrefIQ":Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->queryMamPrefs(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;

    move-result-object v1

    return-object v1
.end method

.method public retrieveFormFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 872
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->retrieveFormFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public retrieveFormFields(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 889
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "queryId":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 891
    .local v1, "mamQueryIq":Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/mam/MamManager;->archiveAddress:Lorg/jxmpp/jid/Jid;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 893
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/MamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;

    .line 895
    .local v2, "mamResponseQueryIq":Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->getDataForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getFields()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public setDefaultBehavior(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;)Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;
    .locals 3
    .param p1, "desiredDefaultBehavior"    # Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1218
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/MamManager;->retrieveArchivingPreferences()Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;

    move-result-object v0

    .line 1219
    .local v0, "mamPrefsResult":Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;
    iget-object v1, v0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;->mamPrefs:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->getDefault()Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1220
    return-object v0

    .line 1223
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;->asMamPrefs()Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;

    move-result-object v1

    .line 1224
    .local v1, "mamPrefs":Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->setDefaultBehavior(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;)V

    .line 1225
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/mam/MamManager;->updateArchivingPreferences(Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;)Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;

    move-result-object v2

    return-object v2
.end method

.method public updateArchivingPreferences(Ljava/util/List;Ljava/util/List;Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;)Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;
    .locals 2
    .param p3, "defaultBehavior"    # Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;",
            ")",
            "Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1183
    .local p1, "alwaysJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    .local p2, "neverJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    const-string v0, "Default behavior must be set"

    invoke-static {p3, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1184
    new-instance v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;

    invoke-direct {v0, p1, p2, p3}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;-><init>(Ljava/util/List;Ljava/util/List;Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;)V

    .line 1185
    .local v0, "mamPrefIQ":Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->queryMamPrefs(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;

    move-result-object v1

    return-object v1
.end method

.method public updateArchivingPreferences(Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;)Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;
    .locals 2
    .param p1, "mamPrefs"    # Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 1202
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->access$2300(Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;)Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;

    move-result-object v0

    .line 1203
    .local v0, "mamPrefIQ":Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->queryMamPrefs(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;

    move-result-object v1

    return-object v1
.end method
