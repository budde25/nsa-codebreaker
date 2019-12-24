.class Lorg/jxmpp/util/XmppDateTime$5;
.super Ljava/lang/Object;
.source "XmppDateTime.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jxmpp/util/XmppDateTime;->determineNearestDate(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$now:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lorg/jxmpp/util/XmppDateTime$5;->val$now:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 393
    check-cast p1, Ljava/util/Calendar;

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lorg/jxmpp/util/XmppDateTime$5;->compare(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 5
    .param p1, "o1"    # Ljava/util/Calendar;
    .param p2, "o2"    # Ljava/util/Calendar;

    .line 397
    iget-object v0, p0, Lorg/jxmpp/util/XmppDateTime$5;->val$now:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 398
    .local v0, "diff1":Ljava/lang/Long;
    iget-object v1, p0, Lorg/jxmpp/util/XmppDateTime$5;->val$now:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 399
    .local v1, "diff2":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method
