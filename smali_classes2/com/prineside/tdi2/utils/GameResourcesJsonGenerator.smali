.class public Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Json;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Enum;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void
.end method

.method public run()V
    .locals 8

    const-string v0, "GameResourcesJsonGenerator"

    const-class v1, Lcom/prineside/tdi2/enums/StatisticsType;

    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    const/16 v4, 0xb8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "generatedInBuild"

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "enums"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    const-class v4, Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ActionType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/BuildingType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/GateType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ItemCategoryType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ItemSortingType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/LimitedParticleType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ResearchCategoryType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/SoundType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v1}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    const-class v4, Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    const-string v4, "enumTitles"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/StatisticsManager;->getStatisticsTitle(Lcom/prineside/tdi2/enums/StatisticsType;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "res/game-resources.json"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "failed to write resources file"

    invoke-static {v0, v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const-string v1, "Done"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
