.class public final Lorg/jivesoftware/smack/StanzaCollector$Configuration;
.super Ljava/lang/Object;
.source "StanzaCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/StanzaCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field private collectorToReset:Lorg/jivesoftware/smack/StanzaCollector;

.field private packetFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private request:Lorg/jivesoftware/smack/packet/Stanza;

.field private size:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getStanzaCollectorSize()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->size:I

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/StanzaCollector$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smack/StanzaCollector$1;

    .line 339
    invoke-direct {p0}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/filter/StanzaFilter;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    .line 339
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->packetFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)I
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    .line 339
    iget v0, p0, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->size:I

    return v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/StanzaCollector;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    .line 339
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->collectorToReset:Lorg/jivesoftware/smack/StanzaCollector;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/packet/Stanza;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    .line 339
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->request:Lorg/jivesoftware/smack/packet/Stanza;

    return-object v0
.end method


# virtual methods
.method public setCollectorToReset(Lorg/jivesoftware/smack/StanzaCollector;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    .locals 0
    .param p1, "collector"    # Lorg/jivesoftware/smack/StanzaCollector;

    .line 393
    iput-object p1, p0, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->collectorToReset:Lorg/jivesoftware/smack/StanzaCollector;

    .line 394
    return-object p0
.end method

.method public setPacketFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    .locals 1
    .param p1, "packetFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setStanzaFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public setRequest(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    .locals 0
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 398
    iput-object p1, p0, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->request:Lorg/jivesoftware/smack/packet/Stanza;

    .line 399
    return-object p0
.end method

.method public setSize(I)Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    .locals 0
    .param p1, "size"    # I

    .line 381
    iput p1, p0, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->size:I

    .line 382
    return-object p0
.end method

.method public setStanzaFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    .locals 0
    .param p1, "stanzaFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 369
    iput-object p1, p0, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->packetFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 370
    return-object p0
.end method
