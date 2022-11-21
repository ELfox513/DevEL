.class Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v2, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->a:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v3, "player"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    const-string v4, "total"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->d(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;I)I

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->a(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    const-string v2, "score"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LiveLeaderboard"

    invoke-static {v3, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v3, "leaderboards"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    new-instance v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v9, v9, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-direct {v8, v9, v6}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;-><init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/prineside/tdi2/ui/components/LiveLeaderboard$1;)V

    const-string v6, "nickname"

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->score:J

    const-string v6, "position"

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->place:I

    const-string v6, "hasPfp"

    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->hasPfp:Z

    const-string v6, "playerid"

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->playerId:Ljava/lang/String;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->u(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v2, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    invoke-direct {v2, v1, v6}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;-><init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/prineside/tdi2/ui/components/LiveLeaderboard$1;)V

    invoke-static {v1, v2}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->w(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->v(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    const/4 v6, 0x1

    invoke-direct {v2, v3, v6}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;-><init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Z)V

    iput-object v2, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->v(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    move-result-object v1

    iget-object v8, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getNickname()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AuthManager;->getAvatar(I)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual/range {v8 .. v13}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->setup(Ljava/lang/String;JILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "live_leaderboard_previous_record"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-static {v1, v2}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->y(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->x(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->x(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    const/high16 v2, 0x438c0000    # 280.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->x(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->x(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v8, 0x3f0f5c29    # 0.56f

    invoke-virtual {v1, v2, v2, v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->z(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v9, v9, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v9}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->x(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-static {v1, v9}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->B(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/Group;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    const/high16 v9, 0x41f00000    # 30.0f

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-virtual {v1, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    const/high16 v11, 0x435d0000    # 221.0f

    const/high16 v12, 0x43110000    # 145.0f

    invoke-virtual {v1, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v1, 0x0

    :goto_1
    const v11, 0x3e8f5c29    # 0.28f

    const-string v13, "small-circle"

    const/4 v14, 0x3

    const/high16 v15, 0x41400000    # 12.0f

    if-ge v1, v14, :cond_3

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v14, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v14, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    int-to-float v8, v1

    mul-float v8, v8, v15

    invoke-virtual {v14, v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v14, v2, v2, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    const v8, 0x3f0f5c29    # 0.56f

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->z(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->A(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-static {v1, v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->D(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/Group;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v1, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    const/high16 v8, 0x41b00000    # 22.0f

    invoke-virtual {v1, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->z(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-static {v1, v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->F(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/Group;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->E(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->E(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->E(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    const/high16 v8, 0x42440000    # 49.0f

    invoke-virtual {v1, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v14, :cond_4

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v8, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    int-to-float v9, v1

    mul-float v9, v9, v15

    invoke-virtual {v8, v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v8, v2, v2, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v9, v9, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v9}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->E(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->E(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "gradient-radial-top"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-static {v1, v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->c(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Image;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->b(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v1

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v1, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->b(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v1

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v10, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v11, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v9, v10, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->b(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v3, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v1, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x18

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    const-string v11, "~ 123,456 / 567,890"

    invoke-direct {v9, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-static {v8, v9}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->f(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->e(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v11, v11, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v11}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->a(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)I

    move-result v11

    add-int/2addr v11, v6

    int-to-long v11, v11

    invoke-static {v11, v12}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-static {v8, v9}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->h(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->g(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v8

    const v9, 0x3f0f5c29    # 0.56f

    invoke-virtual {v8, v2, v2, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->g(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v9, -0x3e500000    # -22.0f

    invoke-virtual {v1, v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual {v1, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v10, v10, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v10}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v12, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOGGLE_LEADERBOARD:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v11

    const/high16 v12, 0x43960000    # 300.0f

    invoke-direct {v10, v11, v12, v3}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v11, v11, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v11}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_5
    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v10, v10, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    const-string v13, "Top 13%"

    invoke-direct {v11, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-static {v10, v11}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->j(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v10, v10, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v10}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->i(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v10

    const v11, 0x3f0f5c29    # 0.56f

    invoke-virtual {v10, v2, v2, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v10, v10, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v10}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->i(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-star"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v10, v2, v2, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v10, v10, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    const-string v14, "14,551"

    invoke-direct {v12, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-static {v10, v12}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->l(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v10, v10, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v10}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v10

    const v12, 0x3f0f5c29    # 0.56f

    invoke-virtual {v10, v2, v2, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v10, v10, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v10}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->k(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-double-arrow-up"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v12, 0x3f0f5c29    # 0.56f

    invoke-virtual {v10, v2, v2, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v11, v11, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "time_limit_reached"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v11, 0x45610000    # 3600.0f

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v11

    invoke-static {v11, v7, v7}, Lcom/prineside/tdi2/utils/StringFormatter;->timePassed(IZZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v8, v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-static {v1, v8}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->n(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->m(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    const/high16 v5, -0x3dc80000    # -46.0f

    invoke-virtual {v1, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->m(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    invoke-virtual {v1, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->m(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->m(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const v4, 0x3f0f5c29    # 0.56f

    invoke-virtual {v3, v2, v2, v2, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->m(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->C(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->m(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v2, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->o(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    new-instance v2, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1$1;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1$1;-><init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_LIVE_LEADERBOARDS_VISIBLE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v2, v4

    if-nez v8, :cond_6

    const/4 v7, 0x1

    :cond_6
    invoke-static {v1, v7}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->q(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Z)Z

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->r(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)V

    :cond_7
    :goto_3
    return-void
.end method
