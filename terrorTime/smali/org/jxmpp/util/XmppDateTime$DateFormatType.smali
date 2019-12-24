.class final enum Lorg/jxmpp/util/XmppDateTime$DateFormatType;
.super Ljava/lang/Enum;
.source "XmppDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jxmpp/util/XmppDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DateFormatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jxmpp/util/XmppDateTime$DateFormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field public static final enum XEP_0082_DATETIME_MILLIS_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field public static final enum XEP_0082_DATETIME_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field public static final enum XEP_0082_DATE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field public static final enum XEP_0082_TIME_MILLIS_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field public static final enum XEP_0082_TIME_MILLIS_ZONE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field public static final enum XEP_0082_TIME_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field public static final enum XEP_0082_TIME_ZONE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field public static final enum XEP_0091_DATETIME:Lorg/jxmpp/util/XmppDateTime$DateFormatType;


# instance fields
.field private final CONVERT_TIMEZONE:Z

.field private final FORMATTER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final FORMAT_STRING:Ljava/lang/String;

.field private final HANDLE_MILLIS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 100
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    const/4 v1, 0x0

    const-string v2, "XEP_0082_DATE_PROFILE"

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1, v3}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_DATE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 101
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    const/4 v2, 0x1

    const-string v3, "XEP_0082_DATETIME_PROFILE"

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v3, v2, v4}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_DATETIME_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 102
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    const/4 v3, 0x2

    const-string v4, "XEP_0082_DATETIME_MILLIS_PROFILE"

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v4, v3, v5}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_DATETIME_MILLIS_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 103
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    const/4 v4, 0x3

    const-string v5, "XEP_0082_TIME_PROFILE"

    const-string v6, "hh:mm:ss"

    invoke-direct {v0, v5, v4, v6}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 104
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    const/4 v5, 0x4

    const-string v6, "XEP_0082_TIME_ZONE_PROFILE"

    const-string v7, "hh:mm:ssZ"

    invoke-direct {v0, v6, v5, v7}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_ZONE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 105
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    const/4 v6, 0x5

    const-string v7, "XEP_0082_TIME_MILLIS_PROFILE"

    const-string v8, "hh:mm:ss.SSS"

    invoke-direct {v0, v7, v6, v8}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_MILLIS_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 106
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    const/4 v7, 0x6

    const-string v8, "XEP_0082_TIME_MILLIS_ZONE_PROFILE"

    const-string v9, "hh:mm:ss.SSSZ"

    invoke-direct {v0, v8, v7, v9}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_MILLIS_ZONE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 107
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    const/4 v8, 0x7

    const-string v9, "XEP_0091_DATETIME"

    const-string v10, "yyyyMMdd\'T\'HH:mm:ss"

    invoke-direct {v0, v9, v8, v10}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0091_DATETIME:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 97
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    sget-object v9, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_DATE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    aput-object v9, v0, v1

    sget-object v1, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_DATETIME_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_DATETIME_MILLIS_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_ZONE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_MILLIS_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_MILLIS_ZONE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0091_DATETIME:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    aput-object v1, v0, v8

    sput-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->$VALUES:[Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "dateFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput-object p3, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->FORMAT_STRING:Ljava/lang/String;

    .line 125
    new-instance p1, Lorg/jxmpp/util/XmppDateTime$DateFormatType$1;

    invoke-direct {p1, p0}, Lorg/jxmpp/util/XmppDateTime$DateFormatType$1;-><init>(Lorg/jxmpp/util/XmppDateTime$DateFormatType;)V

    iput-object p1, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->FORMATTER:Ljava/lang/ThreadLocal;

    .line 133
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->CONVERT_TIMEZONE:Z

    .line 134
    const-string p1, "SSS"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->HANDLE_MILLIS:Z

    .line 135
    return-void
.end method

.method static synthetic access$100(Lorg/jxmpp/util/XmppDateTime$DateFormatType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 98
    iget-object v0, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->FORMAT_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jxmpp/util/XmppDateTime$DateFormatType;Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lorg/jxmpp/util/XmppDateTime$DateFormatType;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/jxmpp/util/XmppDateTime$DateFormatType;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jxmpp/util/XmppDateTime$DateFormatType;
    .param p1, "x1"    # Ljava/util/Date;

    .line 98
    invoke-direct {p0, p1}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .line 138
    iget-object v0, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->FORMATTER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "res":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->CONVERT_TIMEZONE:Z

    if-eqz v1, :cond_0

    .line 140
    invoke-static {v0}, Lorg/jxmpp/util/XmppDateTime;->convertRfc822TimezoneToXep82(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    return-object v0
.end method

.method private parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 146
    iget-boolean v0, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->CONVERT_TIMEZONE:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p1}, Lorg/jxmpp/util/XmppDateTime;->convertXep82TimezoneToRfc822(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_0
    iget-boolean v0, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->HANDLE_MILLIS:Z

    if-eqz v0, :cond_1

    .line 150
    invoke-static {p1}, Lorg/jxmpp/util/XmppDateTime;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->FORMATTER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jxmpp/util/XmppDateTime$DateFormatType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 97
    const-class v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    return-object v0
.end method

.method public static values()[Lorg/jxmpp/util/XmppDateTime$DateFormatType;
    .locals 1

    .line 97
    sget-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->$VALUES:[Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-virtual {v0}, [Lorg/jxmpp/util/XmppDateTime$DateFormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    return-object v0
.end method
