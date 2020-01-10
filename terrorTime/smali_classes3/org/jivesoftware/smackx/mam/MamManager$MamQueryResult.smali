.class public final Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;
.super Ljava/lang/Object;
.source "MamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/mam/MamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MamQueryResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

.field public final forwardedMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/forward/packet/Forwarded;",
            ">;"
        }
    .end annotation
.end field

.field public final mamFin:Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

.field private final node:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;Lorg/jivesoftware/smackx/mam/element/MamFinIQ;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 0
    .param p2, "mamFin"    # Lorg/jivesoftware/smackx/mam/element/MamFinIQ;
    .param p3, "node"    # Ljava/lang/String;
    .param p4, "form"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/forward/packet/Forwarded;",
            ">;",
            "Lorg/jivesoftware/smackx/mam/element/MamFinIQ;",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/xdata/packet/DataForm;",
            ")V"
        }
    .end annotation

    .line 941
    .local p1, "forwardedMessages":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/forward/packet/Forwarded;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    iput-object p1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;->forwardedMessages:Ljava/util/List;

    .line 943
    iput-object p2, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;->mamFin:Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    .line 944
    iput-object p3, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;->node:Ljava/lang/String;

    .line 945
    iput-object p4, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 946
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;)V
    .locals 4
    .param p1, "mamQuery"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;

    .line 938
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->access$1400(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->access$1500(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->access$1400(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->access$1600(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;)Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    move-result-object v1

    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->access$1700(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->access$1800(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;)Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;-><init>(Ljava/util/List;Lorg/jivesoftware/smackx/mam/element/MamFinIQ;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 939
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;Lorg/jivesoftware/smackx/mam/MamManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/mam/MamManager$1;

    .line 931
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;-><init>(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    .line 931
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;->node:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;)Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;

    .line 931
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryResult;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    return-object v0
.end method
