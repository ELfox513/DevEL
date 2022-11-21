.class public Lcom/prineside/tdi2/ui/components/LiveLeaderboard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;,
        Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;,
        Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;
    }
.end annotation


# static fields
.field public static final J:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public A:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public B:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field public C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

.field public D:I

.field public E:I

.field public F:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public G:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field public H:Lcom/prineside/tdi2/GameSystemProvider;

.field public I:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;

.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Z

.field public d:I

.field public k:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public x:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public y:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public z:Lcom/badlogic/gdx/scenes/scene2d/Group;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->J:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 8

    const-class v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x65

    const-string v4, "LiveLeaderboard"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$1;-><init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->B:Lcom/badlogic/gdx/utils/Pool;

    const/4 v2, -0x1

    iput v2, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->D:I

    iput v2, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->E:I

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->G:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/prineside/tdi2/ui/components/LiveLeaderboard$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->I:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->H:Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x43a00000    # 320.0f

    const/high16 v6, 0x43a80000    # 336.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v5, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$2;

    invoke-direct {v5, p0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$2;-><init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v1, 0x42ac0000    # 86.0f

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/prineside/tdi2/BasicLevel;->hasLeaderboards:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    sget-object v2, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->LIVE_LEADERBOARDS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmpl-double v3, v1, v5

    if-eqz v3, :cond_1

    new-instance v1, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v2, "POST"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/prineside/tdi2/Config;->GET_RUNTIME_LEADERBOARDS_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gamemode"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "difficulty"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    const-string v4, "mapname"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "playerid"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v2, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    invoke-direct {v2, p0, p1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;-><init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel, level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is signed in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", difficulty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic A(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic B(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/Group;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p1
.end method

.method public static synthetic C(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic D(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/Group;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p1
.end method

.method public static synthetic E(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic F(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/Group;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p1
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->d:I

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Image;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p1
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->d:I

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p1
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p1
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p1
.end method

.method public static synthetic k(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p1
.end method

.method public static synthetic m(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic n(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p1
.end method

.method public static synthetic o(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->I:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;

    return-object p0
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->H()V

    return-void
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->b:Z

    return p1
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->G()V

    return-void
.end method

.method public static synthetic s(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic t(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/utils/Pool;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->B:Lcom/badlogic/gdx/utils/Pool;

    return-object p0
.end method

.method public static synthetic u(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic v(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    return-object p0
.end method

.method public static synthetic w(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    return-object p1
.end method

.method public static synthetic x(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic y(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p1
.end method

.method public static synthetic z(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method


# virtual methods
.method public final G()V
    .locals 35

    move-object/from16 v0, p0

    iget v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->E:I

    int-to-long v1, v1

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->H:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-wide v10, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->scoreWithEndlessTimeLimit:J

    cmp-long v4, v1, v10

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    if-nez v1, :cond_1

    const-string v1, "LiveLeaderboard"

    const-string v2, "canceled rebuildList - no localPlayerPlaceConfig"

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->isMaxEndlessReplayTimeReached()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v12, -0x1

    :goto_0
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_3

    iget-object v6, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    aget-object v6, v6, v3

    iget-wide v6, v6, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->score:J

    cmp-long v8, v10, v6

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x1

    move v12, v3

    move v3, v4

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v3, 0x4

    const/4 v13, 0x1

    if-ne v12, v1, :cond_6

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v6, v4, :cond_4

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    aget-object v5, v5, v4

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_6
    const/4 v6, 0x3

    if-lt v12, v6, :cond_7

    if-le v5, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    aget-object v4, v4, v2

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v4, v13, :cond_f

    if-nez v12, :cond_8

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v4, v12, -0x1

    add-int/lit8 v5, v4, 0x2

    if-gtz v4, :cond_b

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v6, v4, :cond_9

    add-int/lit8 v6, v4, -0x1

    :cond_9
    const/4 v4, 0x1

    :goto_4
    if-gt v4, v6, :cond_10

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    aget-object v7, v7, v4

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    if-ne v12, v4, :cond_a

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v5, v6, :cond_c

    add-int/lit8 v5, v6, -0x1

    add-int/lit8 v4, v5, -0x2

    :cond_c
    if-gtz v4, :cond_d

    const/4 v4, 0x1

    :cond_d
    :goto_5
    if-gt v4, v5, :cond_10

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    if-ne v12, v4, :cond_e

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_f
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_10
    :goto_6
    const v14, 0xf4240

    const/16 v15, 0xc8

    if-ltz v12, :cond_13

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    aget-object v4, v4, v12

    iget v4, v4, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->place:I

    if-ge v4, v15, :cond_11

    add-int/2addr v4, v13

    :goto_7
    move v9, v4

    goto :goto_8

    :cond_11
    if-ne v4, v15, :cond_12

    const v9, 0xf4240

    goto :goto_8

    :cond_12
    add-int/2addr v4, v14

    goto :goto_7

    :cond_13
    const/4 v9, 0x1

    :goto_8
    iget-boolean v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->b:Z

    const/16 v16, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    if-eqz v4, :cond_21

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->G:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->G:Lcom/badlogic/gdx/utils/Array;

    check-cast v5, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_9

    :cond_14
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    if-eqz v4, :cond_20

    iget-object v4, v4, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    if-eqz v4, :cond_1f

    const/4 v5, 0x0

    const/16 v17, 0x0

    const v18, 0x3e99999a    # 0.3f

    move-wide v6, v10

    const/high16 v2, 0x3f800000    # 1.0f

    move v8, v9

    move/from16 v19, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->setup(Ljava/lang/String;JILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x43160000    # 150.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v9, 0x0

    if-ge v5, v8, :cond_1b

    if-ne v5, v13, :cond_15

    if-eqz v3, :cond_15

    const/high16 v8, 0x41c00000    # 24.0f

    sub-float/2addr v4, v8

    :cond_15
    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    aget-object v7, v7, v5

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    if-ne v7, v8, :cond_16

    const/4 v6, 0x1

    :cond_16
    iget-object v8, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    if-nez v8, :cond_18

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->B:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    iput-object v8, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-static {v8, v7}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->q(Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    iget-object v8, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    const/high16 v1, 0x43000000    # 128.0f

    invoke-virtual {v8, v9, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-virtual {v1, v2, v2, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    iget-object v8, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->nickname:Ljava/lang/String;

    move/from16 v26, v3

    iget-wide v2, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->score:J

    iget v13, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->place:I

    iget-boolean v9, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->hasPfp:Z

    if-eqz v9, :cond_17

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v27, v10

    sget-object v10, Lcom/prineside/tdi2/Config;->AVATAR_WEB_TEXTURES_URL:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->playerId:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-32.png"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/prineside/tdi2/managers/AssetManager;->loadWebTexture(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object/from16 v25, v9

    goto :goto_b

    :cond_17
    move-wide/from16 v27, v10

    move-object/from16 v25, v16

    :goto_b
    move-object/from16 v20, v1

    move-object/from16 v21, v8

    move-wide/from16 v22, v2

    move/from16 v24, v13

    invoke-virtual/range {v20 .. v25}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->setup(Ljava/lang/String;JILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_c

    :cond_18
    move/from16 v26, v3

    move-wide/from16 v27, v10

    :goto_c
    if-eqz v6, :cond_1a

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    if-eq v7, v1, :cond_1a

    iget v1, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->place:I

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_19

    iget-object v2, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    const/16 v21, 0x0

    const-wide/16 v22, -0x1

    add-int/lit8 v24, v1, 0x1

    const/16 v25, 0x0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v25}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->setup(Ljava/lang/String;JILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_d

    :cond_19
    iget-object v2, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    const/16 v30, 0x0

    const-wide/16 v31, -0x1

    const v3, 0xf4240

    add-int v33, v1, v3

    const/16 v34, 0x0

    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v34}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->setup(Ljava/lang/String;JILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :cond_1a
    :goto_d
    iget-object v1, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    const/4 v3, 0x0

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v3, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v1, 0x42000000    # 32.0f

    sub-float/2addr v4, v1

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->G:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v7, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v26

    move-wide/from16 v10, v27

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const v14, 0xf4240

    const/16 v15, 0xc8

    const v18, 0x3e99999a    # 0.3f

    goto/16 :goto_a

    :cond_1b
    move/from16 v26, v3

    move-wide/from16 v27, v10

    const v8, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    :goto_e
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->G:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1e

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->p(Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    move-result-object v3

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    if-eq v3, v4, :cond_1d

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    const/high16 v3, -0x3e000000    # -32.0f

    if-eqz v26, :cond_1c

    const/4 v4, 0x0

    goto :goto_f

    :cond_1c
    const/16 v4, 0x18

    :goto_f
    int-to-float v4, v4

    add-float/2addr v4, v3

    const/4 v3, 0x0

    invoke-static {v3, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v4

    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$5;

    invoke-direct {v5, v0, v2}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$5;-><init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;)V

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "trying to remove localPlayerPlaceConfig"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    goto :goto_10

    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "localPlayerPlaceConfig.listItem is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "localPlayerPlaceConfig is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    move/from16 v26, v3

    move/from16 v19, v9

    move-wide/from16 v27, v10

    const v8, 0x3e99999a    # 0.3f

    :goto_10
    if-eqz v26, :cond_22

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_11

    :cond_22
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_11
    const/4 v1, -0x1

    if-ne v12, v1, :cond_23

    const/4 v2, 0x1

    :goto_12
    const/4 v13, 0x0

    goto/16 :goto_15

    :cond_23
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    aget-object v1, v1, v12

    iget v2, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->place:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_24

    const/4 v4, 0x1

    add-int/lit8 v13, v2, 0x1

    move v2, v13

    goto :goto_12

    :cond_24
    iget-wide v4, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->score:J

    const v1, 0x3c23d70a    # 0.01f

    const v6, 0x49742400    # 1000000.0f

    if-ne v2, v3, :cond_25

    goto :goto_13

    :cond_25
    int-to-float v2, v2

    div-float/2addr v2, v6

    mul-float v2, v2, v1

    iget v3, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->d:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    :goto_13
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    iget v7, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v8, v12, 0x1

    if-le v7, v8, :cond_26

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    aget-object v16, v3, v8

    :cond_26
    move-object/from16 v3, v16

    if-nez v3, :cond_27

    const-wide/16 v6, 0x0

    iget v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->d:I

    goto :goto_14

    :cond_27
    iget-wide v7, v3, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->score:J

    iget v3, v3, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->place:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    mul-float v3, v3, v1

    iget v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->d:I

    int-to-float v1, v1

    mul-float v3, v3, v1

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    move-wide v6, v7

    :goto_14
    sub-long/2addr v4, v6

    const-wide/16 v8, 0x1

    cmp-long v3, v4, v8

    if-gez v3, :cond_28

    move-wide v4, v8

    :cond_28
    sub-long v10, v27, v6

    long-to-float v3, v10

    long-to-float v4, v4

    div-float/2addr v3, v4

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x1

    add-int/2addr v2, v1

    const/4 v13, 0x1

    :goto_15
    sget-object v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->J:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    if-eqz v13, :cond_29

    const-string v3, "~"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_29
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    const/16 v3, 0x3e7

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    const/4 v2, -0x1

    if-ne v12, v2, :cond_2a

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "leader"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    :cond_2a
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "top_leaderboard_top"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x25

    move/from16 v4, v19

    const v3, 0xf4240

    if-ge v4, v3, :cond_2c

    int-to-float v3, v4

    iget v4, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->d:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v4, v4, v3

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v4

    const/16 v5, 0x9

    if-le v4, v5, :cond_2b

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_16

    :cond_2b
    const-string v3, "0."

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_16

    :cond_2c
    div-int v9, v4, v3

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_16
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    aget-object v1, v1, v12

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-wide v3, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->score:J

    sub-long v3, v3, v27

    invoke-static {v3, v4}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->H()V

    return-void
.end method

.method public final H()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->H:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->H:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->isOffscreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x44870000    # 1080.0f

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3ffb333333333333L    # 1.7

    const/4 v6, 0x0

    cmpl-double v7, v2, v4

    if-lez v7, :cond_1

    if-eqz v0, :cond_1

    const/high16 v0, -0x3bef0000    # -580.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    float-to-int v2, v0

    const/16 v3, 0x1f

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v3, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->b:Z

    add-int/2addr v2, v3

    iget v4, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->D:I

    if-eq v4, v2, :cond_3

    iput v2, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->D:I

    const v2, 0x3e4ccccd    # 0.2f

    const v4, 0x3dcccccd    # 0.1f

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->exp5Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-static {v0, v6, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x43790000    # 249.0f

    sget-object v5, Lcom/badlogic/gdx/math/Interpolation;->exp5Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-static {v0, v3, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$4;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$4;-><init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)V

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public finalFadeOut()V
    .locals 5

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
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    mul-float v0, v0, v1

    invoke-static {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public toggleVisible()V
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->b:Z

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_LIVE_LEADERBOARDS_VISIBLE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    if-eqz v0, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->G()V

    return-void
.end method
