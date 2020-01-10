.class public Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;
.super Ljava/lang/Exception;
.source "JidUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jxmpp/jid/util/JidUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotAEntityBareJidStringException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x17bc839b2f5bb6aaL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 156
    return-void
.end method
