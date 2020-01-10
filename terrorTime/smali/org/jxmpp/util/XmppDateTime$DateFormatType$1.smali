.class Lorg/jxmpp/util/XmppDateTime$DateFormatType$1;
.super Ljava/lang/ThreadLocal;
.source "XmppDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jxmpp/util/XmppDateTime$DateFormatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
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


# instance fields
.field final synthetic this$0:Lorg/jxmpp/util/XmppDateTime$DateFormatType;


# direct methods
.method constructor <init>(Lorg/jxmpp/util/XmppDateTime$DateFormatType;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 125
    iput-object p1, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType$1;->this$0:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lorg/jxmpp/util/XmppDateTime$DateFormatType$1;->initialValue()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/text/DateFormat;
    .locals 2

    .line 128
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType$1;->this$0:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-static {v1}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->access$100(Lorg/jxmpp/util/XmppDateTime$DateFormatType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "dateFormat":Ljava/text/DateFormat;
    invoke-static {}, Lorg/jxmpp/util/XmppDateTime;->access$000()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 130
    return-object v0
.end method
