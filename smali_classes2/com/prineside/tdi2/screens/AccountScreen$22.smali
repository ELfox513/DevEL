.class Lcom/prineside/tdi2/screens/AccountScreen$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/badlogic/gdx/utils/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/AccountScreen$22;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$22;->m(I)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/AccountScreen$22;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$22;->n(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(I)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/screens/AccountScreen$22;->i(I)V

    return-void
.end method

.method public static synthetic d(I)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/screens/AccountScreen$22;->j(I)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/screens/AccountScreen$22;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$22;->p(I)V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/screens/AccountScreen$22;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$22;->o(I)V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/screens/AccountScreen$22;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$22;->l(I)V

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/screens/AccountScreen$22;Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$22;->k(Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;)V

    return-void
.end method

.method public static synthetic i(I)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/managers/AuthManager;->loadSavedGameFromServer(I)V

    return-void
.end method

.method public static synthetic j(I)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "load_game_from_cloud_confirm"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/screens/g;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/screens/g;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    sget-object p0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p0, p0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p0, p0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->makeConfirmButtonDisabled(I)V

    return-void
.end method

.method private synthetic k(Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/AccountScreen;->d(Lcom/prineside/tdi2/screens/AccountScreen;)V

    return-void
.end method

.method private synthetic l(I)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v1, Lcom/prineside/tdi2/screens/j;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/j;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$22;)V

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/AuthManager;->saveGameToServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method private synthetic m(I)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "overwrite_cloud_save_confirm"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/screens/h;

    invoke-direct {v2, p0, p1}, Lcom/prineside/tdi2/screens/h;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$22;I)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->makeConfirmButtonDisabled(I)V

    return-void
.end method

