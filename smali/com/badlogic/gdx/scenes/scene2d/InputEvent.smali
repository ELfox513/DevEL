.class public Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
.super Lcom/badlogic/gdx/scenes/scene2d/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    }
.end annotation


# instance fields
.field public A:I

.field public B:C

.field public C:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public D:Z

.field public t:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->D:Z

    return-void
.end method


# virtual methods
.method public getButton()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->z:I

    return v0
.end method

.method public getCharacter()C
    .locals 1

    iget-char v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->B:C

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->A:I

    return v0
.end method

.method public getPointer()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->y:I

    return v0
.end method

.method public getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->C:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getScrollAmountX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->w:F

    return v0
.end method

.method public getScrollAmountY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->x:F

    return v0
.end method

.method public getStageX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->u:F

    return v0
.end method

.method public getStageY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->v:F

    return v0
.end method

.method public getTouchFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->D:Z

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->t:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-object v0
.end method

.method public isTouchFocusCancel()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->u:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->v:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->C:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->z:I

    return-void
.end method

.method public setButton(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->z:I

    return-void
.end method

.method public setCharacter(C)V
    .locals 0

    iput-char p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->B:C

    return-void
.end method

.method public setKeyCode(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->A:I

    return-void
.end method

.method public setPointer(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->y:I

    return-void
.end method

.method public setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->C:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setScrollAmountX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->w:F

    return-void
.end method

.method public setScrollAmountY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->x:F

    return-void
.end method

.method public setStageX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->u:F

    return-void
.end method

.method public setStageY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->v:F

    return-void
.end method

.method public setTouchFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->D:Z

    return-void
.end method

.method public setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->t:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-void
.end method

.method public toCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->u:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->v:F

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->t:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
