.class Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    const/high16 v0, 0x41f00000    # 30.0f

    sub-float/2addr p1, v0

    const/high16 v0, 0x440c0000    # 560.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->a(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->setSelectedCount(I)V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->setSelectedCount(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->a(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->a(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    const/16 v0, 0x2710

    if-le p1, v0, :cond_2

    int-to-float p1, p1

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x32

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_3

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->setSelectedCount(I)V

    :goto_1
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;->a(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;->a(F)V

    return-void
.end method
