.class public Lorg/jivesoftware/smackx/muc/MultiUserChat;
.super Ljava/lang/Object;
.source "MultiUserChat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;
    }
.end annotation


# static fields
.field private static final DECLINE_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static final KNOWN_MUC_SERVICES:Lorg/jxmpp/util/cache/ExpirationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/ExpirationCache<",
            "Lorg/jxmpp/jid/DomainBareJid;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/AsyncButOrdered<",
            "Lorg/jivesoftware/smackx/muc/MultiUserChat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private final declinesListener:Lorg/jivesoftware/smack/StanzaListener;

.field private final fromRoomFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private final fromRoomGroupchatFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private final invitationRejectionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private joined:Z

.field private messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

.field private final messageListener:Lorg/jivesoftware/smack/StanzaListener;

.field private final messageListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final multiUserChatManager:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

.field private myRoomJid:Lorg/jxmpp/jid/EntityFullJid;

.field private final occupantsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/EntityFullJid;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation
.end field

.field private final participantStatusListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final presenceInterceptor:Lorg/jivesoftware/smack/StanzaListener;

.field private final presenceInterceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/PresenceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final presenceListener:Lorg/jivesoftware/smack/StanzaListener;

.field private final presenceListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/PresenceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final room:Lorg/jxmpp/jid/EntityBareJid;

.field private subject:Ljava/lang/String;

.field private final subjectListener:Lorg/jivesoftware/smack/StanzaListener;

