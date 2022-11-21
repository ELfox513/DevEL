.class Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;
.super Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/ProfileSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationGiveXpStage"
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

.field public baseXpLine:I

.field public endBaseXpLabel:I

.field public endBonusXpLabel:I

.field public endBonusXpLine:I

.field public endRegularXpLabel:I

.field public endRegularXpLine:I

.field public fadeInBonus:Z

.field public startBaseXpLabel:I

.field public startBonusXpLabel:I

.field public startBonusXpLine:I

.field public startRegularXpLabel:I

.field public startRegularXpLine:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V
    .locals 2

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary$1;)V

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->duration:J

    return-void
.end method


# virtual methods
.method public draw(F)V
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v0, v0, Lcom/prineside/tdi2/managers/AuthManager;->nextLevelXp:I

    int-to-float v0, v0

    const/high16 v1, 0x43220000    # 162.0f

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->m(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    iget v2, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->baseXpLine:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startRegularXpLine:I

    int-to-float v2, v0

    iget v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endRegularXpLine:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v0, v0, p1

    add-float/2addr v2, v0

    mul-float v2, v2, v1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->m(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->f(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    iget v2, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBonusXpLine:I

    int-to-float v4, v2

    iget v5, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endBonusXpLine:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float v2, v2, p1

    add-float/2addr v4, v2

    mul-float v4, v4, v1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->f(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->m(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBaseXpLabel:I

    int-to-float v1, v0

    iget v2, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endBaseXpLabel:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v1, v1, Lcom/prineside/tdi2/managers/AuthManager;->nextLevelXp:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, " XP"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->g(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startRegularXpLabel:I

    int-to-float v3, v0

    iget v4, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endRegularXpLabel:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float v0, v0, p1

    add-float/2addr v3, v0

    float-to-int v0, v3

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->j(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBonusXpLabel:I

    int-to-float v1, v0

    iget v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endBonusXpLabel:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const-string v0, " bonus XP"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public start()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->j(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v3, "+"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startRegularXpLabel:I

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v4, " XP"

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->j(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBonusXpLabel:I

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v2, " bonus XP"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->fadeInBonus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->j(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->j(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3eb851ec    # 0.36f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v2

    const/high16 v4, 0x43720000    # 242.0f

    const/high16 v5, 0x41f80000    # 31.0f

    invoke-static {v4, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->m(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->m(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->f(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->f(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
