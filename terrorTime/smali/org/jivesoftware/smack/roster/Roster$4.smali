.class Lorg/jivesoftware/smack/roster/Roster$4;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/roster/Roster;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/roster/Roster;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/roster/Roster;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 343
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/Roster$4;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 1
    .param p1, "stanzav"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster$4;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/Roster;->access$600(Lorg/jivesoftware/smack/roster/Roster;)V

    .line 352
    return-void
.end method
