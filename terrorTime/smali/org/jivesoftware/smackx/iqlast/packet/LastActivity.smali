.class public Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "LastActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/iqlast/packet/LastActivity$Provider;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "jabber:iq:last"


# instance fields
.field public lastActivity:J

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    const-string v0, "query"

    const-string v1, "jabber:iq:last"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;->lastActivity:J

    .line 49
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/Jid;)V
    .locals 0
    .param p1, "to"    # Lorg/jxmpp/jid/Jid;

    .line 53
    invoke-direct {p0}, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;->message:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 59
    iget-wide v0, p0, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;->lastActivity:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "seconds"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optLongAttribute(Ljava/lang/String;Ljava/lang/Long;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 63
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 64
    return-object p1
.end method

.method public getIdleTime()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;->lastActivity:J

    return-wide v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setLastActivity(J)V
    .locals 0
    .param p1, "lastActivity"    # J

    .line 69
    iput-wide p1, p0, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;->lastActivity:J

    .line 70
    return-void
.end method
