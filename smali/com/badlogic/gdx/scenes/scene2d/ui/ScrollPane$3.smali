.class Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)Z
    .locals 2

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-nez p3, :cond_1

    iget-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-boolean p3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-nez p3, :cond_3

    cmpl-float p3, p5, v0

    if-nez p3, :cond_3

    move p5, p4

    goto :goto_1

    :cond_2
    iget-boolean p3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz p3, :cond_3

    cmpl-float p3, p4, v0

    if-nez p3, :cond_3

    move p4, p5

    goto :goto_1

    :cond_3
    move v1, p5

    move p5, p4

    move p4, v1

    :goto_1
    iget p3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->w()F

    move-result v0

    mul-float v0, v0, p4

    add-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollY(F)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget p3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->v()F

    move-result p4

    mul-float p4, p4, p5

    add-float/2addr p3, p4

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollX(F)V

    return p2
.end method
