.class abstract Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;
.super Ljava/lang/Object;
.source "StreamManagement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/Nonza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/sm/packet/StreamManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractEnable"
.end annotation


# instance fields
.field protected max:I

.field protected resume:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;->max:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;->resume:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/sm/packet/StreamManagement$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smack/sm/packet/StreamManagement$1;

    .line 57
    invoke-direct {p0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxResumptionTime()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;->max:I

    return v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 94
    const-string v0, "urn:xmpp:sm:3"

    return-object v0
.end method

.method public isResumeSet()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;->resume:Z

    return v0
.end method

.method protected maybeAddMaxAttributeTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 75
    iget v0, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;->max:I

    if-lez v0, :cond_0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "max"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 78
    :cond_0
    return-void
.end method

.method protected maybeAddResumeAttributeTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 67
    iget-boolean v0, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;->resume:Z

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "resume"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 72
    :cond_0
    return-void
.end method
