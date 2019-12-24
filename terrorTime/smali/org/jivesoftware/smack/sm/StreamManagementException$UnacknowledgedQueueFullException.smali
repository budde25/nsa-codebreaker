.class public final Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;
.super Lorg/jivesoftware/smack/sm/StreamManagementException;
.source "StreamManagementException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/sm/StreamManagementException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnacknowledgedQueueFullException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final droppedElements:I

.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final overflowElementNum:I

.field private final unacknowledgesStanzas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "overflowElementNum"    # I
    .param p3, "droppedElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Element;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p4, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Element;>;"
    .local p5, "unacknowledgesStanzas":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Stanza;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/sm/StreamManagementException;-><init>(Ljava/lang/String;)V

    .line 132
    iput p2, p0, Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;->overflowElementNum:I

    .line 133
    iput p3, p0, Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;->droppedElements:I

    .line 134
    iput-object p4, p0, Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;->elements:Ljava/util/List;

    .line 135
    iput-object p5, p0, Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;->unacknowledgesStanzas:Ljava/util/List;

    .line 136
    return-void
.end method

.method public static newWith(ILjava/util/List;Ljava/util/concurrent/BlockingQueue;)Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;
    .locals 11
    .param p0, "overflowElementNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Element;",
            ">;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">;)",
            "Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;"
        }
    .end annotation

    .line 156
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Element;>;"
    .local p2, "unacknowledgedStanzas":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lorg/jivesoftware/smack/packet/Stanza;>;"
    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 157
    .local v0, "unacknowledgesStanzasQueueSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v1, "localUnacknowledgesStanzas":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Stanza;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p0

    add-int/lit8 v8, v2, -0x1

    .line 161
    .local v8, "droppedElements":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The queue size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not able to fit another "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " potential stanzas type top-level stream-elements."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "message":Ljava/lang/String;
    new-instance v10, Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;

    move-object v2, v10

    move-object v3, v9

    move v4, p0

    move v5, v8

    move-object v6, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    return-object v10
.end method


# virtual methods
.method public getDroppedElements()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;->droppedElements:I

    return v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Element;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;->elements:Ljava/util/List;

    return-object v0
.end method

.method public getOverflowElementNum()I
    .locals 1

    .line 139
    iget v0, p0, Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;->overflowElementNum:I

    return v0
.end method

.method public getUnacknowledgesStanzas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;->unacknowledgesStanzas:Ljava/util/List;

    return-object v0
.end method
