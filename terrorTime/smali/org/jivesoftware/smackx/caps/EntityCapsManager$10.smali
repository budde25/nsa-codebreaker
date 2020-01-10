.class Lorg/jivesoftware/smackx/caps/EntityCapsManager$10;
.super Ljava/lang/Object;
.source "EntityCapsManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/caps/EntityCapsManager;->generateVerificationString(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;Ljava/lang/String;)Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/jivesoftware/smackx/xdata/FormField;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 707
    check-cast p1, Lorg/jivesoftware/smackx/xdata/FormField;

    check-cast p2, Lorg/jivesoftware/smackx/xdata/FormField;

    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$10;->compare(Lorg/jivesoftware/smackx/xdata/FormField;Lorg/jivesoftware/smackx/xdata/FormField;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/jivesoftware/smackx/xdata/FormField;Lorg/jivesoftware/smackx/xdata/FormField;)I
    .locals 2
    .param p1, "f1"    # Lorg/jivesoftware/smackx/xdata/FormField;
    .param p2, "f2"    # Lorg/jivesoftware/smackx/xdata/FormField;

    .line 710
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
