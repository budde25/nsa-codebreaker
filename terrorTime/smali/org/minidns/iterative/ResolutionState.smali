.class public Lorg/minidns/iterative/ResolutionState;
.super Ljava/lang/Object;
.source "ResolutionState.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/net/InetAddress;",
            "Ljava/util/Set<",
            "Lorg/minidns/dnsmessage/Question;",
            ">;>;"
        }
    .end annotation
.end field

.field private final recursiveDnsClient:Lorg/minidns/iterative/IterativeDnsClient;

.field private steps:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 23
    return-void
.end method

.method constructor <init>(Lorg/minidns/iterative/IterativeDnsClient;)V
    .locals 1
    .param p1, "recursiveDnsClient"    # Lorg/minidns/iterative/IterativeDnsClient;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/minidns/iterative/ResolutionState;->map:Ljava/util/HashMap;

    .line 30
    iput-object p1, p0, Lorg/minidns/iterative/ResolutionState;->recursiveDnsClient:Lorg/minidns/iterative/IterativeDnsClient;

    .line 31
    return-void
.end method


# virtual methods
.method decrementSteps()V
    .locals 1

    .line 50
    iget v0, p0, Lorg/minidns/iterative/ResolutionState;->steps:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/minidns/iterative/ResolutionState;->steps:I

    .line 51
    return-void
.end method

.method recurse(Ljava/net/InetAddress;Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "query"    # Lorg/minidns/dnsmessage/DnsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/iterative/IterativeClientException$LoopDetected;,
            Lorg/minidns/iterative/IterativeClientException$MaxIterativeStepsReached;
        }
    .end annotation

    .line 34
    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v0

    .line 35
    .local v0, "question":Lorg/minidns/dnsmessage/Question;
    iget-object v1, p0, Lorg/minidns/iterative/ResolutionState;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lorg/minidns/iterative/ResolutionState;->map:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lorg/minidns/iterative/ResolutionState;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 41
    :goto_0
    iget v1, p0, Lorg/minidns/iterative/ResolutionState;->steps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/minidns/iterative/ResolutionState;->steps:I

    iget-object v2, p0, Lorg/minidns/iterative/ResolutionState;->recursiveDnsClient:Lorg/minidns/iterative/IterativeDnsClient;

    iget v2, v2, Lorg/minidns/iterative/IterativeDnsClient;->maxSteps:I

    if-gt v1, v2, :cond_1

    .line 45
    iget-object v1, p0, Lorg/minidns/iterative/ResolutionState;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 46
    .local v1, "isNew":Z
    nop

    .line 47
    return-void

    .line 42
    .end local v1    # "isNew":Z
    :cond_1
    new-instance v1, Lorg/minidns/iterative/IterativeClientException$MaxIterativeStepsReached;

    invoke-direct {v1}, Lorg/minidns/iterative/IterativeClientException$MaxIterativeStepsReached;-><init>()V

    throw v1

    .line 38
    :cond_2
    new-instance v1, Lorg/minidns/iterative/IterativeClientException$LoopDetected;

    invoke-direct {v1, p1, v0}, Lorg/minidns/iterative/IterativeClientException$LoopDetected;-><init>(Ljava/net/InetAddress;Lorg/minidns/dnsmessage/Question;)V

    throw v1
.end method
