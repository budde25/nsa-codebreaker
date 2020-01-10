.class public Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;
.super Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;
.source "StreamManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/sm/packet/StreamManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enabled"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "enabled"


# instance fields
.field private final id:Ljava/lang/String;

.field private final location:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "resume"    # Z

    .line 158
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "resume"    # Z
    .param p3, "location"    # Ljava/lang/String;
    .param p4, "max"    # I

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;-><init>(Lorg/jivesoftware/smack/sm/packet/StreamManagement$1;)V

    .line 162
    iput-object p1, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->id:Ljava/lang/String;

    .line 163
    iput-boolean p2, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->resume:Z

    .line 164
    iput-object p3, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->location:Ljava/lang/String;

    .line 165
    iput p4, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->max:I

    .line 166
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 189
    const-string v0, "enabled"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->location:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMaxResumptionTime()I
    .locals 1

    .line 144
    invoke-super {p0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;->getMaxResumptionTime()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isResumeSet()Z
    .locals 1

    .line 144
    invoke-super {p0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractEnable;->isResumeSet()Z

    move-result v0

    return v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 178
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 179
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 180
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->maybeAddResumeAttributeTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 181
    iget-object v1, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->location:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 182
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->maybeAddMaxAttributeTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 183
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 184
    return-object v0
.end method
