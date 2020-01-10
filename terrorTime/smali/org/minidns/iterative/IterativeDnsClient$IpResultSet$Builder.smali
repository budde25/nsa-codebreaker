.class Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;
.super Ljava/lang/Object;
.source "IterativeDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private final ipv4Addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final ipv6Addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;


# direct methods
.method private constructor <init>(Ljava/util/Random;)V
    .locals 2
    .param p1, "random"    # Ljava/util/Random;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->ipv4Addresses:Ljava/util/List;

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->ipv6Addresses:Ljava/util/List;

    .line 486
    iput-object p1, p0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->random:Ljava/util/Random;

    .line 487
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Random;Lorg/minidns/iterative/IterativeDnsClient$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Random;
    .param p2, "x1"    # Lorg/minidns/iterative/IterativeDnsClient$1;

    .line 480
    invoke-direct {p0, p1}, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method static synthetic access$000(Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;

    .line 480
    iget-object v0, p0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->ipv4Addresses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;

    .line 480
    iget-object v0, p0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->ipv6Addresses:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;
    .locals 5

    .line 490
    new-instance v0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;

    iget-object v1, p0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->ipv4Addresses:Ljava/util/List;

    iget-object v2, p0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->ipv6Addresses:Ljava/util/List;

    iget-object v3, p0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->random:Ljava/util/Random;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Random;Lorg/minidns/iterative/IterativeDnsClient$1;)V

    return-object v0
.end method
