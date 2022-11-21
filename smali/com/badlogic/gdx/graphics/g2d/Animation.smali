.class public Lcom/badlogic/gdx/graphics/g2d/Animation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:I

.field public e:F

.field public f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;


# direct methods
.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->b:F

    iget-object p1, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;",
            "Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Animation;-><init>(FLcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g2d/Animation;->setPlayMode(Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V

    return-void
.end method

.method public varargs constructor <init>(F[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F[TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->b:F

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/Animation;->a([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    array-length p1, p1

    int-to-float p1, p1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->b:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->c:F

    return-void
.end method

.method public getAnimationDuration()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->c:F

    return v0
.end method

.method public getFrameDuration()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->b:F

    return v0
.end method

.method public getKeyFrame(F)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrameIndex(F)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getKeyFrame(FZ)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eqz p2, :cond_2

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq v0, v1, :cond_0

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-ne v0, v2, :cond_2

    :cond_0
    if-ne v0, v1, :cond_1

    sget-object p2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    sget-object p2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq v0, p2, :cond_4

    sget-object p2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq v0, p2, :cond_4

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-ne v0, v1, :cond_3

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(F)Ljava/lang/Object;

    move-result-object p1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-object p1
.end method

.method public getKeyFrameIndex(F)I
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->b:F

    div-float v0, p1, v0

    float-to-int v0, v0

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/Animation$1;->a:[I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    array-length v3, v1

    rem-int/2addr v0, v3

    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->e:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->b:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->d:I

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x2

    rem-int/2addr v0, v2

    array-length v2, v1

    if-lt v0, v2, :cond_2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    array-length v1, v1

    sub-int/2addr v0, v1

    sub-int v0, v2, v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    array-length v1, v1

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->d:I

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->e:F

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyFrames()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public getPlayMode()Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-object v0
.end method

.method public isAnimationFinished(F)Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->b:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setFrameDuration(F)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->b:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->a:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->c:F

    return-void
.end method

.method public setPlayMode(Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->f:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-void
.end method
