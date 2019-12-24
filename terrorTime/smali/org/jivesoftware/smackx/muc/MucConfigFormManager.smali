.class public Lorg/jivesoftware/smackx/muc/MucConfigFormManager;
.super Ljava/lang/Object;
.source "MucConfigFormManager.java"


# static fields
.field public static final MUC_ROOMCONFIG_MEMBERSONLY:Ljava/lang/String; = "muc#roomconfig_membersonly"

.field public static final MUC_ROOMCONFIG_PASSWORDPROTECTEDROOM:Ljava/lang/String; = "muc#roomconfig_passwordprotectedroom"

.field public static final MUC_ROOMCONFIG_ROOMOWNERS:Ljava/lang/String; = "muc#roomconfig_roomowners"

.field public static final MUC_ROOMCONFIG_ROOMSECRET:Ljava/lang/String; = "muc#roomconfig_roomsecret"


# instance fields
.field private final answerForm:Lorg/jivesoftware/smackx/xdata/Form;

.field private final multiUserChat:Lorg/jivesoftware/smackx/muc/MultiUserChat;

.field private final owners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V
    .locals 5
    .param p1, "multiUserChat"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->multiUserChat:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 96
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getConfigurationForm()Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v0

    .line 97
    .local v0, "configForm":Lorg/jivesoftware/smackx/xdata/Form;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/Form;->createAnswerForm()Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    .line 99
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/Form;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 100
    .local v2, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smackx/xdata/FormField$Type;->hidden:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    if-eq v3, v4, :cond_0

    .line 101
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/xdata/Form;->setDefaultAnswer(Ljava/lang/String;)V

    .line 105
    .end local v2    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    goto :goto_0

    .line 108
    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    const-string v2, "muc#roomconfig_roomowners"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/Form;->hasField(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v1

    .line 111
    .local v1, "ownerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->owners:Ljava/util/List;

    .line 112
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->owners:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lorg/jxmpp/jid/util/JidUtil;->jidsFrom(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;)V

    .line 113
    .end local v1    # "ownerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    goto :goto_1

    .line 116
    :cond_3
    iput-object v3, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->owners:Ljava/util/List;

    .line 118
    :goto_1
    return-void
.end method


# virtual methods
.method public makeMembersOnly()Lorg/jivesoftware/smackx/muc/MucConfigFormManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->setMembersOnly(Z)Lorg/jivesoftware/smackx/muc/MucConfigFormManager;

    move-result-object v0

    return-object v0
.end method

.method public makePasswordProtected()Lorg/jivesoftware/smackx/muc/MucConfigFormManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->setIsPasswordProtected(Z)Lorg/jivesoftware/smackx/muc/MucConfigFormManager;

    move-result-object v0

    return-object v0
.end method

.method public setAndEnablePassword(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MucConfigFormManager;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->setIsPasswordProtected(Z)Lorg/jivesoftware/smackx/muc/MucConfigFormManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->setRoomSecret(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MucConfigFormManager;

    move-result-object v0

    return-object v0
.end method

.method public setIsPasswordProtected(Z)Lorg/jivesoftware/smackx/muc/MucConfigFormManager;
    .locals 2
    .param p1, "isPasswordProtected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->supportsMembersOnly()Z

    move-result v0

    const-string v1, "muc#roomconfig_passwordprotectedroom"

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smackx/xdata/Form;->setAnswer(Ljava/lang/String;Z)V

    .line 225
    return-object p0

    .line 222
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMembersOnly(Z)Lorg/jivesoftware/smackx/muc/MucConfigFormManager;
    .locals 2
    .param p1, "isMembersOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->supportsMembersOnly()Z

    move-result v0

    const-string v1, "muc#roomconfig_membersonly"

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smackx/xdata/Form;->setAnswer(Ljava/lang/String;Z)V

    .line 177
    return-object p0

    .line 174
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRoomOwners(Ljava/util/Collection;)Lorg/jivesoftware/smackx/muc/MucConfigFormManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)",
            "Lorg/jivesoftware/smackx/muc/MucConfigFormManager;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;
        }
    .end annotation

    .line 138
    .local p1, "newOwners":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->supportsRoomOwners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->owners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->owners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    return-object p0

    .line 139
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;

    const-string v1, "muc#roomconfig_roomowners"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRoomSecret(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MucConfigFormManager;
    .locals 2
    .param p1, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    const-string v1, "muc#roomconfig_roomsecret"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/Form;->hasField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smackx/xdata/Form;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-object p0

    .line 240
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public submitConfigurationForm()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->owners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 257
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    invoke-static {v0}, Lorg/jxmpp/jid/util/JidUtil;->toStringList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    const-string v2, "muc#roomconfig_roomowners"

    invoke-virtual {v1, v2, v0}, Lorg/jivesoftware/smackx/xdata/Form;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->multiUserChat:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->sendConfigurationForm(Lorg/jivesoftware/smackx/xdata/Form;)V

    .line 260
    return-void
.end method

.method public supportsMembersOnly()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    const-string v1, "muc#roomconfig_membersonly"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/Form;->hasField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supportsPasswordProtected()Z
    .locals 2

    .line 186
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->answerForm:Lorg/jivesoftware/smackx/xdata/Form;

    const-string v1, "muc#roomconfig_passwordprotectedroom"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/Form;->hasField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supportsRoomOwners()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucConfigFormManager;->owners:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
