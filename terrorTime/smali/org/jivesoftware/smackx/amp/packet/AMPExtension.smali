.class public Lorg/jivesoftware/smackx/amp/packet/AMPExtension;
.super Ljava/lang/Object;
.source "AMPExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;,
        Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;,
        Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;,
        Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "amp"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/amp"


# instance fields
.field private final from:Ljava/lang/String;

.field private perHop:Z

.field private final rules:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;

.field private final to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->rules:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->perHop:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->from:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->to:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->status:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;)V
    .locals 1
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "status"    # Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->rules:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->perHop:Z

    .line 48
    iput-object p1, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->from:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->to:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->status:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;

    .line 51
    return-void
.end method


# virtual methods
.method public addRule(Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;)V
    .locals 1
    .param p1, "rule"    # Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;

    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->rules:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 139
    const-string v0, "amp"

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 150
    const-string v0, "http://jabber.org/protocol/amp"

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->rules:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->rules:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getStatus()Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->status:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->to:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isPerHop()Z
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->perHop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lorg/jivesoftware/smackx/amp/packet/AMPExtension;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPerHop(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 119
    :try_start_0
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->perHop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 118
    .end local p0    # "this":Lorg/jivesoftware/smackx/amp/packet/AMPExtension;
    .end local p1    # "enabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->toXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    iget-object v2, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->status:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;

    if-eqz v2, :cond_0

    .line 161
    const-string v2, " status=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->status:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->to:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 164
    const-string v2, " to=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->to:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->from:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 167
    const-string v2, " from=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->from:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    :cond_2
    iget-boolean v1, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->perHop:Z

    if-eqz v1, :cond_3

    .line 170
    const-string v1, " per-hop=\"true\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_3
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;

    .line 176
    .local v3, "rule":Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;
    invoke-static {v3}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;->access$000(Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .end local v3    # "rule":Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;
    goto :goto_0

    .line 179
    :cond_4
    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
