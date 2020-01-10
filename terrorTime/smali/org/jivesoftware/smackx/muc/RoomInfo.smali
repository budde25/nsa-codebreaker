.class public Lorg/jivesoftware/smackx/muc/RoomInfo;
.super Ljava/lang/Object;
.source "RoomInfo.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final contactJid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;"
        }
    .end annotation
.end field

.field private final description:Ljava/lang/String;

.field private final form:Lorg/jivesoftware/smackx/xdata/Form;

.field private final lang:Ljava/lang/String;

.field private final ldapgroup:Ljava/lang/String;

.field private final logs:Ljava/net/URL;

.field private final maxhistoryfetch:I

.field private final membersOnly:Z

.field private final moderated:Z

.field private final name:Ljava/lang/String;

.field private final nonanonymous:Z

.field private final occupantsCount:I

.field private final passwordProtected:Z

.field private final persistent:Z

.field private final pubsub:Ljava/lang/String;

.field private final room:Lorg/jxmpp/jid/EntityBareJid;

.field private final subject:Ljava/lang/String;

.field private final subjectmod:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/jivesoftware/smackx/muc/RoomInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/muc/RoomInfo;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V
    .locals 27
    .param p1, "info"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 135
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v3

    .line 137
    .local v3, "from":Lorg/jxmpp/jid/Jid;
    const/4 v0, 0x0

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-interface {v4}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v4

    iput-object v4, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->room:Lorg/jxmpp/jid/EntityBareJid;

    goto :goto_0

    .line 140
    :cond_0
    iput-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->room:Lorg/jxmpp/jid/EntityBareJid;

    .line 143
    :goto_0
    const-string v4, "muc_membersonly"

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->membersOnly:Z

    .line 144
    const-string v4, "muc_moderated"

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->moderated:Z

    .line 145
    const-string v4, "muc_nonanonymous"

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->nonanonymous:Z

    .line 146
    const-string v4, "muc_passwordprotected"

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->passwordProtected:Z

    .line 147
    const-string v4, "muc_persistent"

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->persistent:Z

    .line 149
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getIdentities()Ljava/util/List;

    move-result-object v4

    .line 152
    .local v4, "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 153
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_1
    sget-object v5, Lorg/jivesoftware/smackx/muc/RoomInfo;->LOGGER:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DiscoverInfo does not contain any Identity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 156
    const-string v0, ""

    iput-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->name:Ljava/lang/String;

    .line 158
    :goto_1
    const-string v0, ""

    .line 159
    .local v0, "subject":Ljava/lang/String;
    const/4 v5, -0x1

    .line 160
    .local v5, "occupantsCount":I
    const-string v7, ""

    .line 161
    .local v7, "description":Ljava/lang/String;
    const/4 v8, -0x1

    .line 162
    .local v8, "maxhistoryfetch":I
    const/4 v9, 0x0

    .line 163
    .local v9, "contactJid":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/EntityBareJid;>;"
    const/4 v10, 0x0

    .line 164
    .local v10, "lang":Ljava/lang/String;
    const/4 v11, 0x0

    .line 165
    .local v11, "ldapgroup":Ljava/lang/String;
    const/4 v12, 0x0

    .line 166
    .local v12, "subjectmod":Ljava/lang/Boolean;
    const/4 v13, 0x0

    .line 167
    .local v13, "logs":Ljava/net/URL;
    const/4 v14, 0x0

    .line 169
    .local v14, "pubsub":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smackx/xdata/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v15

    iput-object v15, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    .line 170
    iget-object v15, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    if-eqz v15, :cond_e

    .line 171
    const-string v6, "muc#roominfo_description"

    invoke-virtual {v15, v6}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v6

    .line 172
    .local v6, "descField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 174
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v7

    .line 177
    :cond_2
    iget-object v15, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    move-object/from16 v17, v0

    .end local v0    # "subject":Ljava/lang/String;
    .local v17, "subject":Ljava/lang/String;
    const-string v0, "muc#roominfo_subject"

    invoke-virtual {v15, v0}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v15

    .line 178
    .local v15, "subjField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    invoke-virtual {v15}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 182
    :cond_3
    iget-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    const-string v2, "muc#roominfo_occupants"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v2

    .line 183
    .local v2, "occCountField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 184
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 187
    :cond_4
    iget-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    move-object/from16 v18, v2

    .end local v2    # "occCountField":Lorg/jivesoftware/smackx/xdata/FormField;
    .local v18, "occCountField":Lorg/jivesoftware/smackx/xdata/FormField;
    const-string v2, "muc#maxhistoryfetch"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v2

    .line 188
    .local v2, "maxhistoryfetchField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 189
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v8, v0

    .line 192
    :cond_5
    iget-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    move-object/from16 v19, v2

    .end local v2    # "maxhistoryfetchField":Lorg/jivesoftware/smackx/xdata/FormField;
    .local v19, "maxhistoryfetchField":Lorg/jivesoftware/smackx/xdata/FormField;
    const-string v2, "muc#roominfo_contactjid"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v2

    .line 193
    .local v2, "contactJidField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 194
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v0

    .line 195
    .local v0, "contactJidValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {v0}, Lorg/jxmpp/jid/util/JidUtil;->jidSetFrom(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/jxmpp/jid/util/JidUtil;->filterEntityBareJidList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    .line 198
    .end local v0    # "contactJidValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_6
    iget-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    move-object/from16 v20, v2

    .end local v2    # "contactJidField":Lorg/jivesoftware/smackx/xdata/FormField;
    .local v20, "contactJidField":Lorg/jivesoftware/smackx/xdata/FormField;
    const-string v2, "muc#roominfo_lang"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v2

    .line 199
    .local v2, "langField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 200
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 203
    :cond_7
    iget-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    move-object/from16 v21, v2

    .end local v2    # "langField":Lorg/jivesoftware/smackx/xdata/FormField;
    .local v21, "langField":Lorg/jivesoftware/smackx/xdata/FormField;
    const-string v2, "muc#roominfo_ldapgroup"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v2

    .line 204
    .local v2, "ldapgroupField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 205
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 208
    :cond_8
    iget-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    move-object/from16 v22, v2

    .end local v2    # "ldapgroupField":Lorg/jivesoftware/smackx/xdata/FormField;
    .local v22, "ldapgroupField":Lorg/jivesoftware/smackx/xdata/FormField;
    const-string v2, "muc#roominfo_subjectmod"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v2

    .line 209
    .local v2, "subjectmodField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 210
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "firstValue":Ljava/lang/String;
    move-object/from16 v23, v2

    .end local v2    # "subjectmodField":Lorg/jivesoftware/smackx/xdata/FormField;
    .local v23, "subjectmodField":Lorg/jivesoftware/smackx/xdata/FormField;
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    const/16 v16, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v2, 0x1

    move/from16 v16, v2

    :goto_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v12, v2

    .end local v12    # "subjectmod":Ljava/lang/Boolean;
    .local v2, "subjectmod":Ljava/lang/Boolean;
    goto :goto_4

    .line 209
    .end local v0    # "firstValue":Ljava/lang/String;
    .end local v23    # "subjectmodField":Lorg/jivesoftware/smackx/xdata/FormField;
    .local v2, "subjectmodField":Lorg/jivesoftware/smackx/xdata/FormField;
    .restart local v12    # "subjectmod":Ljava/lang/Boolean;
    :cond_b
    move-object/from16 v23, v2

    .line 214
    .end local v2    # "subjectmodField":Lorg/jivesoftware/smackx/xdata/FormField;
    .restart local v23    # "subjectmodField":Lorg/jivesoftware/smackx/xdata/FormField;
    :goto_4
    iget-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    const-string v2, "muc#roominfo_logs"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v2

    .line 215
    .local v2, "urlField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 216
    move-object/from16 v16, v3

    .end local v3    # "from":Lorg/jxmpp/jid/Jid;
    .local v16, "from":Lorg/jxmpp/jid/Jid;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "urlString":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v13    # "logs":Ljava/net/URL;
    .local v0, "logs":Ljava/net/URL;
    move-object v13, v0

    move-object/from16 v24, v2

    move-object/from16 v26, v4

    goto :goto_5

    .line 219
    .end local v0    # "logs":Ljava/net/URL;
    .restart local v13    # "logs":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/net/MalformedURLException;
    move-object/from16 v24, v2

    .end local v2    # "urlField":Lorg/jivesoftware/smackx/xdata/FormField;
    .local v24, "urlField":Lorg/jivesoftware/smackx/xdata/FormField;
    sget-object v2, Lorg/jivesoftware/smackx/muc/RoomInfo;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v25, v3

    .end local v3    # "urlString":Ljava/lang/String;
    .local v25, "urlString":Ljava/lang/String;
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    move-object/from16 v26, v4

    .end local v4    # "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    .local v26, "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    const-string v4, "Could not parse URL"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 215
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v16    # "from":Lorg/jxmpp/jid/Jid;
    .end local v24    # "urlField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v25    # "urlString":Ljava/lang/String;
    .end local v26    # "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    .restart local v2    # "urlField":Lorg/jivesoftware/smackx/xdata/FormField;
    .local v3, "from":Lorg/jxmpp/jid/Jid;
    .restart local v4    # "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    :cond_c
    move-object/from16 v24, v2

    move-object/from16 v16, v3

    move-object/from16 v26, v4

    .line 224
    .end local v2    # "urlField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v3    # "from":Lorg/jxmpp/jid/Jid;
    .end local v4    # "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    .restart local v16    # "from":Lorg/jxmpp/jid/Jid;
    .restart local v24    # "urlField":Lorg/jivesoftware/smackx/xdata/FormField;
    .restart local v26    # "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    :goto_5
    iget-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    const-string v2, "muc#roominfo_pubsub"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 225
    .local v0, "pubsubField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 226
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v17

    goto :goto_6

    .line 229
    .end local v0    # "pubsubField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v6    # "descField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v15    # "subjField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v18    # "occCountField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v19    # "maxhistoryfetchField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v20    # "contactJidField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v21    # "langField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v22    # "ldapgroupField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v23    # "subjectmodField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v24    # "urlField":Lorg/jivesoftware/smackx/xdata/FormField;
    :cond_d
    move-object/from16 v0, v17

    goto :goto_6

    .line 170
    .end local v16    # "from":Lorg/jxmpp/jid/Jid;
    .end local v17    # "subject":Ljava/lang/String;
    .end local v26    # "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    .local v0, "subject":Ljava/lang/String;
    .restart local v3    # "from":Lorg/jxmpp/jid/Jid;
    .restart local v4    # "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    :cond_e
    move-object/from16 v17, v0

    move-object/from16 v16, v3

    move-object/from16 v26, v4

    .line 229
    .end local v3    # "from":Lorg/jxmpp/jid/Jid;
    .end local v4    # "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    .restart local v16    # "from":Lorg/jxmpp/jid/Jid;
    .restart local v26    # "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    :goto_6
    iput-object v7, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->description:Ljava/lang/String;

    .line 230
    iput-object v0, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->subject:Ljava/lang/String;

    .line 231
    iput v5, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->occupantsCount:I

    .line 232
    iput v8, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->maxhistoryfetch:I

    .line 233
    iput-object v9, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->contactJid:Ljava/util/List;

    .line 234
    iput-object v10, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->lang:Ljava/lang/String;

    .line 235
    iput-object v11, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->ldapgroup:Ljava/lang/String;

    .line 236
    iput-object v12, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->subjectmod:Ljava/lang/Boolean;

    .line 237
    iput-object v13, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->logs:Ljava/net/URL;

    .line 238
    iput-object v14, v1, Lorg/jivesoftware/smackx/muc/RoomInfo;->pubsub:Ljava/lang/String;

    .line 239
    return-void
