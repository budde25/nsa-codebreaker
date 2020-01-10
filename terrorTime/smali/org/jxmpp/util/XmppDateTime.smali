.class public Lorg/jxmpp/util/XmppDateTime;
.super Ljava/lang/Object;
.source "XmppDateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jxmpp/util/XmppDateTime$PatternCouplings;,
        Lorg/jxmpp/util/XmppDateTime$DateFormatType;
    }
.end annotation


# static fields
.field private static final SECOND_FRACTION:Ljava/util/regex/Pattern;

.field private static final TIME_ZONE_UTC:Ljava/util/TimeZone;

.field private static final couplings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jxmpp/util/XmppDateTime$PatternCouplings;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field private static final datePattern:Ljava/util/regex/Pattern;

.field private static final dateTimeFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field private static final dateTimeNoMillisFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field private static final dateTimeNoMillisPattern:Ljava/util/regex/Pattern;

.field private static final dateTimePattern:Ljava/util/regex/Pattern;

.field private static final timeFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field private static final timeNoMillisFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field private static final timeNoMillisNoZoneFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field private static final timeNoMillisNoZonePattern:Ljava/util/regex/Pattern;

.field private static final timeNoMillisPattern:Ljava/util/regex/Pattern;

.field private static final timeNoZoneFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

.field private static final timeNoZonePattern:Ljava/util/regex/Pattern;

.field private static final timePattern:Ljava/util/regex/Pattern;

