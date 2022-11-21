.class Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/GameOverOverlay;->show(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/MapPrestigeConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;)V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->g(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v3

    iget v4, p1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->rank:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, p1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->success:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->h(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->total:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget v3, p1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->rank:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->i(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "leader"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    int-to-float v3, v3

    iget p1, p1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->total:I

    int-to-float p1, p1

    div-float/2addr v3, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v3, v3, p1

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result p1

    if-ge p1, v5, :cond_2

    const/4 p1, 0x1

    :cond_2
    const/16 v3, 0x64

    if-le p1, v3, :cond_3

    const/16 p1, 0x64

    :cond_3
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->i(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v3

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v4

    const-string p1, "top_percent"

    invoke-virtual {v6, p1, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->j(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->k(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->k(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->k(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->k(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    invoke-static {v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v4, v4, v0

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    mul-float v0, v0, v5

    sget-object v5, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    invoke-static {v1, v2, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    invoke-static {v2, v1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6$1;-><init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;)V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->j(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->k(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_2
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->retrieved(Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;)V

    return-void
.end method
