.class Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;
.super Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/ProfileSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationLevelUpStage"
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

.field public newLevel:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V
    .locals 2

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary$1;)V

    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->duration:J

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->e()V

    return-void
.end method

.method private synthetic e()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->h(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->newLevel:I

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->getProfileLevelTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->h(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v3, v3, v1

    const/high16 v4, 0x42400000    # 48.0f

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v4}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 6

    iget-wide v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->duration:J

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->m(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->m(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v0

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    mul-float v4, v4, v0

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->f(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->f(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v1

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v3

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v1

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v3

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->h(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->b:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->h(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v0, v0, v2

    const/4 v2, 0x0

    invoke-static {v2, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    new-instance v2, Lcom/prineside/tdi2/ui/shared/s1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/shared/s1;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;)V

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v3, v4

    sget-object v2, Lcom/badlogic/gdx/math/Interpolation;->pow2In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v5

    invoke-static {v4, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method
