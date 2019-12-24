.class final Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;
.super Ljava/lang/Object;
.source "JingleS5BTransportSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsedCandidate"
.end annotation


# instance fields
.field private final candidate:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

.field private final socket:Ljava/net/Socket;

.field private final transport:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;Ljava/net/Socket;)V
    .locals 0
    .param p1, "transport"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;
    .param p2, "candidate"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->socket:Ljava/net/Socket;

    .line 355
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->transport:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    .line 356
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->candidate:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    .line 357
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;Ljava/net/Socket;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
    .param p3, "x2"    # Ljava/net/Socket;
    .param p4, "x3"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$1;

    .line 348
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;-><init>(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    .line 348
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->candidate:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    .line 348
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;

    .line 348
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession$UsedCandidate;->transport:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    return-object v0
.end method
