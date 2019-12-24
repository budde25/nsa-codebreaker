.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$VCardHelper$xN8H2Y8k9I2MDew5p91JYgbazz8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$xN8H2Y8k9I2MDew5p91JYgbazz8;->f$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iput-object p2, p0, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$xN8H2Y8k9I2MDew5p91JYgbazz8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$xN8H2Y8k9I2MDew5p91JYgbazz8;->f$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iget-object v1, p0, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$xN8H2Y8k9I2MDew5p91JYgbazz8;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/badguy/terrortime/VCardHelper;->lambda$getPublicKeys$4(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v0

    return-object v0
.end method
