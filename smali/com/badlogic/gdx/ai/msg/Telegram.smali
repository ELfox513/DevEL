.class public Lcom/badlogic/gdx/ai/msg/Telegram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/badlogic/gdx/ai/msg/Telegram;",
        ">;",
        "Lcom/badlogic/gdx/utils/Pool$Poolable;"
    }
.end annotation


# static fields
.field public static final RETURN_RECEIPT_NEEDED:I = 0x1

.field public static final RETURN_RECEIPT_SENT:I = 0x2

.field public static final RETURN_RECEIPT_UNNEEDED:I


# instance fields
.field public a:F

.field public extraInfo:Ljava/lang/Object;

.field public message:I

.field public receiver:Lcom/badlogic/gdx/ai/msg/Telegraph;

.field public returnReceiptStatus:I

.field public sender:Lcom/badlogic/gdx/ai/msg/Telegraph;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/ai/msg/Telegram;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/msg/Telegram;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->a:F

    iget p1, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->a:F

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/ai/msg/Telegram;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/msg/Telegram;->compareTo(Lcom/badlogic/gdx/ai/msg/Telegram;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/badlogic/gdx/ai/msg/Telegram;

    iget v2, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->message:I

    iget v3, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->message:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->a:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->sender:Lcom/badlogic/gdx/ai/msg/Telegraph;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->sender:Lcom/badlogic/gdx/ai/msg/Telegraph;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v3, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->sender:Lcom/badlogic/gdx/ai/msg/Telegraph;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->receiver:Lcom/badlogic/gdx/ai/msg/Telegraph;

    if-nez v2, :cond_7

    iget-object p1, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->receiver:Lcom/badlogic/gdx/ai/msg/Telegraph;

    if-eqz p1, :cond_8

    return v1

    :cond_7
    iget-object p1, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->receiver:Lcom/badlogic/gdx/ai/msg/Telegraph;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public getTimestamp()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->a:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->message:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->receiver:Lcom/badlogic/gdx/ai/msg/Telegraph;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->sender:Lcom/badlogic/gdx/ai/msg/Telegraph;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->sender:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->receiver:Lcom/badlogic/gdx/ai/msg/Telegraph;

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->message:I

    iput v1, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->returnReceiptStatus:I

    iput-object v0, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->extraInfo:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->a:F

    return-void
.end method

.method public setTimestamp(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/msg/Telegram;->a:F

    return-void
.end method
