.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$ContactList$09gMaIPFwd-9UDclAHTGVNxlQOs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$09gMaIPFwd-9UDclAHTGVNxlQOs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$ContactList$09gMaIPFwd-9UDclAHTGVNxlQOs;

    invoke-direct {v0}, Lcom/badguy/terrortime/-$$Lambda$ContactList$09gMaIPFwd-9UDclAHTGVNxlQOs;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/-$$Lambda$ContactList$09gMaIPFwd-9UDclAHTGVNxlQOs;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$09gMaIPFwd-9UDclAHTGVNxlQOs;

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

    check-cast p1, Lorg/jivesoftware/smack/roster/RosterEntry;

    invoke-static {p1}, Lcom/badguy/terrortime/ContactList;->lambda$09gMaIPFwd-9UDclAHTGVNxlQOs(Lorg/jivesoftware/smack/roster/RosterEntry;)Lorg/jxmpp/jid/BareJid;

    move-result-object p1

    return-object p1
.end method
