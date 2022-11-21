.class Lcom/prineside/tdi2/ui/components/ResearchMenu$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/ResearchMenu$2;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/ResearchMenu$2;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2$1;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/ui/components/ResearchMenu$2$1;->b(Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/ResearchManager;->tryStartResearching(Lcom/prineside/tdi2/Research;ZLcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object p0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->startResearching(Lcom/prineside/tdi2/Research;Z)Z
    :try_end_0
    .catch Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2$1;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu$2;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->o:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/prineside/tdi2/managers/ResearchManager;->tryStartResearching(Lcom/prineside/tdi2/Research;ZLcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2$1;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu$2;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->o:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    iget-object v1, v0, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    sget-object v2, Lcom/prineside/tdi2/enums/ResearchType;->DEVELOPER_MODE:Lcom/prineside/tdi2/enums/ResearchType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "enable_developer_mode_confirm"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2$1;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu$2;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->o:Lcom/prineside/tdi2/screens/ResearchesScreen;

    new-instance v4, Lcom/prineside/tdi2/ui/components/y;

    invoke-direct {v4, v2}, Lcom/prineside/tdi2/ui/components/y;-><init>(Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    invoke-virtual {v1, v0, v4}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->getHintTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->grow()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "blank"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v2, 0x3f47ae14    # 0.78f

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setFillParent(Z)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "enable_developer_mode_disclaimer"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->grow()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1, v0, v3}, Lcom/prineside/tdi2/managers/ResearchManager;->startResearching(Lcom/prineside/tdi2/Research;Z)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2$1;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu$2;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V
    :try_end_0
    .catch Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$2$1;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu$2;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;->p:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-static {v1, v0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->h(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;)V

    :goto_1
    return-void
.end method
