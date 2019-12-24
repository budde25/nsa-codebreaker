.class Lorg/jivesoftware/smack/roster/RosterUtil$2;
.super Ljava/lang/Object;
.source "RosterUtil.java"

# interfaces
.implements Lorg/jivesoftware/smack/roster/SubscribeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/roster/RosterUtil;->ensureSubscribedTo(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/XMPPConnection;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$jidOne:Lorg/jxmpp/jid/BareJid;


# direct methods
.method constructor <init>(Lorg/jxmpp/jid/BareJid;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/RosterUtil$2;->val$jidOne:Lorg/jxmpp/jid/BareJid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processSubscribe(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Presence;)Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;
    .locals 1
    .param p1, "from"    # Lorg/jxmpp/jid/Jid;
    .param p2, "subscribeRequest"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 169
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterUtil$2;->val$jidOne:Lorg/jxmpp/jid/BareJid;

    invoke-interface {p1, v0}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->Approve:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    return-object v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
