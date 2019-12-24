.class synthetic Lorg/jivesoftware/smack/AbstractXMPPConnection$15;
.super Ljava/lang/Object;
.source "AbstractXMPPConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/AbstractXMPPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jivesoftware$smack$SmackConfiguration$UnknownIqRequestReplyMode:[I

.field static final synthetic $SwitchMap$org$jivesoftware$smack$XMPPConnection$FromMode:[I

.field static final synthetic $SwitchMap$org$jivesoftware$smack$iqrequest$IQRequestHandler$Mode:[I

.field static final synthetic $SwitchMap$org$jivesoftware$smack$packet$IQ$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1182
    invoke-static {}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->values()[Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$iqrequest$IQRequestHandler$Mode:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$iqrequest$IQRequestHandler$Mode:[I

    sget-object v2, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->sync:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$iqrequest$IQRequestHandler$Mode:[I

    sget-object v3, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1157
    :goto_1
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->values()[Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$SmackConfiguration$UnknownIqRequestReplyMode:[I

    :try_start_2
    sget-object v2, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$SmackConfiguration$UnknownIqRequestReplyMode:[I

    sget-object v3, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->doNotReply:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_2
    :try_start_3
    sget-object v2, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$SmackConfiguration$UnknownIqRequestReplyMode:[I

    sget-object v3, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->replyFeatureNotImplemented:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    :goto_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$SmackConfiguration$UnknownIqRequestReplyMode:[I

    sget-object v4, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->replyServiceUnavailable:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 1141
    :goto_4
    invoke-static {}, Lorg/jivesoftware/smack/packet/IQ$Type;->values()[Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$packet$IQ$Type:[I

    :try_start_5
    sget-object v3, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$packet$IQ$Type:[I

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ$Type;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :goto_5
    :try_start_6
    sget-object v3, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$packet$IQ$Type:[I

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ$Type;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    .line 721
    :goto_6
    invoke-static {}, Lorg/jivesoftware/smack/XMPPConnection$FromMode;->values()[Lorg/jivesoftware/smack/XMPPConnection$FromMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$XMPPConnection$FromMode:[I

    :try_start_7
    sget-object v3, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$XMPPConnection$FromMode:[I

    sget-object v4, Lorg/jivesoftware/smack/XMPPConnection$FromMode;->OMITTED:Lorg/jivesoftware/smack/XMPPConnection$FromMode;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection$FromMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$XMPPConnection$FromMode:[I

    sget-object v3, Lorg/jivesoftware/smack/XMPPConnection$FromMode;->USER:Lorg/jivesoftware/smack/XMPPConnection$FromMode;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection$FromMode;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$XMPPConnection$FromMode:[I

    sget-object v1, Lorg/jivesoftware/smack/XMPPConnection$FromMode;->UNCHANGED:Lorg/jivesoftware/smack/XMPPConnection$FromMode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection$FromMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    return-void
.end method
