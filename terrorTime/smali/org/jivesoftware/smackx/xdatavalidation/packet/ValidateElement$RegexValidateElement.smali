.class public Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$RegexValidateElement;
.super Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;
.source "ValidateElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegexValidateElement"
.end annotation


# static fields
.field public static final METHOD:Ljava/lang/String; = "regex"


# instance fields
.field private final regex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$1;)V

    .line 292
    iput-object p2, p0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$RegexValidateElement;->regex:Ljava/lang/String;

    .line 293
    return-void
.end method


# virtual methods
.method protected appendXML(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V
    .locals 2
    .param p1, "buf"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 306
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$RegexValidateElement;->getRegex()Ljava/lang/String;

    move-result-object v0

    const-string v1, "regex"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 307
    return-void
.end method

.method public checkConsistency(Lorg/jivesoftware/smackx/xdata/FormField;)V
    .locals 1
    .param p1, "formField"    # Lorg/jivesoftware/smackx/xdata/FormField;

    .line 311
    const-string v0, "regex"

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$RegexValidateElement;->checkNonMultiConsistency(Lorg/jivesoftware/smackx/xdata/FormField;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public getRegex()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$RegexValidateElement;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 279
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method
