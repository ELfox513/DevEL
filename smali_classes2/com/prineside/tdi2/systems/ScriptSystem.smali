.class public Lcom/prineside/tdi2/systems/ScriptSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# static fields
.field public static CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
            "Lcom/prineside/tdi2/systems/ScriptSystem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/prineside/luaj/LuaValue;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/systems/ScriptSystem$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/ScriptSystem$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/ScriptSystem;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->b:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    const-class v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->b:Lcom/badlogic/gdx/utils/Array;

    new-instance p1, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;-><init>(Z)V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    const-string v0, "SystemConstruct"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/ScriptSystem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->a:Z

    return p0
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public disableScriptsSerialization()V
    .locals 2

    const-string v0, "ScriptSystem"

    const-string v1, "scripts serialization disabled"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->a:Z

    return-void
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->getGlobals()Lcom/prineside/luaj/Globals;

    move-result-object v0

    iget v0, v0, Lcom/prineside/luaj/Globals;->instanceId:I

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    const-string v2, "SystemDispose"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->dispose()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ScriptManager;->unregisterInstance(I)V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->d:Lcom/prineside/luaj/LuaValue;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->d:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/prineside/luaj/lib/jse/JavaInstance;

    iget-object v0, v0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    if-eq v0, p1, :cond_2

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->d:Lcom/prineside/luaj/LuaValue;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->d:Lcom/prineside/luaj/LuaValue;

    float-to-double v1, p2

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble1(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object p2

    const-string v1, "SystemDraw"

    invoke-virtual {p1, v1, v0, p2}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Script"

    return-object v0
.end method

.method public postSetup()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    const-string v1, "SystemPostSetup"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public postStateRestore()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->b:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v0

    check-cast v1, [Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->registerCustom(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    const-string v1, "StateRestored"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->a:Z

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->b:Lcom/badlogic/gdx/utils/Array;

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->a:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    :cond_0
    return-void
.end method

.method public runScriptAction(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/prineside/tdi2/systems/StateSystem;->replayMode:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    const-string v1, "scriptAction"

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->executeLua(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/prineside/tdi2/actions/ScriptAction;

    invoke-direct {v1, p1}, Lcom/prineside/tdi2/actions/ScriptAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GameStateSystem is not registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setup()V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->getGlobals()Lcom/prineside/luaj/Globals;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-static {v1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    const-string v1, "scripts/utils/game_commands.lua"

    invoke-static {v1}, Lcom/prineside/tdi2/managers/AssetManager;->localOrInternalFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->loadScript(Lcom/badlogic/gdx/files/FileHandle;)Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->SCRIPT:Lcom/prineside/tdi2/enums/TileType;

    if-ne v3, v4, :cond_4

    check-cast v2, Lcom/prineside/tdi2/tiles/ScriptTile;

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/ScriptTile;->getScript()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Script tile ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->executeLua(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v4}, Lcom/prineside/tdi2/utils/I18NBundle;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v4}, Lcom/prineside/tdi2/utils/I18NBundle;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;->scriptTranslations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;->scriptTranslations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, v2, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;->scriptTranslations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;->scriptTranslations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v8, v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->registerCustom(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v5, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    const-string v1, "SystemSetup"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public update(F)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    float-to-double v1, p1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble1(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object p1

    const-string v1, "SystemUpdate"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/StateSystem;->getCurrentUpdateActions()Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->size:I

    if-ge v0, v1, :cond_3

    iget-object v1, p1, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->actions:[Lcom/prineside/tdi2/Action;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/ActionType;->S:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    check-cast v1, Lcom/prineside/tdi2/actions/ScriptAction;

    iget-object v1, v1, Lcom/prineside/tdi2/actions/ScriptAction;->script:Ljava/lang/String;

    const-string v3, "scriptAction"

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->executeLua(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Run script actions are not allowed in headless mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->a:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
