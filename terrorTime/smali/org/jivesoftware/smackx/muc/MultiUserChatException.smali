.class public abstract Lorg/jivesoftware/smackx/muc/MultiUserChatException;
.super Lorg/jivesoftware/smack/SmackException;
.source "MultiUserChatException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;,
        Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucConfigurationNotSupportedException;,
        Lorg/jivesoftware/smackx/muc/MultiUserChatException$MissingMucCreationAcknowledgeException;,
        Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucNotJoinedException;,
        Lorg/jivesoftware/smackx/muc/MultiUserChatException$MucAlreadyJoinedException;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackException;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