.field private final subjectUpdatedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final userStatusListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/muc/UserStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 110
    const-class v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->LOGGER:Ljava/util/logging/Logger;

    .line 112
    new-instance v0, Lorg/jxmpp/util/cache/ExpirationCache;

    const/16 v1, 0x64

    const-wide/32 v2, 0x5265c00

    invoke-direct {v0, v1, v2, v3}, Lorg/jxmpp/util/cache/ExpirationCache;-><init>(IJ)V

    sput-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->KNOWN_MUC_SERVICES:Lorg/jxmpp/util/cache/ExpirationCache;

    .line 145
    new-instance v0, Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-direct {v0}, Lorg/jivesoftware/smack/AsyncButOrdered;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;

    .line 147
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v2, Lorg/jivesoftware/smack/filter/MessageTypeFilter;->NORMAL:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;

    const-string v3, "x"

    const-string v4, "http://jabber.org/protocol/muc#user"

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->DECLINE_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)V
    .locals 4
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "room"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p3, "multiUserChatManager"    # Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/Set;

    .line 121
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/Set;

    .line 122
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    .line 123
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageListeners:Ljava/util/Set;

    .line 125
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceListeners:Ljava/util/Set;

    .line 126
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/Set;

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 157
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 158
    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    .line 159
    iput-object p3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->multiUserChatManager:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    .line 161
    invoke-static {p2}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->create(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fromRoomFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 162
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fromRoomFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v3, v2, v0

    sget-object v0, Lorg/jivesoftware/smack/filter/MessageTypeFilter;->GROUPCHAT:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fromRoomGroupchatFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 164
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$1;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageListener:Lorg/jivesoftware/smack/StanzaListener;

    .line 181
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$2;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectListener:Lorg/jivesoftware/smack/StanzaListener;

    .line 202
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceListener:Lorg/jivesoftware/smack/StanzaListener;

    .line 278
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$4;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$4;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->declinesListener:Lorg/jivesoftware/smack/StanzaListener;

    .line 294
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptor:Lorg/jivesoftware/smack/StanzaListener;

    .line 303
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Lorg/jivesoftware/smack/AsyncButOrdered;
    .locals 1

    .line 109
    sget-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .param p1, "x1"    # Lorg/jivesoftware/smack/packet/Message;
    .param p2, "x2"    # Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;

    .line 109
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireInvitationRejectionListeners(Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$202(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .param p1, "x1"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subject:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->myRoomJid:Lorg/jxmpp/jid/EntityFullJid;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jivesoftware/smackx/muc/MUCRole;ZLorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .param p1, "x1"    # Lorg/jivesoftware/smackx/muc/MUCRole;
    .param p2, "x2"    # Lorg/jivesoftware/smackx/muc/MUCRole;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->checkRoleModifications(Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jivesoftware/smackx/muc/MUCRole;ZLorg/jxmpp/jid/EntityFullJid;)V

    return-void
.end method

.method static synthetic access$700(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCAffiliation;ZLorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .param p1, "x1"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .param p2, "x2"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->checkAffiliationModifications(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCAffiliation;ZLorg/jxmpp/jid/EntityFullJid;)V

    return-void
.end method

.method static synthetic access$800(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/util/Set;ZLorg/jivesoftware/smackx/muc/packet/MUCUser;Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    .param p4, "x4"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->checkPresenceCode(Ljava/util/Set;ZLorg/jivesoftware/smackx/muc/packet/MUCUser;Lorg/jxmpp/jid/EntityFullJid;)V

    return-void
.end method

.method private changeAffiliationByAdmin(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V
    .locals 4
    .param p2, "affiliation"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Lorg/jivesoftware/smackx/muc/MUCAffiliation;",
            ")V"
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

    .line 1703
    .local p1, "jids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;-><init>()V

    .line 1704
    .local v0, "iq":Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 1705
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1706
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jxmpp/jid/Jid;

    .line 1708
    .local v2, "jid":Lorg/jxmpp/jid/Jid;
    new-instance v3, Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    invoke-direct {v3, p2, v2}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jxmpp/jid/Jid;)V

    .line 1709
    .local v3, "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V

    .line 1710
    .end local v2    # "jid":Lorg/jxmpp/jid/Jid;
    .end local v3    # "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    goto :goto_0

    .line 1712
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 1713
    return-void
.end method

.method private changeAffiliationByAdmin(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "affiliation"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1676
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muc/MUCAffiliation;Ljava/lang/String;)V

    .line 1677
    return-void
.end method

.method private changeAffiliationByAdmin(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muc/MUCAffiliation;Ljava/lang/String;)V
    .locals 3
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "affiliation"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1691
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;-><init>()V

    .line 1692
    .local v0, "iq":Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 1693
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1695
    new-instance v1, Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    invoke-direct {v1, p2, p1, p3}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 1696
    .local v1, "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V

    .line 1698
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 1699
    return-void
.end method

.method private changeRole(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCRole;)V
    .locals 4
    .param p2, "role"    # Lorg/jivesoftware/smackx/muc/MUCRole;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            ">;",
            "Lorg/jivesoftware/smackx/muc/MUCRole;",
            ")V"
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

    .line 1727
    .local p1, "nicknames":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/parts/Resourcepart;>;"
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;-><init>()V

    .line 1728
    .local v0, "iq":Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 1729
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1730
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jxmpp/jid/parts/Resourcepart;

    .line 1732
    .local v2, "nickname":Lorg/jxmpp/jid/parts/Resourcepart;
    new-instance v3, Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    invoke-direct {v3, p2, v2}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 1733
    .local v3, "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V

    .line 1734
    .end local v2    # "nickname":Lorg/jxmpp/jid/parts/Resourcepart;
    .end local v3    # "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    goto :goto_0

    .line 1736
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 1737
    return-void
.end method

.method private changeRole(Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smackx/muc/MUCRole;Ljava/lang/String;)V
    .locals 3
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .param p2, "role"    # Lorg/jivesoftware/smackx/muc/MUCRole;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1716
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;-><init>()V

    .line 1717
    .local v0, "iq":Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 1718
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1720
    new-instance v1, Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    invoke-direct {v1, p2, p1, p3}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/parts/Resourcepart;Ljava/lang/String;)V

    .line 1721
    .local v1, "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V

    .line 1723
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 1724
    return-void
.end method

.method private checkAffiliationModifications(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCAffiliation;ZLorg/jxmpp/jid/EntityFullJid;)V
    .locals 2
    .param p1, "oldAffiliation"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .param p2, "newAffiliation"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .param p3, "isUserModification"    # Z
    .param p4, "from"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 2363
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->owner:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->owner:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2364
    if-eqz p3, :cond_1

    .line 2365
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2366
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->ownershipRevoked()V

    .line 2367
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_0

    :cond_0
    goto/16 :goto_6

    .line 2370
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2371
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->ownershipRevoked(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2372
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_1

    :cond_2
    goto/16 :goto_6

    .line 2376
    :cond_3
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->admin:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->admin:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2377
    if-eqz p3, :cond_5

    .line 2378
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2379
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->adminRevoked()V

    .line 2380
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_2

    :cond_4
    goto :goto_6

    .line 2383
    :cond_5
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2384
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->adminRevoked(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2385
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_3

    :cond_6
    goto :goto_6

    .line 2389
    :cond_7
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->member:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->member:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2390
    if-eqz p3, :cond_9

    .line 2391
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2392
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->membershipRevoked()V

    .line 2393
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_4

    :cond_8
    goto :goto_6

    .line 2396
    :cond_9
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2397
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->membershipRevoked(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2398
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_5

    .line 2403
    :cond_a
    :goto_6
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->owner:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->owner:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2404
    if-eqz p3, :cond_c

    .line 2405
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2406
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->ownershipGranted()V

    .line 2407
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_7

    :cond_b
    goto/16 :goto_d

    .line 2410
    :cond_c
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2411
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->ownershipGranted(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2412
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_8

    :cond_d
    goto/16 :goto_d

    .line 2416
    :cond_e
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->admin:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->admin:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2417
    if-eqz p3, :cond_10

    .line 2418
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2419
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->adminGranted()V

    .line 2420
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_9

    :cond_f
    goto :goto_d

    .line 2423
    :cond_10
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2424
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->adminGranted(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2425
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_a

    :cond_11
    goto :goto_d

    .line 2429
    :cond_12
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->member:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->member:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2430
    if-eqz p3, :cond_14

    .line 2431
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2432
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->membershipGranted()V

    .line 2433
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_b

    :cond_13
    goto :goto_d

    .line 2436
    :cond_14
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2437
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->membershipGranted(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2438
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_c

    .line 2441
    :cond_15
    :goto_d
    return-void
.end method

.method private checkPresenceCode(Ljava/util/Set;ZLorg/jivesoftware/smackx/muc/packet/MUCUser;Lorg/jxmpp/jid/EntityFullJid;)V
    .locals 6
    .param p2, "isUserModification"    # Z
    .param p3, "mucUser"    # Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    .param p4, "from"    # Lorg/jxmpp/jid/EntityFullJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;",
            ">;Z",
            "Lorg/jivesoftware/smackx/muc/packet/MUCUser;",
            "Lorg/jxmpp/jid/EntityFullJid;",
            ")V"
        }
    .end annotation

    .line 2457
    .local p1, "statusCodes":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;->KICKED_307:Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2459
    if-eqz p2, :cond_1

    .line 2461
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    .line 2463
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2464
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getActor()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->kicked(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 2465
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 2468
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2469
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getActor()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p4, v2, v3}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->kicked(Lorg/jxmpp/jid/EntityFullJid;Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 2470
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_1

    .line 2474
    :cond_2
    :goto_2
    sget-object v0, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;->BANNED_301:Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2476
    if-eqz p2, :cond_4

    .line 2477
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 2478
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2479
    .local v3, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getActor()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->banned(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 2480
    .end local v3    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_3

    .line 2483
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2484
    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->myRoomJid:Lorg/jxmpp/jid/EntityFullJid;

    .line 2485
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    goto :goto_5

    .line 2488
    :cond_4
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2489
    .local v3, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getActor()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p4, v4, v5}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->banned(Lorg/jxmpp/jid/EntityFullJid;Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 2490
    .end local v3    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_4

    .line 2494
    :cond_5
    :goto_5
    sget-object v0, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;->REMOVED_AFFIL_CHANGE_321:Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2496
    if-eqz p2, :cond_7

    .line 2497
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 2498
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2499
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->membershipRevoked()V

    .line 2500
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_6

    .line 2503
    :cond_6
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2504
    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->myRoomJid:Lorg/jxmpp/jid/EntityFullJid;

    .line 2505
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    .line 2509
    :cond_7
    sget-object v0, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;->NEW_NICKNAME_303:Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2510
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2511
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getNick()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v3

    invoke-interface {v1, p4, v3}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->nicknameChanged(Lorg/jxmpp/jid/EntityFullJid;Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 2512
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_7

    .line 2515
    :cond_8
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getDestroy()Lorg/jivesoftware/smackx/muc/packet/Destroy;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2516
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->multiUserChatManager:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getDestroy()Lorg/jivesoftware/smackx/muc/packet/Destroy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/packet/Destroy;->getJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->getMultiUserChat(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    .line 2517
    .local v0, "alternateMUC":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2518
    .local v3, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getDestroy()Lorg/jivesoftware/smackx/muc/packet/Destroy;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/muc/packet/Destroy;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->roomDestroyed(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;)V

    .line 2519
    .end local v3    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_8

    .line 2522
    :cond_9
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2523
    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->myRoomJid:Lorg/jxmpp/jid/EntityFullJid;

    .line 2524
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    .line 2526
    .end local v0    # "alternateMUC":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :cond_a
    return-void
.end method

.method private checkRoleModifications(Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jivesoftware/smackx/muc/MUCRole;ZLorg/jxmpp/jid/EntityFullJid;)V
    .locals 2
    .param p1, "oldRole"    # Lorg/jivesoftware/smackx/muc/MUCRole;
    .param p2, "newRole"    # Lorg/jivesoftware/smackx/muc/MUCRole;
    .param p3, "isUserModification"    # Z
    .param p4, "from"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 2234
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->visitor:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->none:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->participant:Lorg/jivesoftware/smackx/muc/MUCRole;

    .line 2235
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2236
    if-eqz p3, :cond_2

    .line 2237
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2238
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->voiceGranted()V

    .line 2239
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_0

    :cond_1
    goto :goto_4

    .line 2242
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2243
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->voiceGranted(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2244
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_1

    :cond_3
    goto :goto_4

    .line 2248
    :cond_4
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->participant:Lorg/jivesoftware/smackx/muc/MUCRole;

    .line 2249
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->visitor:Lorg/jivesoftware/smackx/muc/MUCRole;

    .line 2250
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->none:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2251
    :cond_5
    if-eqz p3, :cond_7

    .line 2252
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2253
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->voiceRevoked()V

    .line 2254
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_2

    :cond_6
    goto :goto_4

    .line 2257
    :cond_7
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2258
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->voiceRevoked(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2259
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_3

    .line 2263
    :cond_8
    :goto_4
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->moderator:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->moderator:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2264
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->visitor:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->none:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2265
    :cond_9
    if-eqz p3, :cond_b

    .line 2266
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2267
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->voiceGranted()V

    .line 2268
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_5

    :cond_a
    goto :goto_7

    .line 2271
    :cond_b
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2272
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->voiceGranted(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2273
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_6

    .line 2276
    :cond_c
    :goto_7
    if-eqz p3, :cond_e

    .line 2277
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2278
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->moderatorGranted()V

    .line 2279
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_8

    :cond_d
    goto/16 :goto_f

    .line 2282
    :cond_e
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2283
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->moderatorGranted(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2284
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_9

    :cond_f
    goto/16 :goto_f

    .line 2288
    :cond_10
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->moderator:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->moderator:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2289
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->visitor:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->none:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MUCRole;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2290
    :cond_11
    if-eqz p3, :cond_13

    .line 2291
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2292
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->voiceRevoked()V

    .line 2293
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_a

    :cond_12
    goto :goto_c

    .line 2296
    :cond_13
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2297
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->voiceRevoked(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2298
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_b

    .line 2301
    :cond_14
    :goto_c
    if-eqz p3, :cond_16

    .line 2302
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2303
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/muc/UserStatusListener;->moderatorRevoked()V

    .line 2304
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/UserStatusListener;
    goto :goto_d

    :cond_15
    goto :goto_f

    .line 2307
    :cond_16
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2308
    .local v1, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {v1, p4}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->moderatorRevoked(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 2309
    .end local v1    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_e

    .line 2312
    :cond_17
    :goto_f
    return-void
.end method

.method private enter(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 14
    .param p1, "conf"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v0}, Lorg/jxmpp/jid/EntityBareJid;->asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    .line 330
    .local v0, "mucService":Lorg/jxmpp/jid/DomainBareJid;
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;->KNOWN_MUC_SERVICES:Lorg/jxmpp/util/cache/ExpirationCache;

    invoke-virtual {v1, v0}, Lorg/jxmpp/util/cache/ExpirationCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->multiUserChatManager:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->providesMucService(Lorg/jxmpp/jid/DomainBareJid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;->KNOWN_MUC_SERVICES:Lorg/jxmpp/util/cache/ExpirationCache;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/jxmpp/util/cache/ExpirationCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 334
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    throw v1

    .line 339
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->getJoinPresence(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v1

    .line 342
    .local v1, "joinPresence":Lorg/jivesoftware/smack/packet/Presence;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageListener:Lorg/jivesoftware/smack/StanzaListener;

    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fromRoomGroupchatFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {v2, v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 343
    new-instance v2, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fromRoomFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->PRESENCE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 345
    .local v2, "presenceFromRoomFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceListener:Lorg/jivesoftware/smack/StanzaListener;

    invoke-interface {v4, v5, v2}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 347
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectListener:Lorg/jivesoftware/smack/StanzaListener;

    new-instance v8, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    iget-object v10, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fromRoomFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v10, v9, v6

    sget-object v10, Lorg/jivesoftware/smack/filter/MessageWithSubjectFilter;->INSTANCE:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v10, v9, v7

    new-instance v10, Lorg/jivesoftware/smack/filter/NotFilter;

    sget-object v11, Lorg/jivesoftware/smack/filter/MessageTypeFilter;->ERROR:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-direct {v10, v11}, Lorg/jivesoftware/smack/filter/NotFilter;-><init>(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v10, v9, v3

    new-instance v10, Lorg/jivesoftware/smack/filter/NotFilter;

    sget-object v11, Lorg/jivesoftware/smack/filter/MessageWithBodiesFilter;->INSTANCE:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-direct {v10, v11}, Lorg/jivesoftware/smack/filter/NotFilter;-><init>(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const/4 v10, 0x4

    new-instance v12, Lorg/jivesoftware/smack/filter/NotFilter;

    sget-object v13, Lorg/jivesoftware/smack/filter/MessageWithThreadFilter;->INSTANCE:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-direct {v12, v13}, Lorg/jivesoftware/smack/filter/NotFilter;-><init>(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v12, v9, v10

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    invoke-interface {v4, v5, v8}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 357
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->declinesListener:Lorg/jivesoftware/smack/StanzaListener;

    new-instance v8, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v9, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    iget-object v10, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fromRoomFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v10, v9, v6

    sget-object v10, Lorg/jivesoftware/smackx/muc/MultiUserChat;->DECLINE_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v10, v9, v7

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    invoke-interface {v4, v5, v8}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 358
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptor:Lorg/jivesoftware/smack/StanzaListener;

    new-instance v8, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v9, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    iget-object v10, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-static {v10}, Lorg/jivesoftware/smack/filter/ToMatchesFilter;->create(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/ToMatchesFilter;

    move-result-object v10

    aput-object v10, v9, v6

    sget-object v10, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->PRESENCE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    aput-object v10, v9, v7

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    invoke-interface {v4, v5, v8}, Lorg/jivesoftware/smack/XMPPConnection;->addStanzaInterceptor(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 360
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fromRoomGroupchatFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    .line 364
    new-instance v4, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v5, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v8, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->PRESENCE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    aput-object v8, v5, v6

    new-instance v8, Lorg/jivesoftware/smack/filter/OrFilter;

    new-array v9, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    new-instance v10, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v12, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 367
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getRoom()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v13

    invoke-static {v13}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->createBare(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v13

    aput-object v13, v12, v6

    sget-object v13, Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;->STATUS_110_PRESENCE_TO_SELF:Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;

    aput-object v13, v12, v7

    invoke-direct {v10, v12}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v10, v9, v6

    new-instance v10, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v11, v11, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 370
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v12

    invoke-static {v12}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->createFull(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v12

    aput-object v12, v11, v6

    new-instance v6, Lorg/jivesoftware/smack/filter/StanzaIdFilter;

    invoke-direct {v6, v1}, Lorg/jivesoftware/smack/filter/StanzaIdFilter;-><init>(Lorg/jivesoftware/smack/packet/Stanza;)V

    aput-object v6, v11, v7

    sget-object v6, Lorg/jivesoftware/smack/filter/PresenceTypeFilter;->ERROR:Lorg/jivesoftware/smack/filter/PresenceTypeFilter;

    aput-object v6, v11, v3

    invoke-direct {v10, v11}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v10, v9, v7

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v8, v5, v7

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    move-object v3, v4

    .line 374
    .local v3, "responseFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    const/4 v4, 0x0

    .line 378
    .local v4, "presenceStanzaCollector":Lorg/jivesoftware/smack/StanzaCollector;
    :try_start_0
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v5, v3, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v5

    .line 379
    .local v5, "selfPresenceCollector":Lorg/jivesoftware/smack/StanzaCollector;
    invoke-static {}, Lorg/jivesoftware/smack/StanzaCollector;->newConfiguration()Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setCollectorToReset(Lorg/jivesoftware/smack/StanzaCollector;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v6

    .line 380
    invoke-virtual {v6, v2}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setStanzaFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v6

    .line 382
    .local v6, "presenceStanzaCollectorConfguration":Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    iget-object v8, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v8, v6}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v8

    move-object v4, v8

    .line 383
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->getTimeout()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow(J)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v8

    check-cast v8, Lorg/jivesoftware/smack/packet/Presence;
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v8

    .line 391
    .end local v6    # "presenceStanzaCollectorConfguration":Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    .local v5, "presence":Lorg/jivesoftware/smack/packet/Presence;
    if-eqz v4, :cond_2

    .line 392
    invoke-virtual {v4}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 398
    :cond_2
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v6

    invoke-interface {v6}, Lorg/jxmpp/jid/Jid;->getResourceOrThrow()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v6

    .line 399
    .local v6, "receivedNickname":Lorg/jxmpp/jid/parts/Resourcepart;
    invoke-direct {p0, v6}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->setNickname(Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 401
    iput-boolean v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 404
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->multiUserChatManager:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    iget-object v8, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->addJoinedRoom(Lorg/jxmpp/jid/EntityBareJid;)V

    .line 405
    return-object v5

    .line 391
    .end local v5    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    .end local v6    # "receivedNickname":Lorg/jxmpp/jid/parts/Resourcepart;
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 385
    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v5

    .line 387
    .local v5, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->removeConnectionCallbacks()V

    .line 388
    nop

    .end local v0    # "mucService":Lorg/jxmpp/jid/DomainBareJid;
    .end local v1    # "joinPresence":Lorg/jivesoftware/smack/packet/Presence;
    .end local v2    # "presenceFromRoomFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    .end local v3    # "responseFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    .end local v4    # "presenceStanzaCollector":Lorg/jivesoftware/smack/StanzaCollector;
    .end local p1    # "conf":Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "mucService":Lorg/jxmpp/jid/DomainBareJid;
    .restart local v1    # "joinPresence":Lorg/jivesoftware/smack/packet/Presence;
    .restart local v2    # "presenceFromRoomFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    .restart local v3    # "responseFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    .restart local v4    # "presenceStanzaCollector":Lorg/jivesoftware/smack/StanzaCollector;
    .restart local p1    # "conf":Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
    :goto_2
    if-eqz v4, :cond_3

    .line 392
    invoke-virtual {v4}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    :cond_3
    throw v5
.end method

.method private fireInvitationRejectionListeners(Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;)V
    .locals 6
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .param p2, "rejection"    # Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;

    .line 1065
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->getFrom()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    .line 1066
    .local v0, "invitee":Lorg/jxmpp/jid/EntityBareJid;
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/Set;

    monitor-enter v2

    .line 1069
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;

    .line 1070
    .local v3, "listeners":[Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1071
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    array-length v2, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v3, v4

    .line 1073
    .local v5, "listener":Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;
    invoke-interface {v5, v0, v1, p1, p2}, Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;->invitationDeclined(Lorg/jxmpp/jid/EntityBareJid;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;)V

    .line 1072
    .end local v5    # "listener":Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1075
    :cond_0
    return-void

    .line 1071
    .end local v3    # "listeners":[Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getAffiliatesByAdmin(Lorg/jivesoftware/smackx/muc/MUCAffiliation;)Ljava/util/List;
    .locals 7
    .param p1, "affiliation"    # Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/muc/MUCAffiliation;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/muc/Affiliate;",
            ">;"
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

    .line 1887
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;-><init>()V

    .line 1888
    .local v0, "iq":Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 1889
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1891
    new-instance v1, Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V

    .line 1892
    .local v1, "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V

    .line 1894
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;

    .line 1897
    .local v2, "answer":Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1898
    .local v3, "affiliates":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/muc/Affiliate;>;"
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    .line 1899
    .local v5, "mucadminItem":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    new-instance v6, Lorg/jivesoftware/smackx/muc/Affiliate;

    invoke-direct {v6, v5}, Lorg/jivesoftware/smackx/muc/Affiliate;-><init>(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1900
    .end local v5    # "mucadminItem":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    goto :goto_0

    .line 1901
    :cond_0
    return-object v3
.end method

.method private getOccupants(Lorg/jivesoftware/smackx/muc/MUCRole;)Ljava/util/List;
    .locals 7
    .param p1, "role"    # Lorg/jivesoftware/smackx/muc/MUCRole;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/muc/MUCRole;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/muc/Occupant;",
            ">;"
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

    .line 1942
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;-><init>()V

    .line 1943
    .local v0, "iq":Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 1944
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1946
    new-instance v1, Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCRole;)V

    .line 1947
    .local v1, "item":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V

    .line 1949
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;

    .line 1951
    .local v2, "answer":Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1952
    .local v3, "participants":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/muc/Occupant;>;"
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muc/packet/MUCAdmin;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    .line 1953
    .local v5, "mucadminItem":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    new-instance v6, Lorg/jivesoftware/smackx/muc/Occupant;

    invoke-direct {v6, v5}, Lorg/jivesoftware/smackx/muc/Occupant;-><init>(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1954
    .end local v5    # "mucadminItem":Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    goto :goto_0

    .line 1955
    :cond_0
    return-object v3
.end method

.method private removeConnectionCallbacks()V
    .locals 2

    .line 2123
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageListener:Lorg/jivesoftware/smack/StanzaListener;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removeSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    .line 2124
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceListener:Lorg/jivesoftware/smack/StanzaListener;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removeSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    .line 2125
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectListener:Lorg/jivesoftware/smack/StanzaListener;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removeSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    .line 2126
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->declinesListener:Lorg/jivesoftware/smack/StanzaListener;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removeSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    .line 2127
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptor:Lorg/jivesoftware/smack/StanzaListener;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removeStanzaInterceptor(Lorg/jivesoftware/smack/StanzaListener;)V

    .line 2128
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    if-eqz v0, :cond_0

    .line 2129
    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 2130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    .line 2132
    :cond_0
    return-void
.end method

.method private setNickname(Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 1
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 409
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-static {v0, p1}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFrom(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->myRoomJid:Lorg/jxmpp/jid/EntityFullJid;

    .line 410
    return-void
.end method

.method private declared-synchronized userHasLeft()V
    .locals 2

    monitor-enter p0

    .line 2141
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 2144
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->multiUserChatManager:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->removeJoinedRoom(Lorg/jxmpp/jid/EntityBareJid;)V

    .line 2145
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->removeConnectionCallbacks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2146
    monitor-exit p0

    return-void

    .line 2140
    .end local p0    # "this":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addInvitationRejectionListener(Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;

    .line 1044
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addMessageListener(Lorg/jivesoftware/smack/MessageListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/MessageListener;

    .line 2075
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addParticipantListener(Lorg/jivesoftware/smack/PresenceListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/PresenceListener;

    .line 1808
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addParticipantStatusListener(Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2178
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addPresenceInterceptor(Lorg/jivesoftware/smack/PresenceListener;)V
    .locals 1
    .param p1, "presenceInterceptor"    # Lorg/jivesoftware/smack/PresenceListener;

    .line 1107
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1108
    return-void
.end method

.method public addSubjectUpdatedListener(Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;

    .line 1085
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addUserStatusListener(Lorg/jivesoftware/smackx/muc/UserStatusListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2156
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public banUser(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1412
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->outcast:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muc/MUCAffiliation;Ljava/lang/String;)V

    .line 1413
    return-void
.end method

.method public banUsers(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1392
    .local p1, "jids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->outcast:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V

    .line 1393
    return-void
.end method

.method public changeAvailabilityStatus(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence$Mode;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "mode"    # Lorg/jivesoftware/smack/packet/Presence$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;
        }
    .end annotation

    .line 1234
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->myRoomJid:Lorg/jxmpp/jid/EntityFullJid;

    .line 1235
    .local v0, "myRoomJid":Lorg/jxmpp/jid/EntityFullJid;
    if-eqz v0, :cond_1

    .line 1241
    iget-boolean v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    if-eqz v1, :cond_0

    .line 1246
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1247
    .local v1, "joinPresence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 1249
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 1252
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1253
    return-void

    .line 1242
    .end local v1    # "joinPresence":Lorg/jivesoftware/smack/packet/Presence;
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    throw v1

    .line 1236
    :cond_1
    new-instance v1, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    throw v1
.end method

.method public declared-synchronized changeNickname(Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 7
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;
        }
    .end annotation

    monitor-enter p0

    .line 1195
    :try_start_0
    const-string v0, "Nickname must not be null or blank."

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1198
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-static {v0, p1}, Lorg/jxmpp/jid/impl/JidCreate;->fullFrom(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    .line 1205
    .local v0, "jid":Lorg/jxmpp/jid/EntityFullJid;
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1206
    .local v1, "joinPresence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 1209
    new-instance v2, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v4, 0x0

    .line 1211
    invoke-static {v0}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->createFull(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    const-class v6, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 1213
    .local v2, "responseFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v3, v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v3

    .line 1216
    .local v3, "response":Lorg/jivesoftware/smack/StanzaCollector;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 1219
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->setNickname(Lorg/jxmpp/jid/parts/Resourcepart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    monitor-exit p0

    return-void

    .line 1199
    .end local v0    # "jid":Lorg/jxmpp/jid/EntityFullJid;
    .end local v1    # "joinPresence":Lorg/jivesoftware/smack/packet/Presence;
    .end local v2    # "responseFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    .end local v3    # "response":Lorg/jivesoftware/smack/StanzaCollector;
    .end local p0    # "this":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :cond_0
    :try_start_1
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1194
    .end local p1    # "nickname":Lorg/jxmpp/jid/parts/Resourcepart;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public changeSubject(Ljava/lang/String;)V
    .locals 5
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2103
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->createMessage()Lorg/jivesoftware/smack/packet/Message;

    move-result-object v0

    .line 2104
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Message;->setSubject(Ljava/lang/String;)V

    .line 2106
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fromRoomGroupchatFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/jivesoftware/smackx/muc/MultiUserChat$6;

    invoke-direct {v3, p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat$6;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 2113
    .local v1, "responseFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2, v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    .line 2115
    .local v2, "response":Lorg/jivesoftware/smack/StanzaCollector;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 2116
    return-void
.end method

.method public declared-synchronized create(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;
    .locals 2
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucAlreadyJoinedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MissingMucCreationAcknowledgeException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    monitor-enter p0

    .line 454
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    if-nez v0, :cond_1

    .line 458
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->createOrJoin(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    .local v0, "mucCreateConfigFormHandle":Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;
    if-eqz v0, :cond_0

    .line 461
    monitor-exit p0

    return-object v0

    .line 464
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->leave()V

    .line 465
    new-instance v1, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MissingMucCreationAcknowledgeException;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MissingMucCreationAcknowledgeException;-><init>()V

    throw v1

    .line 455
    .end local v0    # "mucCreateConfigFormHandle":Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;
    .end local p0    # "this":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :cond_1
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucAlreadyJoinedException;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucAlreadyJoinedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    .end local p1    # "nickname":Lorg/jxmpp/jid/parts/Resourcepart;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createMessage()Lorg/jivesoftware/smack/packet/Message;
    .locals 3

    .line 1995
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Message$Type;)V

    return-object v0
.end method

.method public declared-synchronized createOrJoin(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;)Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;
    .locals 4
    .param p1, "mucEnterConfiguration"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucAlreadyJoinedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    monitor-enter p0

    .line 534
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    if-nez v0, :cond_1

    .line 538
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->enter(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v0

    .line 541
    .local v0, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    move-result-object v1

    .line 542
    .local v1, "mucUser":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getStatus()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;->ROOM_CREATED_201:Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    new-instance v2, Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 546
    .end local p0    # "this":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :cond_0
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 535
    .end local v0    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    .end local v1    # "mucUser":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    :cond_1
    :try_start_1
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucAlreadyJoinedException;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucAlreadyJoinedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    .end local p1    # "mucEnterConfiguration":Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createOrJoin(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;
    .locals 2
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucAlreadyJoinedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    monitor-enter p0

    .line 482
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getEnterConfigurationBuilder(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->build()Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;

    move-result-object v0

    .line 483
    .local v0, "mucEnterConfiguration":Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->createOrJoin(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;)Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 481
    .end local v0    # "mucEnterConfiguration":Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
    .end local p0    # "this":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .end local p1    # "nickname":Lorg/jxmpp/jid/parts/Resourcepart;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createOrJoin(Lorg/jxmpp/jid/parts/Resourcepart;Ljava/lang/String;Lorg/jivesoftware/smackx/muc/DiscussionHistory;J)Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;
    .locals 2
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "history"    # Lorg/jivesoftware/smackx/muc/DiscussionHistory;
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucAlreadyJoinedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 510
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getEnterConfigurationBuilder(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->withPassword(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    .line 511
    invoke-virtual {v0, p4, p5}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->timeoutAfter(J)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    .line 513
    .local v0, "builder":Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->build()Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->createOrJoin(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;)Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;

    move-result-object v1

    return-object v1
.end method

.method public createOrJoinIfNecessary(Lorg/jxmpp/jid/parts/Resourcepart;Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;
    .locals 3
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    .line 607
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->isJoined()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 608
    return-object v1

    .line 610
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getEnterConfigurationBuilder(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->withPassword(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->build()Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;

    move-result-object v0

    .line 613
    .local v0, "mucEnterConfiguration":Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->createOrJoin(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;)Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;

    move-result-object v1
    :try_end_0
    .catch Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucAlreadyJoinedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 615
    :catch_0
    move-exception v2

    .line 616
    .local v2, "e":Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucAlreadyJoinedException;
    return-object v1
.end method

.method public createPrivateChat(Lorg/jxmpp/jid/EntityFullJid;Lorg/jivesoftware/smack/chat/ChatMessageListener;)Lorg/jivesoftware/smack/chat/Chat;
    .locals 1
    .param p1, "occupant"    # Lorg/jxmpp/jid/EntityFullJid;
    .param p2, "listener"    # Lorg/jivesoftware/smack/chat/ChatMessageListener;

    .line 1986
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/chat/ChatManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/chat/ChatManager;->createChat(Lorg/jxmpp/jid/EntityJid;Lorg/jivesoftware/smack/chat/ChatMessageListener;)Lorg/jivesoftware/smack/chat/Chat;

    move-result-object v0

    return-object v0
.end method

.method public destroy(Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "alternateJID"    # Lorg/jxmpp/jid/EntityBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 967
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;-><init>()V

    .line 968
    .local v0, "iq":Lorg/jivesoftware/smackx/muc/packet/MUCOwner;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 969
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 972
    new-instance v1, Lorg/jivesoftware/smackx/muc/packet/Destroy;

    invoke-direct {v1, p2, p1}, Lorg/jivesoftware/smackx/muc/packet/Destroy;-><init>(Lorg/jxmpp/jid/EntityBareJid;Ljava/lang/String;)V

    .line 973
    .local v1, "destroy":Lorg/jivesoftware/smackx/muc/packet/Destroy;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->setDestroy(Lorg/jivesoftware/smackx/muc/packet/Destroy;)V

    .line 976
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    nop

    .line 990
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    .line 991
    return-void

    .line 983
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 985
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    .line 986
    throw v2

    .line 978
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 981
    .local v2, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    throw v2
.end method

.method public getAdmins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/muc/Affiliate;",
            ">;"
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

    .line 1846
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->admin:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getAffiliatesByAdmin(Lorg/jivesoftware/smackx/muc/MUCAffiliation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfigFormManager()Lorg/jivesoftware/smackx/muc/MucConfigFormManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 856
    new-instance v0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    return-object v0
.end method

.method public getConfigurationForm()Lorg/jivesoftware/smackx/xdata/Form;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 872
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;-><init>()V

    .line 873
    .local v0, "iq":Lorg/jivesoftware/smackx/muc/packet/MUCOwner;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 874
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 876
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 877
    .local v1, "answer":Lorg/jivesoftware/smack/packet/IQ;
    invoke-static {v1}, Lorg/jivesoftware/smackx/xdata/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v2

    return-object v2
.end method

.method public getEnterConfigurationBuilder(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    .locals 3
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 420
    new-instance v0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getReplyTimeout()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;-><init>(Lorg/jxmpp/jid/parts/Resourcepart;J)V

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/muc/Affiliate;",
            ">;"
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

    .line 1859
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->member:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getAffiliatesByAdmin(Lorg/jivesoftware/smackx/muc/MUCAffiliation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModerators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/muc/Occupant;",
            ">;"
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

    .line 1914
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->moderator:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getOccupants(Lorg/jivesoftware/smackx/muc/MUCRole;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNickname()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 2

    .line 1173
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->myRoomJid:Lorg/jxmpp/jid/EntityFullJid;

    .line 1174
    .local v0, "myRoomJid":Lorg/jxmpp/jid/EntityFullJid;
    if-nez v0, :cond_0

    .line 1175
    const/4 v1, 0x0

    return-object v1

    .line 1177
    :cond_0
    invoke-interface {v0}, Lorg/jxmpp/jid/EntityFullJid;->getResourcepart()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v1

    return-object v1
.end method

.method public getOccupant(Lorg/jxmpp/jid/EntityFullJid;)Lorg/jivesoftware/smackx/muc/Occupant;
    .locals 2
    .param p1, "user"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 1791
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getOccupantPresence(Lorg/jxmpp/jid/EntityFullJid;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v0

    .line 1792
    .local v0, "presence":Lorg/jivesoftware/smack/packet/Presence;
    if-eqz v0, :cond_0

    .line 1793
    new-instance v1, Lorg/jivesoftware/smackx/muc/Occupant;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/muc/Occupant;-><init>(Lorg/jivesoftware/smack/packet/Presence;)V

    return-object v1

    .line 1795
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOccupantPresence(Lorg/jxmpp/jid/EntityFullJid;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 1
    .param p1, "user"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 1778
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    return-object v0
.end method

.method public getOccupants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/EntityFullJid;",
            ">;"
        }
    .end annotation

    .line 1765
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getOccupantsCount()I
    .locals 1

    .line 1750
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOutcasts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/muc/Affiliate;",
            ">;"
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

    .line 1872
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->outcast:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getAffiliatesByAdmin(Lorg/jivesoftware/smackx/muc/MUCAffiliation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOwners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/muc/Affiliate;",
            ">;"
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

    .line 1833
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->owner:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getAffiliatesByAdmin(Lorg/jivesoftware/smackx/muc/MUCAffiliation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/muc/Occupant;",
            ">;"
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

    .line 1927
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->participant:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getOccupants(Lorg/jivesoftware/smackx/muc/MUCRole;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationForm()Lorg/jivesoftware/smackx/xdata/Form;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 917
    new-instance v0, Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;-><init>()V

    .line 918
    .local v0, "reg":Lorg/jivesoftware/smackx/iqregister/packet/Registration;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 919
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 921
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 922
    .local v1, "result":Lorg/jivesoftware/smack/packet/IQ;
    invoke-static {v1}, Lorg/jivesoftware/smackx/xdata/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v2

    return-object v2
.end method

.method public getReservedNickname()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1150
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 1151
    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    const-string v2, "x-roomuser-item"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    .line 1155
    .local v0, "result":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getIdentities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 1156
    .local v1, "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1161
    .end local v0    # "result":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .end local v1    # "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    :cond_0
    goto :goto_0

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Lorg/jivesoftware/smack/XMPPException;
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Error retrieving room nickname"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1163
    .end local v0    # "e":Lorg/jivesoftware/smack/XMPPException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoom()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1135
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getXmppConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .line 2535
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method public grantAdmin(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1613
    .local p1, "jids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->admin:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V

    .line 1614
    return-void
.end method

.method public grantAdmin(Lorg/jxmpp/jid/Jid;)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1629
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->admin:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V

    .line 1630
    return-void
.end method

.method public grantMembership(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1427
    .local p1, "jids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->member:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V

    .line 1428
    return-void
.end method

.method public grantMembership(Lorg/jxmpp/jid/Jid;)V
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1442
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->member:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muc/MUCAffiliation;Ljava/lang/String;)V

    .line 1443
    return-void
.end method

.method public grantModerator(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1489
    .local p1, "nicknames":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/parts/Resourcepart;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->moderator:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCRole;)V

    .line 1490
    return-void
.end method

.method public grantModerator(Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 2
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1504
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->moderator:Lorg/jivesoftware/smackx/muc/MUCRole;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smackx/muc/MUCRole;Ljava/lang/String;)V

    .line 1505
    return-void
.end method

.method public grantOwnership(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1552
    .local p1, "jids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->owner:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V

    .line 1553
    return-void
.end method

.method public grantOwnership(Lorg/jxmpp/jid/Jid;)V
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1568
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->owner:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muc/MUCAffiliation;Ljava/lang/String;)V

    .line 1569
    return-void
.end method

.method public grantVoice(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1319
    .local p1, "nicknames":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/parts/Resourcepart;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->participant:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCRole;)V

    .line 1320
    return-void
.end method

.method public grantVoice(Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 2
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1337
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->participant:Lorg/jivesoftware/smackx/muc/MUCRole;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smackx/muc/MUCRole;Ljava/lang/String;)V

    .line 1338
    return-void
.end method

.method public invite(Lorg/jivesoftware/smack/packet/Message;Lorg/jxmpp/jid/EntityBareJid;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .param p2, "user"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 1027
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;-><init>()V

    .line 1028
    .local v0, "mucUser":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    new-instance v1, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;

    invoke-direct {v1, p3, p2}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;-><init>(Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;)V

    .line 1029
    .local v1, "invite":Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->setInvite(Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;)V

    .line 1031
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 1033
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1034
    return-void
.end method

.method public invite(Lorg/jxmpp/jid/EntityBareJid;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1006
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invite(Lorg/jivesoftware/smack/packet/Message;Lorg/jxmpp/jid/EntityBareJid;Ljava/lang/String;)V

    .line 1007
    return-void
.end method

.method public isJoined()Z
    .locals 1

    .line 767
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    return v0
.end method

.method public declared-synchronized join(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;)V
    .locals 4
    .param p1, "mucEnterConfiguration"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    monitor-enter p0

    .line 749
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 751
    :try_start_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->leaveSync()Lorg/jivesoftware/smack/packet/Presence;
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    goto :goto_1

    .line 753
    .end local p0    # "this":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not leave MUC prior joining, assuming we are not joined"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->enter(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;)Lorg/jivesoftware/smack/packet/Presence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 758
    monitor-exit p0

    return-void

    .line 748
    .end local p1    # "mucEnterConfiguration":Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public join(Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 2
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    .line 642
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getEnterConfigurationBuilder(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    .line 643
    .local v0, "builder":Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->build()Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;)V

    .line 644
    return-void
.end method

.method public join(Lorg/jxmpp/jid/parts/Resourcepart;Ljava/lang/String;)V
    .locals 2
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    .line 670
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getEnterConfigurationBuilder(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->withPassword(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    .line 672
    .local v0, "builder":Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->build()Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;)V

    .line 673
    return-void
.end method

.method public join(Lorg/jxmpp/jid/parts/Resourcepart;Ljava/lang/String;Lorg/jivesoftware/smackx/muc/DiscussionHistory;J)V
    .locals 2
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "history"    # Lorg/jivesoftware/smackx/muc/DiscussionHistory;
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 713
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getEnterConfigurationBuilder(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->withPassword(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    .line 714
    invoke-virtual {v0, p4, p5}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->timeoutAfter(J)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    move-result-object v0

    .line 716
    .local v0, "builder":Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->build()Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;)V

    .line 717
    return-void
.end method

.method public kickParticipant(Lorg/jxmpp/jid/parts/Resourcepart;Ljava/lang/String;)V
    .locals 1
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1277
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->none:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-direct {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smackx/muc/MUCRole;Ljava/lang/String;)V

    .line 1278
    return-void
.end method

.method public declared-synchronized leave()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 782
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    .line 784
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->myRoomJid:Lorg/jxmpp/jid/EntityFullJid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    .local v0, "myRoomJid":Lorg/jxmpp/jid/EntityFullJid;
    if-nez v0, :cond_0

    .line 786
    monitor-exit p0

    return-void

    .line 791
    :cond_0
    :try_start_1
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 792
    .local v1, "leavePresence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 793
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    monitor-exit p0

    return-void

    .line 781
    .end local v0    # "myRoomJid":Lorg/jxmpp/jid/EntityFullJid;
    .end local v1    # "leavePresence":Lorg/jivesoftware/smack/packet/Presence;
    .end local p0    # "this":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized leaveSync()Lorg/jivesoftware/smack/packet/Presence;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;
        }
    .end annotation

    monitor-enter p0

    .line 814
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    .line 816
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->myRoomJid:Lorg/jxmpp/jid/EntityFullJid;

    .line 817
    .local v0, "myRoomJid":Lorg/jxmpp/jid/EntityFullJid;
    if-eqz v0, :cond_0

    .line 823
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 824
    .local v1, "leavePresence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 826
    new-instance v2, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v3, 0x3

    new-array v4, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v5, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->PRESENCE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lorg/jivesoftware/smack/filter/StanzaIdFilter;

    invoke-direct {v5, v1}, Lorg/jivesoftware/smack/filter/StanzaIdFilter;-><init>(Lorg/jivesoftware/smack/packet/Stanza;)V

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Lorg/jivesoftware/smack/filter/OrFilter;

    const/4 v8, 0x2

    new-array v9, v8, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    new-instance v10, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v3, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 830
    invoke-static {v0}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->createFull(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v11

    aput-object v11, v3, v6

    sget-object v11, Lorg/jivesoftware/smack/filter/PresenceTypeFilter;->UNAVAILABLE:Lorg/jivesoftware/smack/filter/PresenceTypeFilter;

    aput-object v11, v3, v7

    sget-object v11, Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;->STATUS_110_PRESENCE_TO_SELF:Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;

    aput-object v11, v3, v8

    invoke-direct {v10, v3}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v10, v9, v6

    new-instance v3, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v10, v8, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    iget-object v11, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fromRoomFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v11, v10, v6

    sget-object v6, Lorg/jivesoftware/smack/filter/PresenceTypeFilter;->ERROR:Lorg/jivesoftware/smack/filter/PresenceTypeFilter;

    aput-object v6, v10, v7

    invoke-direct {v3, v10}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v3, v9, v7

    invoke-direct {v5, v9}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v5, v4, v8

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 835
    .local v2, "reflectedLeavePresenceFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v3, v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Presence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    .local v3, "reflectedLeavePresence":Lorg/jivesoftware/smack/packet/Presence;
    monitor-exit p0

    return-object v3

    .line 818
    .end local v1    # "leavePresence":Lorg/jivesoftware/smack/packet/Presence;
    .end local v2    # "reflectedLeavePresenceFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    .end local v3    # "reflectedLeavePresence":Lorg/jivesoftware/smack/packet/Presence;
    .end local p0    # "this":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :cond_0
    :try_start_1
    new-instance v1, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 813
    .end local v0    # "myRoomJid":Lorg/jxmpp/jid/EntityFullJid;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public nextMessage()Lorg/jivesoftware/smack/packet/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2039
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    if-eqz v0, :cond_0

    .line 2042
    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResult()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    return-object v0

    .line 2040
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    throw v0
.end method

.method public nextMessage(J)Lorg/jivesoftware/smack/packet/Message;
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2057
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    if-eqz v0, :cond_0

    .line 2060
    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    return-object v0

    .line 2058
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    throw v0
.end method

.method public pollMessage()Lorg/jivesoftware/smack/packet/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;
        }
    .end annotation

    .line 2024
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    if-eqz v0, :cond_0

    .line 2027
    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->pollResult()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    return-object v0

    .line 2025
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    throw v0
.end method

.method public removeInvitationRejectionListener(Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;

    .line 1055
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeMessageListener(Lorg/jivesoftware/smack/MessageListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/MessageListener;

    .line 2087
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeParticipantListener(Lorg/jivesoftware/smack/PresenceListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/PresenceListener;

    .line 1820
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeParticipantStatusListener(Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 2189
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removePresenceInterceptor(Lorg/jivesoftware/smack/PresenceListener;)V
    .locals 1
    .param p1, "presenceInterceptor"    # Lorg/jivesoftware/smack/PresenceListener;

    .line 1118
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1119
    return-void
.end method

.method public removeSubjectUpdatedListener(Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;

    .line 1096
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeUserStatusListener(Lorg/jivesoftware/smackx/muc/UserStatusListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 2167
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestVoice()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1290
    new-instance v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    sget-object v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->submit:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V

    .line 1291
    .local v0, "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    new-instance v1, Lorg/jivesoftware/smackx/xdata/FormField;

    const-string v2, "FORM_TYPE"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 1292
    .local v1, "formTypeField":Lorg/jivesoftware/smackx/xdata/FormField;
    const-string v2, "http://jabber.org/protocol/muc#request"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 1293
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 1294
    new-instance v2, Lorg/jivesoftware/smackx/xdata/FormField;

    const-string v3, "muc#role"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v2, "requestVoiceField":Lorg/jivesoftware/smackx/xdata/FormField;
    sget-object v3, Lorg/jivesoftware/smackx/xdata/FormField$Type;->text_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/xdata/FormField;->setType(Lorg/jivesoftware/smackx/xdata/FormField$Type;)V

    .line 1296
    const-string v3, "Requested role"

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/xdata/FormField;->setLabel(Ljava/lang/String;)V

    .line 1297
    const-string v3, "participant"

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 1298
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 1299
    new-instance v3, Lorg/jivesoftware/smack/packet/Message;

    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/packet/Message;-><init>(Lorg/jxmpp/jid/Jid;)V

    .line 1300
    .local v3, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 1301
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v4, v3}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1302
    return-void
.end method

.method public revokeAdmin(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1644
    .local p1, "jids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->admin:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V

    .line 1645
    return-void
.end method

.method public revokeAdmin(Lorg/jxmpp/jid/EntityJid;)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/EntityJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1660
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->member:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V

    .line 1661
    return-void
.end method

.method public revokeMembership(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1458
    .local p1, "jids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->none:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V

    .line 1459
    return-void
.end method

.method public revokeMembership(Lorg/jxmpp/jid/Jid;)V
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1474
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->none:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muc/MUCAffiliation;Ljava/lang/String;)V

    .line 1475
    return-void
.end method

.method public revokeModerator(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1520
    .local p1, "nicknames":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/parts/Resourcepart;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->participant:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCRole;)V

    .line 1521
    return-void
.end method

.method public revokeModerator(Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 2
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1536
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->participant:Lorg/jivesoftware/smackx/muc/MUCRole;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smackx/muc/MUCRole;Ljava/lang/String;)V

    .line 1537
    return-void
.end method

.method public revokeOwnership(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1583
    .local p1, "jids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->admin:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCAffiliation;)V

    .line 1584
    return-void
.end method

.method public revokeOwnership(Lorg/jxmpp/jid/Jid;)V
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1598
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->admin:Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muc/MUCAffiliation;Ljava/lang/String;)V

    .line 1599
    return-void
.end method

.method public revokeVoice(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1355
    .local p1, "nicknames":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/parts/Resourcepart;>;"
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->visitor:Lorg/jivesoftware/smackx/muc/MUCRole;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/util/Collection;Lorg/jivesoftware/smackx/muc/MUCRole;)V

    .line 1356
    return-void
.end method

.method public revokeVoice(Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 2
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1373
    sget-object v0, Lorg/jivesoftware/smackx/muc/MUCRole;->visitor:Lorg/jivesoftware/smackx/muc/MUCRole;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smackx/muc/MUCRole;Ljava/lang/String;)V

    .line 1374
    return-void
.end method

.method public sendConfigurationForm(Lorg/jivesoftware/smackx/xdata/Form;)V
    .locals 2
    .param p1, "form"    # Lorg/jivesoftware/smackx/xdata/Form;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 891
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;-><init>()V

    .line 892
    .local v0, "iq":Lorg/jivesoftware/smackx/muc/packet/MUCOwner;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 893
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 894
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCOwner;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 896
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 897
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1966
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->createMessage()Lorg/jivesoftware/smack/packet/Message;

    move-result-object v0

    .line 1967
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 1968
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1969
    return-void
.end method

.method public sendMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2006
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 2007
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 2008
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 2009
    return-void
.end method

.method public sendRegistrationForm(Lorg/jivesoftware/smackx/xdata/Form;)V
    .locals 2
    .param p1, "form"    # Lorg/jivesoftware/smackx/xdata/Form;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 943
    new-instance v0, Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;-><init>()V

    .line 944
    .local v0, "reg":Lorg/jivesoftware/smackx/iqregister/packet/Registration;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 945
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 946
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 948
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 949
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MUC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