.method private synthetic n(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/AccountScreen;->d(Lcom/prineside/tdi2/screens/AccountScreen;)V

    return-void
.end method

.method private synthetic o(I)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v1, Lcom/prineside/tdi2/screens/i;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/i;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$22;)V

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/AuthManager;->deleteGameFromServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method private synthetic p(I)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "delete_cloud_save_confirm"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/screens/f;

    invoke-direct {v2, p0, p1}, Lcom/prineside/tdi2/screens/f;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$22;I)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->makeConfirmButtonDisabled(I)V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x1e

    if-nez v1, :cond_0

    iget-object v3, v0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/AccountScreen;->k(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "failed_to_load_saved_games"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/AccountScreen;->k(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_4

    :cond_0
    iget-object v3, v0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/AccountScreen;->k(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/AccountScreen;->b(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/high16 v7, 0x42c00000    # 96.0f

    const/high16 v8, 0x44160000    # 600.0f

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v5, v5, 0x1

    const-string v9, "slotId"

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v9

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v11, v0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v11}, Lcom/prineside/tdi2/screens/AccountScreen;->k(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    const/high16 v12, 0x43400000    # 192.0f

    invoke-virtual {v11, v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    const/high16 v13, 0x41200000    # 10.0f

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "blank"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/managers/AuthManager;->getCloudSaveSlotId()I

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-ne v13, v9, :cond_1

    new-instance v13, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x3a9f433

    invoke-direct {v13, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_1
    const v13, 0x3d8f5c29    # 0.07f

    invoke-virtual {v11, v14, v14, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_1
    invoke-virtual {v11, v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "gameStartHash"

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "timeInGame"

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12, v4, v4}, Lcom/prineside/tdi2/utils/StringFormatter;->timePassed(IZZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v11, 0x430c0000    # 140.0f

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v8, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Ljava/util/Date;

    const-string v11, "slotTimestamp"

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v16, v5

    int-to-long v4, v13

    const-wide/16 v17, 0x3e8

    mul-long v4, v4, v17

    invoke-direct {v8, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "dd.MM.yyyy HH:mm"

    invoke-direct {v4, v13, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/AuthManager;->getCloudSaveSlotTimestamp()I

    move-result v5

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ge v5, v8, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - [#4CAF50]"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "newer"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[]"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v8, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-virtual {v8, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v11, 0x3f0f5c29    # 0.56f

    invoke-virtual {v8, v14, v14, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    new-instance v15, Lcom/prineside/tdi2/screens/c;

    invoke-direct {v15, v9}, Lcom/prineside/tdi2/screens/c;-><init>(I)V

    const-string v14, ""

    invoke-direct {v8, v14, v11, v15}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-cloud-download"

    invoke-virtual {v11, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v18

    const/high16 v19, 0x41c00000    # 24.0f

    const/high16 v20, 0x41000000    # 8.0f

    const/high16 v21, 0x42400000    # 48.0f

    const/high16 v22, 0x42400000    # 48.0f

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v22}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v11, v0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v11}, Lcom/prineside/tdi2/screens/AccountScreen;->b(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/high16 v11, 0x43f20000    # 484.0f

    invoke-virtual {v8, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x42800000    # 64.0f

    invoke-virtual {v8, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    if-eqz v5, :cond_4

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v5, v15, v4, v13}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :cond_4
    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v8, Lcom/prineside/tdi2/screens/d;

    invoke-direct {v8, v0, v9}, Lcom/prineside/tdi2/screens/d;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$22;I)V

    invoke-direct {v4, v14, v5, v8}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v5}, Lcom/prineside/tdi2/screens/AccountScreen;->b(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "icon-floppy"

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v24

    const/high16 v25, 0x41c00000    # 24.0f

    const/high16 v26, 0x41000000    # 8.0f

    const/high16 v27, 0x42400000    # 48.0f

    const/high16 v28, 0x42400000    # 48.0f

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v28}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/AuthManager;->hasUnsavedProgressForCloud()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;->background:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x3ea8f5c3    # 0.33f

    invoke-static {v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v8

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v8

    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :cond_5
    const/high16 v5, 0x43b80000    # 368.0f

    invoke-virtual {v4, v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v7, Lcom/prineside/tdi2/screens/e;

    invoke-direct {v7, v0, v9}, Lcom/prineside/tdi2/screens/e;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$22;I)V

    invoke-direct {v4, v14, v5, v7}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v5}, Lcom/prineside/tdi2/screens/AccountScreen;->b(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "icon-times"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v24

    const/high16 v25, 0x41000000    # 8.0f

    const/high16 v26, 0x41000000    # 8.0f

    const/high16 v27, 0x42400000    # 48.0f

    const/high16 v28, 0x42400000    # 48.0f

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v28}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v5, 0x438e0000    # 284.0f

    invoke-virtual {v4, v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v7, v8, v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AuthManager;->getCloudSaveSlotId()I

    move-result v4

    const/high16 v5, 0x42a00000    # 80.0f

    if-ne v4, v9, :cond_6

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "current"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v4, v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x43160000    # 150.0f

    const/high16 v9, 0x43fa0000    # 500.0f

    invoke-virtual {v4, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AuthManager;->hasUnsavedProgressForCloud()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "cloud_save_has_unsaved_progress"

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v4, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x42dc0000    # 110.0f

    invoke-virtual {v4, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_6
    const-string v4, "gameBuild"

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "about_version"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": B"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v5, 0xb8

    if-ge v5, v4, :cond_7

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_7
    const v4, 0x3e8f5c29    # 0.28f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v6, v5, v5, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_3
    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    move/from16 v5, v16

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x3

    if-ge v5, v3, :cond_9

    new-instance v3, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "save_game_to_new_slot"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v5, Lcom/prineside/tdi2/screens/AccountScreen$22$1;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/AccountScreen$22$1;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$22;)V

    invoke-direct {v3, v4, v2, v5}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/AccountScreen;->b(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/AccountScreen;->k(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_9
    :goto_4
    if-nez v1, :cond_a

    const-string v1, "null"

    goto :goto_5

    :cond_a
    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->toJson(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    const-string v2, "AccountScreen"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$22;->retrieved(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method
