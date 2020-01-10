.class public final Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
.super Ljava/lang/Object;
.source "MucEnterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private joinPresence:Lorg/jivesoftware/smack/packet/Presence;

.field private maxChars:I

.field private maxStanzas:I

.field private final nickname:Lorg/jxmpp/jid/parts/Resourcepart;

.field private password:Ljava/lang/String;

.field private seconds:I

.field private since:Ljava/util/Date;

.field private timeout:J


# direct methods
.method constructor <init>(Lorg/jxmpp/jid/parts/Resourcepart;J)V
    .locals 1
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .param p2, "timeout"    # J

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->maxChars:I

    .line 86
    iput v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->maxStanzas:I

    .line 87
    iput v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->seconds:I

    .line 93
    const-string v0, "Nickname must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/parts/Resourcepart;

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->nickname:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 94
    invoke-virtual {p0, p2, p3}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->timeoutAfter(J)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    .line 81
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->nickname:Lorg/jxmpp/jid/parts/Resourcepart;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    .line 81
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    .line 81
    iget v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->maxChars:I

    return v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    .line 81
    iget v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->maxStanzas:I

    return v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    .line 81
    iget v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->seconds:I

    return v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    .line 81
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->since:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)J
    .locals 2
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    .line 81
    iget-wide v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->timeout:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;

    .line 81
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->joinPresence:Lorg/jivesoftware/smack/packet/Presence;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;
    .locals 1

    .line 209
    new-instance v0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration;-><init>(Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;)V

    return-object v0
.end method

.method public requestHistorySince(I)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    .locals 0
    .param p1, "seconds"    # I

    .line 186
    iput p1, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->seconds:I

    .line 187
    return-object p0
.end method

.method public requestHistorySince(Ljava/util/Date;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    .locals 0
    .param p1, "since"    # Ljava/util/Date;

    .line 199
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->since:Ljava/util/Date;

    .line 200
    return-object p0
.end method

.method public requestMaxCharsHistory(I)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    .locals 0
    .param p1, "maxChars"    # I

    .line 161
    iput p1, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->maxChars:I

    .line 162
    return-object p0
.end method

.method public requestMaxStanzasHistory(I)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    .locals 0
    .param p1, "maxStanzas"    # I

    .line 172
    iput p1, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->maxStanzas:I

    .line 173
    return-object p0
.end method

.method public requestNoHistory()Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    .locals 1

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->maxChars:I

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->maxStanzas:I

    .line 149
    iput v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->seconds:I

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->since:Ljava/util/Date;

    .line 151
    return-object p0
.end method

.method public timeoutAfter(J)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    .locals 2
    .param p1, "timeout"    # J

    .line 134
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 137
    iput-wide p1, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->timeout:J

    .line 138
    return-object p0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withPassword(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->password:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public withPresence(Lorg/jivesoftware/smack/packet/Presence;)Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;
    .locals 2
    .param p1, "presence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 108
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v0, v1, :cond_0

    .line 112
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MucEnterConfiguration$Builder;->joinPresence:Lorg/jivesoftware/smack/packet/Presence;

    .line 113
    return-object p0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Presence must be of type \'available\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
