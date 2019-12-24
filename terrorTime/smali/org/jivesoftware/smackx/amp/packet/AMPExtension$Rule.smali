.class public Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;
.super Ljava/lang/Object;
.source "AMPExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/amp/packet/AMPExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "rule"


# instance fields
.field private final action:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;

.field private final condition:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;)V
    .locals 2
    .param p1, "action"    # Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;
    .param p2, "condition"    # Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    if-eqz p1, :cond_1

    .line 208
    if-eqz p2, :cond_0

    .line 211
    iput-object p1, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;->action:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;

    .line 212
    iput-object p2, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;->condition:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;

    .line 213
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t create Rule with null condition"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t create Rule with null action"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;

    .line 186
    invoke-direct {p0}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;->toXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toXML()Ljava/lang/String;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<rule action=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;->action:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;->condition:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;

    .line 217
    invoke-interface {v1}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" value=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;->condition:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;

    .line 218
    invoke-interface {v1}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    return-object v0
.end method


# virtual methods
.method public getAction()Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;->action:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;

    return-object v0
.end method

.method public getCondition()Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;->condition:Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;

    return-object v0
.end method
