.class Lorg/jxmpp/util/XmppDateTime$3;
.super Ljava/lang/ThreadLocal;
.source "XmppDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jxmpp/util/XmppDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/jxmpp/util/XmppDateTime$3;->initialValue()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/text/DateFormat;
    .locals 2

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMdd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "dateFormat":Ljava/text/DateFormat;
    invoke-static {}, Lorg/jxmpp/util/XmppDateTime;->access$000()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 83
    return-object v0
.end method
