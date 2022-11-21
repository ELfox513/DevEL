.class Lcom/prineside/tdi2/AndroidLauncher$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Game$GameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/AndroidLauncher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/Timer$Task;

.field public final synthetic b:Lcom/prineside/tdi2/AndroidLauncher;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$4;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->i0()V

    return-void
.end method

.method public static synthetic B()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/AndroidLauncher$4;->T()V

    return-void
.end method

.method public static synthetic C(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->K()V

    return-void
.end method

.method public static synthetic D(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->N()V

    return-void
.end method

.method public static synthetic E(Lcom/prineside/tdi2/AndroidLauncher$4;)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidLauncher$4;->a:Lcom/badlogic/gdx/utils/Timer$Task;

    return-object p0
.end method

.method private synthetic F()V
    .locals 1

    const-string v0, "main_menu_new_game_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic G()V
    .locals 1

    const-string v0, "shared_back_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic H()V
    .locals 1

    const-string v0, "dialog_left_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic I()V
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->deleteSavedGame()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToLevelSelectScreen()V

    return-void
.end method

.method private synthetic J()V
    .locals 1

    const-string v0, "level_select_level_1.1"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic K()V
    .locals 1

    const-string v0, "level_select_overlay_continue_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic L()V
    .locals 1

    const-string v0, "next_wave_call_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic M()V
    .locals 1

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->j0(F)V

    return-void
.end method

.method private synthetic N()V
    .locals 1

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->j0(F)V

    return-void
.end method

.method public static synthetic O()V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_1

    iget-object v4, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_0

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->random()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Tile;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/MapSystem;->setSelectedTile(Lcom/prineside/tdi2/Tile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :goto_1
    return-void
.end method

.method private synthetic P()V
    .locals 1

    const-string v0, "build_menu_tower_build_button_BASIC"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic Q()V
    .locals 1

    const-string v0, "build_menu_tower_build_button_BASIC"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic R()V
    .locals 1

    const-string v0, "main_menu_news_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic S()V
    .locals 0

    return-void
.end method

.method public static synthetic T()V
    .locals 0

    return-void
.end method

.method private synthetic U()V
    .locals 1

    const-string v0, "game_pause_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic V()V
    .locals 1

    const-string v0, "pause_menu_main_menu_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic W()V
    .locals 1

    const v0, 0x3ca3d70a    # 0.02f

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->j0(F)V

    return-void
.end method

.method private synthetic X()V
    .locals 1

    const v0, 0x3ca3d70a    # 0.02f

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->j0(F)V

    return-void
.end method

.method private synthetic Y()V
    .locals 1

    const v0, 0x3ca3d70a    # 0.02f

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->j0(F)V

    return-void
.end method

.method private synthetic Z()V
    .locals 1

    const v0, 0x3ca3d70a    # 0.02f

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->j0(F)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->F()V

    return-void
.end method

.method private synthetic a0()V
    .locals 1

    const v0, 0x3ca3d70a    # 0.02f

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->j0(F)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->e0()V

    return-void
.end method

.method private synthetic b0()V
    .locals 1

    const v0, 0x3ca3d70a    # 0.02f

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->j0(F)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->a0()V

    return-void
.end method

.method private synthetic c0()V
    .locals 1

    const-string v0, "web_browser_close_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->P()V

    return-void
.end method

.method private synthetic d0()V
    .locals 1

    const-string v0, "main_menu_season_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->M()V

    return-void
.end method

.method private synthetic e0()V
    .locals 1

    const-string v0, "web_browser_close_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->h0()V

    return-void
.end method

.method private synthetic f0()V
    .locals 1

    const-string v0, "main_menu_music_player_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->G()V

    return-void
.end method

.method private synthetic g0()V
    .locals 1

    const-string v0, "music_list_overlay_close_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->Z()V

    return-void
.end method

.method private synthetic h0()V
    .locals 1

    const-string v0, "main_menu_new_game_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->W()V

    return-void
.end method

.method private synthetic i0()V
    .locals 1

    const-string v0, "level_select_skip_tutorials_button"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->l0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->d0()V

    return-void
.end method

.method public static synthetic k(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->J()V

    return-void
.end method

.method public static synthetic l()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/AndroidLauncher$4;->I()V

    return-void
.end method

.method public static synthetic m(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->U()V

    return-void
.end method

.method public static synthetic n(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->Y()V

    return-void
.end method

.method public static synthetic o()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/AndroidLauncher$4;->S()V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->g0()V

    return-void
.end method

.method public static synthetic q(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->V()V

    return-void
.end method

.method public static synthetic r(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->c0()V

    return-void
.end method

.method public static synthetic s(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->H()V

    return-void
.end method

.method public static synthetic t(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->L()V

    return-void
.end method

.method public static synthetic u(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->b0()V

    return-void
.end method

.method public static synthetic v(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->Q()V

    return-void
.end method

.method public static synthetic w(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->X()V

    return-void
.end method

.method public static synthetic x()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/AndroidLauncher$4;->O()V

    return-void
.end method

.method public static synthetic y(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->f0()V

    return-void
.end method

.method public static synthetic z(Lcom/prineside/tdi2/AndroidLauncher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$4;->R()V

    return-void
.end method


# virtual methods
.method public gameLoaded()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->setLogTouchDownsEnabled(Z)V

    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/Runnable;

    new-instance v2, Lcom/prineside/tdi2/p;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/p;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Lcom/prineside/tdi2/s;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/s;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    aput-object v2, v0, v1

    new-instance v2, Lcom/prineside/tdi2/e0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/e0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/g0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/g0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/h0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/h0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/i0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/i0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/j0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/j0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/k0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/k0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/l0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/l0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/n0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/n0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/b0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/b0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/m0;

    invoke-direct {v2}, Lcom/prineside/tdi2/m0;-><init>()V

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/o0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/o0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/p0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/p0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/q0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/q0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/r0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/r0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/s0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/s0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/t0;

    invoke-direct {v2}, Lcom/prineside/tdi2/t0;-><init>()V

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/u0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/u0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/q;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/q;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x13

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/t;

    invoke-direct {v2}, Lcom/prineside/tdi2/t;-><init>()V

    const/16 v4, 0x14

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/u;

    invoke-direct {v2}, Lcom/prineside/tdi2/u;-><init>()V

    const/16 v4, 0x15

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/v;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/v;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x16

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/w;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/w;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x17

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/x;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/x;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x18

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/y;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/y;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x19

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/z;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/z;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x1a

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/a0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/a0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x1b

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/c0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/c0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x1c

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/d0;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/d0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;)V

    const/16 v4, 0x1d

    aput-object v2, v0, v4

    new-instance v2, Lcom/prineside/tdi2/f0;

    invoke-direct {v2}, Lcom/prineside/tdi2/f0;-><init>()V

    const/16 v4, 0x1e

    aput-object v2, v0, v4

    new-array v1, v1, [I

    aput v3, v1, v3

    new-instance v2, Lcom/prineside/tdi2/AndroidLauncher$4$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/prineside/tdi2/AndroidLauncher$4$2;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;[I[Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/prineside/tdi2/AndroidLauncher$4;->a:Lcom/badlogic/gdx/utils/Timer$Task;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v2, v0}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    return-void
.end method

.method public gameStartedLoading()V
    .locals 0

    return-void
.end method

.method public final j0(F)V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    sub-int/2addr v2, v3

    invoke-static {v1}, Lcom/prineside/tdi2/utils/FastRandom;->getFairInt(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v2}, Lcom/prineside/tdi2/utils/FastRandom;->getFairInt(I)I

    move-result v1

    add-int/2addr p1, v1

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v0, p1, v1}, Lcom/prineside/tdi2/AndroidLauncher$4;->k0(IIF)V

    return-void
.end method

.method public final k0(IIF)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->getInputProcessor()Lcom/badlogic/gdx/InputProcessor;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, v1}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_0

    invoke-interface {v0, p1, p2, v1, v1}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/prineside/tdi2/AndroidLauncher$4$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/prineside/tdi2/AndroidLauncher$4$1;-><init>(Lcom/prineside/tdi2/AndroidLauncher$4;Lcom/badlogic/gdx/InputProcessor;II)V

    invoke-static {v1, p3}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    const-string p2, "tap: failed to get InputProcessor"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, p3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :goto_0
    return-void
.end method

.method public final l0(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/UiManager;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    mul-float v3, v3, v2

    invoke-direct {p1, v1, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result p1

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v0, p1, v1}, Lcom/prineside/tdi2/AndroidLauncher$4;->k0(IIF)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tap: failed to find actor \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :goto_0
    return-void
.end method

.method public render()V
    .locals 0

    return-void
.end method
