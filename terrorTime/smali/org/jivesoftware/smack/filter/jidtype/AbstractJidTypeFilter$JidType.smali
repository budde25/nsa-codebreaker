.class public final enum Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;
.super Ljava/lang/Enum;
.source "AbstractJidTypeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JidType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

.field public static final enum BareJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

.field public static final enum DomainBareJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

.field public static final enum DomainFullJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

.field public static final enum DomainJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

.field public static final enum EntityBareJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

.field public static final enum EntityFullJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

.field public static final enum EntityJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

.field public static final enum FullJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 56
    new-instance v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    const/4 v1, 0x0

    const-string v2, "BareJid"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->BareJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    .line 57
    new-instance v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    const/4 v2, 0x1

    const-string v3, "DomainBareJid"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->DomainBareJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    .line 58
    new-instance v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    const/4 v3, 0x2

    const-string v4, "DomainFullJid"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->DomainFullJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    .line 59
    new-instance v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    const/4 v4, 0x3

    const-string v5, "DomainJid"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->DomainJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    .line 60
    new-instance v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    const/4 v5, 0x4

    const-string v6, "EntityBareJid"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->EntityBareJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    .line 61
    new-instance v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    const/4 v6, 0x5

    const-string v7, "EntityFullJid"

    invoke-direct {v0, v7, v6}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->EntityFullJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    .line 62
    new-instance v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    const/4 v7, 0x6

    const-string v8, "EntityJid"

    invoke-direct {v0, v8, v7}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->EntityJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    .line 63
    new-instance v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    const/4 v8, 0x7

    const-string v9, "FullJid"

    invoke-direct {v0, v9, v8}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->FullJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    sget-object v9, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->BareJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    aput-object v9, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->DomainBareJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->DomainFullJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->DomainJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->EntityBareJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->EntityFullJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->EntityJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->FullJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    aput-object v1, v0, v8

    sput-object v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->$VALUES:[Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;
    .locals 1

    .line 55
    sget-object v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->$VALUES:[Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    return-object v0
.end method


# virtual methods
.method public isTypeOf(Lorg/jxmpp/jid/Jid;)Z
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 67
    if-nez p1, :cond_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    sget-object v0, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$1;->$SwitchMap$org$jivesoftware$smack$filter$jidtype$AbstractJidTypeFilter$JidType:[I

    invoke-virtual {p0}, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 84
    :pswitch_0
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->hasResource()Z

    move-result v0

    return v0

    .line 82
    :pswitch_1
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->isEntityJid()Z

    move-result v0

    return v0

    .line 80
    :pswitch_2
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->isEntityFullJid()Z

    move-result v0

    return v0

    .line 78
    :pswitch_3
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->isEntityBareJid()Z

    move-result v0

    return v0

    .line 76
    :pswitch_4
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->isDomainFullJid()Z

    move-result v0

    return v0

    .line 74
    :pswitch_5
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->isDomainBareJid()Z

    move-result v0

    return v0

    .line 72
    :pswitch_6
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->hasNoResource()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
