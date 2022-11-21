.class Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen;->i(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "select_date_to_restore_game_state"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/AccountScreen$19$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/AccountScreen$19;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/AccountScreen;->i(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v2, 0x44160000    # 600.0f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v4, "replays"

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/high16 v6, 0x42800000    # 64.0f

    const/16 v7, 0x1e

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v8, "date"

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/util/Date;

    int-to-long v10, v8

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "yyyy.MM.dd HH:mm:ss"

    invoke-direct {v8, v11, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v10, "replay"

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->fromCompactString(Ljava/lang/String;Z)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v5

    iget-boolean v10, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    if-eqz v10, :cond_0

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->getPreferencesSnapshot()[B

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/prineside/tdi2/ui/actors/LabelButton;

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    new-instance v9, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;

    invoke-direct {v9, p0, v5}, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-direct {v4, v8, v7, v9}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v5, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;

    iget-object v5, v5, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;

    iget-object v5, v5, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    iget-object v5, v5, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1;

    iget-object v5, v5, Lcom/prineside/tdi2/screens/AccountScreen$19$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19;

    iget-object v5, v5, Lcom/prineside/tdi2/screens/AccountScreen$19;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v5}, Lcom/prineside/tdi2/screens/AccountScreen;->i(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "no_replays_found_cant_restore"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v4, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;

    iget-object v4, v4, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;

    iget-object v4, v4, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    iget-object v4, v4, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1;

    iget-object v4, v4, Lcom/prineside/tdi2/screens/AccountScreen$19$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19;

    iget-object v4, v4, Lcom/prineside/tdi2/screens/AccountScreen$19;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v4}, Lcom/prineside/tdi2/screens/AccountScreen;->i(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const-string v0, "AccountScreen"

    const-string v2, "no replays"

    invoke-static {v0, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen;->i(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    new-instance v0, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v4, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$2;

    invoke-direct {v4, p0}, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$2;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/AccountScreen;->i(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/AccountScreen;->i(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method
