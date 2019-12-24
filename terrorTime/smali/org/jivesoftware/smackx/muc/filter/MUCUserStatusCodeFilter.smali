.class public Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;
.super Ljava/lang/Object;
.source "MUCUserStatusCodeFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/StanzaFilter;


# static fields
.field public static final STATUS_110_PRESENCE_TO_SELF:Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;


# instance fields
.field private final status:Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;

    sget-object v1, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;->PRESENCE_TO_SELF_110:Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;-><init>(Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;)V

    sput-object v0, Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;->STATUS_110_PRESENCE_TO_SELF:Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "statusCode"    # I

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;->create(Ljava/lang/Integer;)Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;-><init>(Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;)V
    .locals 0
    .param p1, "status"    # Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;->status:Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    .line 33
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 3
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 41
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    move-result-object v0

    .line 42
    .local v0, "mucUser":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x0

    return v1

    .line 45
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getStatus()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;->status:Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/filter/MUCUserStatusCodeFilter;->status:Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
