.class public final Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
.super Ljava/lang/Object;
.source "MucEnterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final joinPresence:Lorg/jivesoftware/smack/packet/Presence;

.field private final maxChars:I

.field private final maxStanzas:I

.field private final nickname:Lorg/jxmpp/jid/parts/Resourcepart;

.field private final password:Ljava/lang/String;

.field private final seconds:I

.field private final since:Ljava/util/Date;

.field private final timeout:J


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)V
    .locals 8
    .param p1, "builder"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->access$000(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->nickname:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 53
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->access$100(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->password:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->access$200(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->maxChars:I

    .line 55
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->access$300(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->maxStanzas:I

    .line 56
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->access$400(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->seconds:I

    .line 57
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->access$500(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->since:Ljava/util/Date;

    .line 58
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->access$600(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->timeout:J

    .line 60
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->access$700(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->joinPresence:Lorg/jivesoftware/smack/packet/Presence;

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->access$700(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->clone()Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->joinPresence:Lorg/jivesoftware/smack/packet/Presence;

    .line 67
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->joinPresence:Lorg/jivesoftware/smack/packet/Presence;

    new-instance v7, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->password:Ljava/lang/String;

    iget v3, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->maxChars:I

    iget v4, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->maxStanzas:I

    iget v5, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->seconds:I

    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->since:Ljava/util/Date;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;-><init>(Ljava/lang/String;IIILjava/util/Date;)V

    invoke-virtual {v0, v7}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 69
    return-void
.end method


# virtual methods
.method getJoinPresence(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 2
    .param p1, "multiUserChat"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 72
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getRoom()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->nickname:Lorg/jxmpp/jid/parts/Resourcepart;

    invoke-static {v0, v1}, Lorg/jxmpp/jid/impl/JidCreate;->fullFrom(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    .line 73
    .local v0, "jid":Lorg/jxmpp/jid/EntityFullJid;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->joinPresence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 74
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->joinPresence:Lorg/jivesoftware/smack/packet/Presence;

    return-object v1
.end method

.method getTimeout()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;->timeout:J

    return-wide v0
.end method
