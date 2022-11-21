.class public Lcom/prineside/tdi2/Requirement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public levelName:Ljava/lang/String;

.field public levelStars:I

.field public openedLevelName:Ljava/lang/String;

.field public researchLevel:I

.field public researchType:Lcom/prineside/tdi2/enums/ResearchType;

.field public stageName:Ljava/lang/String;

.field public stageStars:I

.field public statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

.field public statisticsValue:D

.field public type:Lcom/prineside/tdi2/enums/RequirementType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lcom/prineside/tdi2/utils/StringFormatter;->toRGB(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/Requirement;->a:Ljava/lang/String;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lcom/prineside/tdi2/utils/StringFormatter;->toRGB(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/Requirement;->b:Ljava/lang/String;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Requirement;->c:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/RequirementType;->ALL_TIME_STATISTIC:Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Requirement;->setType(Lcom/prineside/tdi2/enums/RequirementType;)V

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Requirement;
    .locals 6

    new-instance v0, Lcom/prineside/tdi2/Requirement;

    invoke-direct {v0}, Lcom/prineside/tdi2/Requirement;-><init>()V

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/RequirementType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/RequirementType;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    sget-object v2, Lcom/prineside/tdi2/Requirement$1;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const-string v3, "name"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    const-string v4, "level"

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    const-string v5, "amount"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/ResearchType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResearchType;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/Requirement;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/prineside/tdi2/Requirement;->researchLevel:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/Requirement;->levelName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/prineside/tdi2/Requirement;->levelStars:I

    goto :goto_0

    :cond_2
    const-string v1, "stage"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/Requirement;->stageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/prineside/tdi2/Requirement;->stageStars:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/Requirement;->openedLevelName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/Requirement;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    const-string v1, "value"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/prineside/tdi2/Requirement;->statisticsValue:D

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getFormattedValue()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 10

    sget-object v0, Lcom/prineside/tdi2/Requirement;->c:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v2, Lcom/prineside/tdi2/Requirement$1;->a:[I

    iget-object v3, p0, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-string v4, "[] / "

    const-string v5, "]"

    const-string v6, "[#"

    if-eq v2, v3, :cond_4

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Requirement;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevel;)I

    move-result v1

    iget v2, p0, Lcom/prineside/tdi2/Requirement;->levelStars:I

    if-lt v1, v2, :cond_1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Requirement;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Requirement;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/prineside/tdi2/Requirement;->levelStars:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_4

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Requirement;->stageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevelStage;)I

    move-result v1

    iget v2, p0, Lcom/prineside/tdi2/Requirement;->stageStars:I

    if-lt v1, v2, :cond_3

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Requirement;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Requirement;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/prineside/tdi2/Requirement;->stageStars:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_4

    :cond_4
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Requirement;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    iget-wide v7, p0, Lcom/prineside/tdi2/Requirement;->statisticsValue:D

    cmpl-double v9, v2, v7

    if-ltz v9, :cond_5

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Requirement;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-wide v2, v7

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Requirement;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_2
    iget-object v5, p0, Lcom/prineside/tdi2/Requirement;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    sget-object v6, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    if-eq v5, v6, :cond_7

    sget-object v6, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    if-ne v5, v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v2, v3, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/prineside/tdi2/Requirement;->statisticsValue:D

    invoke-static {v3, v4, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_4

    :cond_7
    :goto_3
    double-to-int v1, v2

    invoke-static {v1}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/prineside/tdi2/Requirement;->statisticsValue:D

    double-to-int v2, v2

    invoke-static {v2}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_8
    :goto_4
    return-object v0
.end method

.method public getIconTextureName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Requirement$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "blank"

    return-object v0

    :cond_0
    const-string v0, "icon-research"

    return-object v0

    :cond_1
    const-string v0, "icon-star"

    return-object v0

    :cond_2
    const-string v0, "icon-star-stack"

    return-object v0

    :cond_3
    const-string v0, "icon-joystick"

    return-object v0

    :cond_4
    const-string v0, "icon-statistics"

    return-object v0
.end method

.method public getTitle(Z)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Requirement;->c:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v2, Lcom/prineside/tdi2/Requirement$1;->a:[I

    iget-object v3, p0, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    const/4 p1, 0x5

    if-eq v2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Requirement;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->isUnlocksTower()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->getRelatedToTowerType()Lcom/prineside/tdi2/enums/TowerType;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->getTitle()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v1, :cond_9

    const-string p1, " ("

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower$Factory;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_1

    :cond_2
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v5, p0, Lcom/prineside/tdi2/Requirement;->levelName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    if-eqz v2, :cond_9

    if-eqz p1, :cond_3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v6, v2, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1}, Lcom/prineside/tdi2/utils/StringFormatter;->toRGB(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    aput-object p1, v4, v1

    iget-object p1, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    aput-object p1, v4, v3

    const-string p1, "requirement_title_STARS_colored"

    invoke-virtual {v5, p1, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_1

    :cond_3
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    aput-object v2, v3, v1

    const-string v1, "requirement_title_STARS"

    invoke-virtual {p1, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_1

    :cond_4
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v5, p0, Lcom/prineside/tdi2/Requirement;->stageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v2

    if-eqz p1, :cond_5

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v5}, Lcom/prineside/tdi2/utils/StringFormatter;->toRGB(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, v2, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    aput-object v1, v4, v3

    const-string v1, "requirement_title_STAGE_STARS_colored"

    invoke-virtual {p1, v1, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    aput-object v2, v3, v1

    const-string v1, "requirement_title_STAGE_STARS"

    invoke-virtual {p1, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v5, p0, Lcom/prineside/tdi2/Requirement;->openedLevelName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    if-eqz v2, :cond_9

    if-eqz p1, :cond_7

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v6, v2, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1}, Lcom/prineside/tdi2/utils/StringFormatter;->toRGB(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    aput-object p1, v4, v1

    iget-object p1, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    aput-object p1, v4, v3

    const-string p1, "requirement_title_OPENED_LEVEL_colored"

    invoke-virtual {v5, p1, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    aput-object v2, v3, v1

    const-string v1, "requirement_title_OPENED_LEVEL"

    invoke-virtual {p1, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_8
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Requirement;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getStatisticsTitle(Lcom/prineside/tdi2/enums/StatisticsType;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_9
    :goto_1
    return-object v0
.end method

.method public isSatisfied()Z
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Requirement$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Requirement;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget v3, p0, Lcom/prineside/tdi2/Requirement;->researchLevel:I

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Requirement;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevel;)I

    move-result v0

    iget v3, p0, Lcom/prineside/tdi2/Requirement;->levelStars:I

    if-lt v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Requirement;->stageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v0

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevelStage;)I

    move-result v0

    iget v3, p0, Lcom/prineside/tdi2/Requirement;->stageStars:I

    if-lt v0, v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_7
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Requirement;->openedLevelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    if-nez v0, :cond_8

    return v2

    :cond_8
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isOpened(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v0

    return v0

    :cond_9
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Requirement;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/prineside/tdi2/Requirement;->statisticsValue:D

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_a

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public setType(Lcom/prineside/tdi2/enums/RequirementType;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    sget-object v0, Lcom/prineside/tdi2/Requirement$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    const-string v1, "0.1"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/Requirement;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    if-nez p1, :cond_6

    sget-object p1, Lcom/prineside/tdi2/enums/ResearchType;->ROOT:Lcom/prineside/tdi2/enums/ResearchType;

    iput-object p1, p0, Lcom/prineside/tdi2/Requirement;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/Requirement;->levelName:Ljava/lang/String;

    if-nez p1, :cond_6

    iput-object v1, p0, Lcom/prineside/tdi2/Requirement;->levelName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/Requirement;->stageName:Ljava/lang/String;

    if-nez p1, :cond_6

    const-string p1, "1"

    iput-object p1, p0, Lcom/prineside/tdi2/Requirement;->stageName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/Requirement;->openedLevelName:Ljava/lang/String;

    if-nez p1, :cond_6

    iput-object v1, p0, Lcom/prineside/tdi2/Requirement;->openedLevelName:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/Requirement;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    if-nez p1, :cond_6

    sget-object p1, Lcom/prineside/tdi2/enums/StatisticsType;->WIP:Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object p1, p0, Lcom/prineside/tdi2/Requirement;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    :cond_6
    :goto_0
    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/prineside/tdi2/Requirement$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const-string v3, "level"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const-string v4, "amount"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Requirement;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Requirement;->researchLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Requirement;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Requirement;->levelStars:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/Requirement;->stageName:Ljava/lang/String;

    const-string v1, "stage"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Requirement;->stageStars:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/Requirement;->openedLevelName:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/Requirement;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/Requirement;->statisticsValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
