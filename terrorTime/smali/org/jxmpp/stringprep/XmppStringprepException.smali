.class public Lorg/jxmpp/stringprep/XmppStringprepException;
.super Ljava/io/IOException;
.source "XmppStringprepException.java"


# static fields
.field private static final serialVersionUID:J = -0x75d91f80b9321b90L


# instance fields
.field private final causingString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "causingString"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XmppStringprepException caused by \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2}, Lorg/jxmpp/stringprep/XmppStringprepException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 42
    iput-object p1, p0, Lorg/jxmpp/stringprep/XmppStringprepException;->causingString:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "causingString"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lorg/jxmpp/stringprep/XmppStringprepException;->causingString:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getCausingString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jxmpp/stringprep/XmppStringprepException;->causingString:Ljava/lang/String;

    return-object v0
.end method
