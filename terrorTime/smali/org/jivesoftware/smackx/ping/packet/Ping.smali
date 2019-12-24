.class public Lorg/jivesoftware/smackx/ping/packet/Ping;
.super Lorg/jivesoftware/smack/packet/SimpleIQ;
.source "Ping.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "ping"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:ping"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    const-string v0, "ping"

    const-string v1, "urn:xmpp:ping"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/SimpleIQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/Jid;)V
    .locals 1
    .param p1, "to"    # Lorg/jxmpp/jid/Jid;

    .line 34
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/packet/Ping;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/ping/packet/Ping;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 36
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/ping/packet/Ping;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getPong()Lorg/jivesoftware/smack/packet/IQ;
    .locals 1

    .line 45
    invoke-static {p0}, Lorg/jivesoftware/smackx/ping/packet/Ping;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method