.end method


# virtual methods
.method public getContactJids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->contactJid:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getForm()Lorg/jivesoftware/smackx/xdata/Form;
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->form:Lorg/jivesoftware/smackx/xdata/Form;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapGroup()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->ldapgroup:Ljava/lang/String;

    return-object v0
.end method

.method public getLogsUrl()Ljava/net/URL;
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->logs:Ljava/net/URL;

    return-object v0
.end method

.method public getMaxHistoryFetch()I
    .locals 1

    .line 351
    iget v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->maxhistoryfetch:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupantsCount()I
    .locals 1

    .line 295
    iget v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->occupantsCount:I

    return v0
.end method

.method public getPubSub()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->pubsub:Ljava/lang/String;

    return-object v0
.end method

.method public getRoom()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->room:Lorg/jxmpp/jid/EntityBareJid;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public isMembersOnly()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->membersOnly:Z

    return v0
.end method

.method public isModerated()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->moderated:Z

    return v0
.end method

.method public isNonanonymous()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->nonanonymous:Z

    return v0
.end method

.method public isPasswordProtected()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->passwordProtected:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->persistent:Z

    return v0
.end method

.method public isSubjectModifiable()Ljava/lang/Boolean;
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->subjectmod:Ljava/lang/Boolean;

    return-object v0
.end method
