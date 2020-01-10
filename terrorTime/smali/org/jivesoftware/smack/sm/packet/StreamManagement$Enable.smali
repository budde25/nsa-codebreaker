.class public Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;
.super Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;
.source "StreamManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/sm/packet/StreamManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enable"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "enable"

.field public static final INSTANCE:Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;

    invoke-direct {v0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;->INSTANCE:Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;-><init>(Lorg/jivesoftware/smack/sm/packet/StreamManagement$1;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "resume"    # Z

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;-><init>(Lorg/jivesoftware/smack/sm/packet/StreamManagement$1;)V

    .line 107
    iput-boolean p1, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;->resume:Z

    .line 108
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "resume"    # Z
    .param p2, "max"    # I

    .line 111
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;-><init>(Z)V

    .line 112
    iput p2, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;->max:I

    .line 113
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "enable"

    return-object v0
.end method

.method public bridge synthetic getMaxResumptionTime()I
    .locals 1

    .line 98
    invoke-super {p0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;->getMaxResumptionTime()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isResumeSet()Z
    .locals 1

    .line 98
    invoke-super {p0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;->isResumeSet()Z

    move-result v0

    return v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 117
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 118
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;->maybeAddResumeAttributeTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 119
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;->maybeAddMaxAttributeTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 120
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 121
    return-object v0
.end method
