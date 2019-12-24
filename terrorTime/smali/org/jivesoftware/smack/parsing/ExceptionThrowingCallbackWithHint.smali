.class public Lorg/jivesoftware/smack/parsing/ExceptionThrowingCallbackWithHint;
.super Lorg/jivesoftware/smack/parsing/ExceptionThrowingCallback;
.source "ExceptionThrowingCallbackWithHint.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/jivesoftware/smack/parsing/ExceptionThrowingCallbackWithHint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/parsing/ExceptionThrowingCallbackWithHint;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/jivesoftware/smack/parsing/ExceptionThrowingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUnparsableStanza(Lorg/jivesoftware/smack/UnparseableStanza;)V
    .locals 2
    .param p1, "packetData"    # Lorg/jivesoftware/smack/UnparseableStanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    sget-object v0, Lorg/jivesoftware/smack/parsing/ExceptionThrowingCallbackWithHint;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Parsing exception encountered. This exception will be re-thrown, leading to a disconnect. You can change this behavior by setting a different ParsingExceptionCallback using setParsingExceptionCallback(). More information an be found in AbstractXMPPConnection\'s javadoc."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/parsing/ExceptionThrowingCallback;->handleUnparsableStanza(Lorg/jivesoftware/smack/UnparseableStanza;)V

    .line 42
    return-void
.end method
