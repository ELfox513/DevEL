.class public Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->a:Ljava/lang/String;

    :cond_0
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->b:F

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->c:F

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->d:F

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->e:F

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->f:F

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->g:F

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 0

    return-void
.end method

.method public getBottomHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->e:F

    return v0
.end method

.method public getLeftWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->b:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->g:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->f:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRightWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->c:F

    return v0
.end method

.method public getTopHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->d:F

    return v0
.end method

.method public setBottomHeight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->e:F

    return-void
.end method

.method public setLeftWidth(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->b:F

    return-void
.end method

.method public setMinHeight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->g:F

    return-void
.end method

.method public setMinSize(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setMinWidth(F)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setMinHeight(F)V

    return-void
.end method

.method public setMinWidth(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->f:F

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->a:Ljava/lang/String;

    return-void
.end method

.method public setPadding(FFFF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setTopHeight(F)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setLeftWidth(F)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setBottomHeight(F)V

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setRightWidth(F)V

    return-void
.end method

.method public setRightWidth(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->c:F

    return-void
.end method

.method public setTopHeight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->d:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
