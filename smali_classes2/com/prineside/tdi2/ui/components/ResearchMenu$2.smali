.class Lcom/prineside/tdi2/ui/components/ResearchMenu$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/ResearchMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/screens/ResearchesScreen;

.field public final synthetic p:Lcom/prineside/tdi2/ui/components/ResearchMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->o:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 4

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->o:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ResearchManager;->getCurrentResearching()Lcom/prineside/tdi2/Research;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->o:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object p2, p2, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ResearchManager;->getMillisToResearchingEnd()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->countAcceleratorsNeeded(I)I

    move-result p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->removeAccelerators(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "not_enough_accelerators"

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ResearchManager;->finishCurrentResearch()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/prineside/tdi2/Research;->isMaxNormalLevel()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->o:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    iget-object p1, p1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    sget-object p2, Lcom/prineside/tdi2/enums/ResearchType;->DEVELOPER_MODE:Lcom/prineside/tdi2/enums/ResearchType;

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "disable_developer_mode_hint"

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/prineside/tdi2/ui/components/ResearchMenu$2$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/ui/components/ResearchMenu$2$1;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu$2;)V

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->savedGameExists()Z

    move-result p2

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->o:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object p2, p2, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    if-eqz p2, :cond_4

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->tryStartResearching(Lcom/prineside/tdi2/Research;ZLcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "saved_game_will_be_lost_confirm"

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2$2;

    invoke-direct {v0, p0, p1}, Lcom/prineside/tdi2/ui/components/ResearchMenu$2$2;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu$2;Ljava/lang/Runnable;)V

    invoke-virtual {p3, p2, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-static {p2, p1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->h(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_0
    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->e(Lcom/prineside/tdi2/ui/components/ResearchMenu;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->f(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V

    :cond_0
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->e(Lcom/prineside/tdi2/ui/components/ResearchMenu;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->f(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V

    :cond_0
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->g(Lcom/prineside/tdi2/ui/components/ResearchMenu;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->f(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result p1

    return p1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->g(Lcom/prineside/tdi2/ui/components/ResearchMenu;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->f(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    return-void
.end method
