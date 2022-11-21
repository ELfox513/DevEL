.class public Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore$Factory;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;->a:Ljava/lang/String;

    iput p2, p0, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;->c:I

    return-void
.end method


# virtual methods
.method public acquire()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;->acquire(I)Z

    move-result v0

    return v0
.end method

.method public acquire(I)Z
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;->c:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;->b:I

    if-gt v1, v2, :cond_0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;->c:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public release()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;->release(I)Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;->c:I

    sub-int v1, v0, p1

    if-ltz v1, :cond_0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;->c:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
