.class public interface abstract Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;
.super Ljava/lang/Object;
.source "MarkupElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MarkupChildElement"
.end annotation


# static fields
.field public static final ATTR_END:Ljava/lang/String; = "end"

.field public static final ATTR_START:Ljava/lang/String; = "start"


# virtual methods
.method public abstract getEnd()I
.end method

.method public abstract getStart()I
.end method