.field private static final xep0091Date6DigitFormatter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final xep0091Date7Digit1MonthFormatter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final xep0091Date7Digit2MonthFormatter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final xep0091Formatter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final xep0091Pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    sget-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_DATE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->dateFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 40
    const-string v0, "^\\d+-\\d+-\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->datePattern:Ljava/util/regex/Pattern;

    .line 42
    sget-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_MILLIS_ZONE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->timeFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 43
    const-string v0, "^(\\d+:){2}\\d+.\\d+(Z|([+-](\\d+:\\d+)))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->timePattern:Ljava/util/regex/Pattern;

    .line 44
    sget-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_MILLIS_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->timeNoZoneFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 45
    const-string v0, "^(\\d+:){2}\\d+.\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->timeNoZonePattern:Ljava/util/regex/Pattern;

    .line 47
    sget-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_ZONE_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->timeNoMillisFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 48
    const-string v0, "^(\\d+:){2}\\d+(Z|([+-](\\d+:\\d+)))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->timeNoMillisPattern:Ljava/util/regex/Pattern;

    .line 49
    sget-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_TIME_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->timeNoMillisNoZoneFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 50
    const-string v0, "^(\\d+:){2}\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->timeNoMillisNoZonePattern:Ljava/util/regex/Pattern;

    .line 52
    sget-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_DATETIME_MILLIS_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->dateTimeFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 53
    nop

    .line 54
    const-string v0, "^\\d+(-\\d+){2}+T(\\d+:){2}\\d+.\\d+(Z|([+-](\\d+:\\d+)))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->dateTimePattern:Ljava/util/regex/Pattern;

    .line 55
    sget-object v0, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->XEP_0082_DATETIME_PROFILE:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->dateTimeNoMillisFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    .line 56
    nop

    .line 57
    const-string v0, "^\\d+(-\\d+){2}+T(\\d+:){2}\\d+(Z|([+-](\\d+:\\d+)))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->dateTimeNoMillisPattern:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->TIME_ZONE_UTC:Ljava/util/TimeZone;

    .line 61
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$1;

    invoke-direct {v0}, Lorg/jxmpp/util/XmppDateTime$1;-><init>()V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->xep0091Formatter:Ljava/lang/ThreadLocal;

    .line 69
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$2;

    invoke-direct {v0}, Lorg/jxmpp/util/XmppDateTime$2;-><init>()V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->xep0091Date6DigitFormatter:Ljava/lang/ThreadLocal;

    .line 77
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$3;

    invoke-direct {v0}, Lorg/jxmpp/util/XmppDateTime$3;-><init>()V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->xep0091Date7Digit1MonthFormatter:Ljava/lang/ThreadLocal;

    .line 86
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$4;

    invoke-direct {v0}, Lorg/jxmpp/util/XmppDateTime$4;-><init>()V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->xep0091Date7Digit2MonthFormatter:Ljava/lang/ThreadLocal;

    .line 95
    const-string v0, "^\\d+T\\d+:\\d+:\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->xep0091Pattern:Ljava/util/regex/Pattern;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->couplings:Ljava/util/List;

    .line 159
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->couplings:Ljava/util/List;

    new-instance v1, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;

    sget-object v2, Lorg/jxmpp/util/XmppDateTime;->datePattern:Ljava/util/regex/Pattern;

    sget-object v3, Lorg/jxmpp/util/XmppDateTime;->dateFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-direct {v1, v2, v3}, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;-><init>(Ljava/util/regex/Pattern;Lorg/jxmpp/util/XmppDateTime$DateFormatType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->couplings:Ljava/util/List;

    new-instance v1, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;

    sget-object v2, Lorg/jxmpp/util/XmppDateTime;->dateTimePattern:Ljava/util/regex/Pattern;

    sget-object v3, Lorg/jxmpp/util/XmppDateTime;->dateTimeFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-direct {v1, v2, v3}, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;-><init>(Ljava/util/regex/Pattern;Lorg/jxmpp/util/XmppDateTime$DateFormatType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->couplings:Ljava/util/List;

    new-instance v1, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;

    sget-object v2, Lorg/jxmpp/util/XmppDateTime;->dateTimeNoMillisPattern:Ljava/util/regex/Pattern;

    sget-object v3, Lorg/jxmpp/util/XmppDateTime;->dateTimeNoMillisFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-direct {v1, v2, v3}, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;-><init>(Ljava/util/regex/Pattern;Lorg/jxmpp/util/XmppDateTime$DateFormatType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->couplings:Ljava/util/List;

    new-instance v1, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;

    sget-object v2, Lorg/jxmpp/util/XmppDateTime;->timePattern:Ljava/util/regex/Pattern;

    sget-object v3, Lorg/jxmpp/util/XmppDateTime;->timeFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-direct {v1, v2, v3}, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;-><init>(Ljava/util/regex/Pattern;Lorg/jxmpp/util/XmppDateTime$DateFormatType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->couplings:Ljava/util/List;

    new-instance v1, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;

    sget-object v2, Lorg/jxmpp/util/XmppDateTime;->timeNoZonePattern:Ljava/util/regex/Pattern;

    sget-object v3, Lorg/jxmpp/util/XmppDateTime;->timeNoZoneFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-direct {v1, v2, v3}, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;-><init>(Ljava/util/regex/Pattern;Lorg/jxmpp/util/XmppDateTime$DateFormatType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->couplings:Ljava/util/List;

    new-instance v1, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;

    sget-object v2, Lorg/jxmpp/util/XmppDateTime;->timeNoMillisPattern:Ljava/util/regex/Pattern;

    sget-object v3, Lorg/jxmpp/util/XmppDateTime;->timeNoMillisFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-direct {v1, v2, v3}, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;-><init>(Ljava/util/regex/Pattern;Lorg/jxmpp/util/XmppDateTime$DateFormatType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->couplings:Ljava/util/List;

    new-instance v1, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;

    sget-object v2, Lorg/jxmpp/util/XmppDateTime;->timeNoMillisNoZonePattern:Ljava/util/regex/Pattern;

    sget-object v3, Lorg/jxmpp/util/XmppDateTime;->timeNoMillisNoZoneFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-direct {v1, v2, v3}, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;-><init>(Ljava/util/regex/Pattern;Lorg/jxmpp/util/XmppDateTime$DateFormatType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v0, ".*\\.(\\d{1,})(Z|((\\+|-)\\d{4}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jxmpp/util/XmppDateTime;->SECOND_FRACTION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/TimeZone;
    .locals 1

    .line 37
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->TIME_ZONE_UTC:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 37
    invoke-static {p0}, Lorg/jxmpp/util/XmppDateTime;->handleMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static asString(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 6
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    .line 285
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 286
    .local v0, "rawOffset":I
    const v1, 0x36ee80

    div-int v1, v0, v1

    .line 287
    .local v1, "hours":I
    const v2, 0xea60

    div-int v2, v0, v2

    mul-int/lit8 v3, v1, 0x3c

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 288
    .local v2, "minutes":I
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "%+d:%02d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static convertRfc822TimezoneToXep82(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dateString"    # Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 272
    .local v0, "length":I
    add-int/lit8 v1, v0, -0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "res":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    return-object v1
.end method

.method public static convertXep82TimezoneToRfc822(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dateString"    # Ljava/lang/String;

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 254
    const-string v0, "Z"

    const-string v1, "+0000"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    const-string v0, "([\\+\\-]\\d\\d):(\\d\\d)"

    const-string v1, "$1$2"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static determineNearestDate(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/Calendar;
    .locals 1
    .param p0, "now"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .line 393
    .local p1, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Calendar;>;"
    new-instance v0, Lorg/jxmpp/util/XmppDateTime$5;

    invoke-direct {v0, p0}, Lorg/jxmpp/util/XmppDateTime$5;-><init>(Ljava/util/Calendar;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 404
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method private static varargs filterDatesBefore(Ljava/util/Calendar;[Ljava/util/Calendar;)Ljava/util/List;
    .locals 5
    .param p0, "now"    # Ljava/util/Calendar;
    .param p1, "dates"    # [Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "[",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Calendar;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 333
    .local v3, "calendar":Ljava/util/Calendar;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v3    # "calendar":Ljava/util/Calendar;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_1
    return-object v0
.end method

.method public static formatXEP0082Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .line 241
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->dateTimeFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-static {v0, p0}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->access$400(Lorg/jxmpp/util/XmppDateTime$DateFormatType;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleDateWithMissingLeadingZeros(Ljava/lang/String;I)Ljava/util/Date;
    .locals 5
    .param p0, "stampString"    # Ljava/lang/String;
    .param p1, "dateLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 304
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 305
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->xep0091Date6DigitFormatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 307
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 309
    .local v0, "now":Ljava/util/Calendar;
    sget-object v1, Lorg/jxmpp/util/XmppDateTime;->xep0091Date7Digit1MonthFormatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;

    invoke-static {p0, v1}, Lorg/jxmpp/util/XmppDateTime;->parseXEP91Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object v1

    .line 310
    .local v1, "oneDigitMonth":Ljava/util/Calendar;
    sget-object v2, Lorg/jxmpp/util/XmppDateTime;->xep0091Date7Digit2MonthFormatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DateFormat;

    invoke-static {p0, v2}, Lorg/jxmpp/util/XmppDateTime;->parseXEP91Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object v2

    .line 312
    .local v2, "twoDigitMonth":Ljava/util/Calendar;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/Calendar;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lorg/jxmpp/util/XmppDateTime;->filterDatesBefore(Ljava/util/Calendar;[Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v3

    .line 314
    .local v3, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Calendar;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 315
    invoke-static {v0, v3}, Lorg/jxmpp/util/XmppDateTime;->determineNearestDate(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    return-object v4

    .line 317
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method private static handleMilliseconds(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "dateString"    # Ljava/lang/String;

    .line 360
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->SECOND_FRACTION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 361
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    return-object p0

    .line 366
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 367
    .local v2, "fractionalSecondsDigitCount":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 369
    return-object p0

    .line 373
    :cond_1
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 374
    .local v4, "posDecimal":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/2addr v6, v3

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 375
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    if-le v2, v3, :cond_2

    .line 377
    add-int/lit8 v3, v4, 0x4

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 380
    :cond_2
    add-int v7, v4, v2

    add-int/2addr v7, v1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    move v6, v2

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 383
    const/16 v7, 0x30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 387
    .end local v6    # "i":I
    :cond_3
    :goto_1
    add-int v3, v4, v2

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 211
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->xep0091Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 217
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    const-string v1, "T"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 220
    .local v1, "length":I
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 221
    invoke-static {p0, v1}, Lorg/jxmpp/util/XmppDateTime;->handleDateWithMissingLeadingZeros(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v2

    .line 223
    .local v2, "date":Ljava/util/Date;
    if-eqz v2, :cond_0

    .line 224
    return-object v2

    .line 225
    .end local v2    # "date":Ljava/util/Date;
    :cond_0
    goto :goto_0

    .line 226
    :cond_1
    sget-object v2, Lorg/jxmpp/util/XmppDateTime;->xep0091Formatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DateFormat;

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 230
    .end local v1    # "length":I
    :cond_2
    :goto_0
    invoke-static {p0}, Lorg/jxmpp/util/XmppDateTime;->parseXEP0082Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static parseXEP0082Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 180
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->couplings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;

    .line 181
    .local v1, "coupling":Lorg/jxmpp/util/XmppDateTime$PatternCouplings;
    iget-object v2, v1, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 183
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v0, v1, Lorg/jxmpp/util/XmppDateTime$PatternCouplings;->formatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-static {v0, p0}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->access$300(Lorg/jxmpp/util/XmppDateTime$DateFormatType;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 186
    .end local v1    # "coupling":Lorg/jxmpp/util/XmppDateTime$PatternCouplings;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    sget-object v0, Lorg/jxmpp/util/XmppDateTime;->dateTimeNoMillisFormatter:Lorg/jxmpp/util/XmppDateTime$DateFormatType;

    invoke-static {v0, p0}, Lorg/jxmpp/util/XmppDateTime$DateFormatType;->access$300(Lorg/jxmpp/util/XmppDateTime$DateFormatType;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static parseXEP91Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;
    .locals 2
    .param p0, "stampString"    # Ljava/lang/String;
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .line 322
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 323
    invoke-virtual {p1}, Ljava/text/DateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    return-object v1
.end method
