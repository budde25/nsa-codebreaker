.class public Lcom/badguy/terrortime/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/badguy/terrortime/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clientId:Lcom/badguy/terrortime/TextAppField;

.field private contactId:Lcom/badguy/terrortime/TextAppField;

.field private content:Lcom/badguy/terrortime/BlobAppField;

.field private fromClient:Z

.field private mNow:Ljava/util/Date;

.field private timestamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Lcom/badguy/terrortime/Message$1;

    invoke-direct {v0}, Lcom/badguy/terrortime/Message$1;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    .line 14
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    .line 15
    new-instance v0, Lcom/badguy/terrortime/BlobAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/BlobAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->content:Lcom/badguy/terrortime/BlobAppField;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badguy/terrortime/Message;->fromClient:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->timestamp:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/badguy/terrortime/Message;->mNow:Ljava/util/Date;

    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->mNow:Ljava/util/Date;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/badguy/terrortime/Message;->mNow:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/badguy/terrortime/Message;->timestamp:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    .line 14
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    .line 15
    new-instance v0, Lcom/badguy/terrortime/BlobAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/BlobAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->content:Lcom/badguy/terrortime/BlobAppField;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badguy/terrortime/Message;->fromClient:Z

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badguy/terrortime/Message;->timestamp:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/badguy/terrortime/Message;->mNow:Ljava/util/Date;

    .line 155
    new-instance v2, Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badguy/terrortime/TextAppField;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    .line 156
    new-instance v2, Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badguy/terrortime/TextAppField;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    .line 157
    new-instance v2, Lcom/badguy/terrortime/BlobAppField;

    invoke-direct {v2}, Lcom/badguy/terrortime/BlobAppField;-><init>()V

    iput-object v2, p0, Lcom/badguy/terrortime/Message;->content:Lcom/badguy/terrortime/BlobAppField;

    .line 158
    iget-object v2, p0, Lcom/badguy/terrortime/Message;->content:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/badguy/terrortime/Message;->fromClient:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->timestamp:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 162
    .local v2, "tmpDate":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_1
    iput-object v1, p0, Lcom/badguy/terrortime/Message;->mNow:Ljava/util/Date;

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/badguy/terrortime/Message$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/badguy/terrortime/Message$1;

    .line 11
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/badguy/terrortime/Message;)V
    .locals 6
    .param p1, "msg"    # Lcom/badguy/terrortime/Message;

    .line 27
    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContent()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [B

    iget-boolean v4, p1, Lcom/badguy/terrortime/Message;->fromClient:Z

    iget-object v5, p1, Lcom/badguy/terrortime/Message;->timestamp:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badguy/terrortime/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;
    .param p3, "fromClient"    # Z

    .line 31
    invoke-direct {p0}, Lcom/badguy/terrortime/Message;-><init>()V

    .line 32
    if-eqz p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p2}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 38
    :cond_1
    iput-boolean p3, p0, Lcom/badguy/terrortime/Message;->fromClient:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BZ)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p4, "fromClient"    # Z

    .line 42
    invoke-direct {p0}, Lcom/badguy/terrortime/Message;-><init>()V

    .line 43
    if-eqz p2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p2}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 46
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 49
    :cond_1
    if-eqz p3, :cond_2

    .line 50
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->content:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0, p3}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 52
    :cond_2
    iput-boolean p4, p0, Lcom/badguy/terrortime/Message;->fromClient:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p4, "fromClient"    # Z
    .param p5, "timestamp"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    .line 14
    new-instance v0, Lcom/badguy/terrortime/TextAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/TextAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    .line 15
    new-instance v0, Lcom/badguy/terrortime/BlobAppField;

    invoke-direct {v0}, Lcom/badguy/terrortime/BlobAppField;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->content:Lcom/badguy/terrortime/BlobAppField;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badguy/terrortime/Message;->fromClient:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/Message;->timestamp:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/badguy/terrortime/Message;->mNow:Ljava/util/Date;

    .line 55
    if-eqz p2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p2}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 61
    :cond_1
    if-eqz p3, :cond_2

    .line 62
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->content:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0, p3}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 64
    :cond_2
    iput-boolean p4, p0, Lcom/badguy/terrortime/Message;->fromClient:Z

    .line 65
    iput-object p5, p0, Lcom/badguy/terrortime/Message;->timestamp:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 109
    return v0

    .line 111
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    const-class v2, Lcom/badguy/terrortime/Message;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badguy/terrortime/Message;

    .line 116
    .local v2, "other":Lcom/badguy/terrortime/Message;
    iget-object v3, p0, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/TextAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    return v1

    .line 119
    :cond_2
    iget-object v3, p0, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    iget-object v4, v2, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v3, v4}, Lcom/badguy/terrortime/TextAppField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 120
    return v1

    .line 122
    :cond_3
    iget-boolean v3, p0, Lcom/badguy/terrortime/Message;->fromClient:Z

    iget-boolean v4, v2, Lcom/badguy/terrortime/Message;->fromClient:Z

    if-eq v3, v4, :cond_4

    .line 123
    return v1

    .line 125
    :cond_4
    return v0

    .line 112
    .end local v2    # "other":Lcom/badguy/terrortime/Message;
    :cond_5
    :goto_0
    return v1
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContactId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContent()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->content:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public final getCreatedAt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->timestamp:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final getCreationDate()Ljava/util/Date;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->mNow:Ljava/util/Date;

    return-object v0
.end method

.method public final isFromClient()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/badguy/terrortime/Message;->fromClient:Z

    return v0
.end method

.method public final setClientId(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final setContactId(Ljava/lang/String;)V
    .locals 1
    .param p1, "contactId"    # Ljava/lang/String;

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/TextAppField;->setValue(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public final setContent([B)V
    .locals 1
    .param p1, "content"    # [B

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->content:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 96
    :cond_0
    return-void
.end method

.method public final setFromClient(Z)V
    .locals 0
    .param p1, "fromClient"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/badguy/terrortime/Message;->fromClient:Z

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->contactId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->clientId:Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->content:Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 138
    iget-boolean v0, p0, Lcom/badguy/terrortime/Message;->fromClient:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/badguy/terrortime/Message;->mNow:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    return-void
.end method
