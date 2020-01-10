.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$ContactList$VP9Vi6dnBqtMmiP_oVVUGWH3Gxo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$VP9Vi6dnBqtMmiP_oVVUGWH3Gxo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$ContactList$VP9Vi6dnBqtMmiP_oVVUGWH3Gxo;

    invoke-direct {v0}, Lcom/badguy/terrortime/-$$Lambda$ContactList$VP9Vi6dnBqtMmiP_oVVUGWH3Gxo;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/-$$Lambda$ContactList$VP9Vi6dnBqtMmiP_oVVUGWH3Gxo;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$VP9Vi6dnBqtMmiP_oVVUGWH3Gxo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/jxmpp/jid/parts/Localpart;

    invoke-static {p1}, Lcom/badguy/terrortime/ContactList;->lambda$VP9Vi6dnBqtMmiP_oVVUGWH3Gxo(Lorg/jxmpp/jid/parts/Localpart;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
