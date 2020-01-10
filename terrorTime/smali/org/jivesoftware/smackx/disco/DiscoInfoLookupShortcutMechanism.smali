.class public abstract Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;
.super Ljava/lang/Object;
.source "DiscoInfoLookupShortcutMechanism.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final priority:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;->name:Ljava/lang/String;

    .line 30
    iput p2, p0, Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;->priority:I

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;->compareTo(Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;)I
    .locals 2
    .param p1, "other"    # Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;

    .line 51
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;->getPriority()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 52
    .local v0, "ourPriority":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    return v1
.end method

.method public abstract getDiscoverInfoByUser(Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;->priority:I

    return v0
.end method
