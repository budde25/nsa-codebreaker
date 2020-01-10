.class final Lcom/badguy/terrortime/Message$1;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badguy/terrortime/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/badguy/terrortime/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/badguy/terrortime/Message;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 146
    new-instance v0, Lcom/badguy/terrortime/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/badguy/terrortime/Message;-><init>(Landroid/os/Parcel;Lcom/badguy/terrortime/Message$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/Message$1;->createFromParcel(Landroid/os/Parcel;)Lcom/badguy/terrortime/Message;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/badguy/terrortime/Message;
    .locals 1
    .param p1, "size"    # I

    .line 150
    new-array v0, p1, [Lcom/badguy/terrortime/Message;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/Message$1;->newArray(I)[Lcom/badguy/terrortime/Message;

    move-result-object p1

    return-object p1
.end method
