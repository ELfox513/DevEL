.class public Lcom/prineside/tdi2/MapPrestigeConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# static fields
.field public static final BASE_BONUS:I = 0x32

.field public static final MAX_DIFFICULTY_BONUS:I = 0x32

.field public static final NO_ABILITIES_BONUS:I = 0xa

.field public static final NO_BOUNTY_MOD_BONUS:I = 0x14

.field public static final NO_MINERS_BONUS:I = 0x14

.field public static final NO_RESEARCH_BONUS:I = 0x28

.field public static final WALKABLE_PLATFORMS_BONUS:I = 0xa


# instance fields
.field public averageDifficulty:I

.field public mapPrice:D

.field public noAbilities:Z

.field public noBounty:Z

.field public noMiners:Z

.field public noResearch:Z

.field public score:J

.field public userMapId:Ljava/lang/String;

.field public walkablePlatforms:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DIZZZZZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->userMapId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->mapPrice:D

    iput p4, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->averageDifficulty:I

    iput-boolean p5, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noAbilities:Z

    iput-boolean p6, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noResearch:Z

    iput-boolean p7, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->walkablePlatforms:Z

    iput-boolean p8, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noBounty:Z

    iput-boolean p9, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noMiners:Z

    iput-wide p10, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->score:J

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/MapPrestigeConfig;
    .locals 13

    new-instance v12, Lcom/prineside/tdi2/MapPrestigeConfig;

    const-string v0, "umi"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "mp"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v2, v0

    const-string v0, "ad"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "na"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v0, "nr"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v0, "wp"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v0, "nb"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v0, "nm"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v0, "s"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v10, p0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/prineside/tdi2/MapPrestigeConfig;-><init>(Ljava/lang/String;DIZZZZZJ)V

    return-object v12
.end method

.method public static getMaxPrestigeScore(IZ)I
    .locals 8

    const v0, 0x61a80

    const v1, 0x2dc6c0

    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eqz p1, :cond_2

    const-wide v4, 0x40df0e0000000000L    # 31800.0

    int-to-double p0, p0

    const-wide v6, 0x3ff199999999999aL    # 1.1

    invoke-static {p0, p1, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p0

    div-double/2addr v4, p0

    const-wide p0, 0x403e266666666666L    # 30.15

    sub-double/2addr v4, p0

    mul-double v4, v4, v2

    double-to-int p0, v4

    const/16 p1, 0xfa0

    if-ge p0, p1, :cond_0

    const/16 p0, 0xfa0

    :cond_0
    if-le p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_1

    :cond_2
    const-wide v4, 0x40c7700000000000L    # 12000.0

    add-int/lit8 p0, p0, -0xb

    int-to-double p0, p0

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-static {p0, p1, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p0

    div-double/2addr v4, p0

    const-wide p0, 0x4089380000000000L    # 807.0

    sub-double/2addr v4, p0

    mul-double v4, v4, v2

    double-to-int p0, v4

    const p1, 0x249f0

    if-ge p0, p1, :cond_3

    const v0, 0x249f0

    goto :goto_0

    :cond_3
    move v0, p0

    :goto_0
    if-le v0, v1, :cond_4

    const v0, 0x2dc6c0

    :cond_4
    :goto_1
    const p0, 0xf4240

    const p1, 0x186a0

    if-le v0, p0, :cond_5

    int-to-double v0, v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    mul-int p0, p0, p1

    goto :goto_2

    :cond_5
    const/16 p0, 0x2710

    if-le v0, p1, :cond_6

    int-to-double v0, v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    mul-int/lit16 p0, p1, 0x2710

    goto :goto_2

    :cond_6
    if-le v0, p0, :cond_7

    int-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    mul-int/lit16 p0, p1, 0x3e8

    goto :goto_2

    :cond_7
    int-to-double p0, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    mul-int/lit8 p0, p1, 0x64

    :goto_2
    return p0
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Crowns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->getCrownsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  Score multiplier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->getScoreMultiplier()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->score:J

    invoke-static {v2, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->getMaxPrestigeScore()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")\n  Difficulty bonus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->getDifficultyBonus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->averageDifficulty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%)\n  Map price: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->mapPrice:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "P, no abilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noAbilities:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", no research: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noResearch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", walkable platforms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->walkablePlatforms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", no bounty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noBounty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", no miners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noMiners:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n  Final bonus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->getTotalBonus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%\n  Final Prestige tokens price: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->getFinalPrestigeTokens()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrownsCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->getTotalBonus()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v1, 0x50

    if-ge v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/16 v1, 0x78

    if-ge v0, v1, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/16 v1, 0xa0

    if-ge v0, v1, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method public getDifficultyBonus()I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->averageDifficulty:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0xaa

    if-ge v0, v1, :cond_1

    const/16 v0, 0xa

    return v0

    :cond_1
    const/16 v1, 0xfa

    if-ge v0, v1, :cond_2

    const/16 v0, 0x14

    return v0

    :cond_2
    const/16 v1, 0x15e

    if-ge v0, v1, :cond_3

    const/16 v0, 0x1e

    return v0

    :cond_3
    const/16 v1, 0x1c2

    if-ge v0, v1, :cond_4

    const/16 v0, 0x28

    return v0

    :cond_4
    const/16 v0, 0x32

    return v0
.end method

.method public getFinalPrestigeTokens()I
    .locals 6

    iget-wide v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->mapPrice:D

    invoke-virtual {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->getTotalBonus()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    mul-double v0, v0, v2

    double-to-float v0, v0

    iget-wide v1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->mapPrice:D

    double-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v0

    return v0
.end method

.method public getMaxPrestigeScore()I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->averageDifficulty:I

    iget-boolean v1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noResearch:Z

    invoke-static {v0, v1}, Lcom/prineside/tdi2/MapPrestigeConfig;->getMaxPrestigeScore(IZ)I

    move-result v0

    return v0
.end method

.method public getScoreMultiplier()D
    .locals 5

    iget-wide v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->score:J

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->getMaxPrestigeScore()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public getTotalBonus()I
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->getScoreMultiplier()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->getDifficultyBonus()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    iget-boolean v3, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noResearch:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x28

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noAbilities:Z

    const/16 v5, 0xa

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->walkablePlatforms:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    add-int/2addr v2, v5

    iget-boolean v3, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noBounty:Z

    const/16 v5, 0x14

    if-eqz v3, :cond_3

    const/16 v3, 0x14

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noMiners:Z

    if-eqz v3, :cond_4

    const/16 v4, 0x14

    :cond_4
    add-int/2addr v2, v4

    int-to-float v2, v2

    double-to-float v0, v0

    mul-float v2, v2, v0

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->userMapId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->mapPrice:D

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->averageDifficulty:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noAbilities:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noResearch:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->walkablePlatforms:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noBounty:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noMiners:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->score:J

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->score:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->userMapId:Ljava/lang/String;

    const-string v1, "umi"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->mapPrice:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "mp"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->averageDifficulty:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ad"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noAbilities:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "na"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noResearch:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "nr"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->walkablePlatforms:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "wp"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noBounty:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "nb"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noMiners:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "nm"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->userMapId:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->mapPrice:D

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    iget p1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->averageDifficulty:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean p1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noAbilities:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noResearch:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->walkablePlatforms:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noBounty:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->noMiners:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-wide v1, p0, Lcom/prineside/tdi2/MapPrestigeConfig;->score:J

    invoke-virtual {p2, v1, v2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    return-void
.end method
