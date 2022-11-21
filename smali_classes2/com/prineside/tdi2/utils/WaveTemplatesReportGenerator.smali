.class public Lcom/prineside/tdi2/utils/WaveTemplatesReportGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/utils/WaveTemplatesReportGenerator;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x14
        0x1e
        0x2f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateReport()V
    .locals 39

    const-string v1, "WaveTemplatesReportGenerator"

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    const-string v3, "milestones"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    sget-object v3, Lcom/prineside/tdi2/utils/WaveTemplatesReportGenerator;->a:[I

    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v3, "difficulties"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/16 v3, 0x4b

    new-array v4, v3, [I

    const/4 v7, 0x1

    :goto_1
    if-gt v7, v3, :cond_1

    sget-object v8, Lcom/prineside/tdi2/utils/WaveTemplatesReportGenerator;->a:[I

    invoke-static {v7, v8}, Lcom/prineside/tdi2/systems/WaveSystem;->getDifficultWavesMultiplier(I[I)F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v8, v8, v9

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v8

    add-int/lit8 v9, v7, -0x1

    aput v8, v4, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v7, "templates"

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    sget-object v7, Lcom/prineside/tdi2/WaveTemplates;->WAVE_TEMPLATES:[Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    const-string v10, "speed"

    const-string v11, "interval"

    const-string v12, "count"

    const-string v13, "delay"

    const-string v14, "type"

    const-string v15, "score"

    const-string v5, "exp"

    const-string v6, "coins"

    const-string v3, "pwr"

    move-object/from16 v17, v1

    const-string v1, "hp"

    move-object/from16 v18, v2

    const-string v2, "prob"

    move-object/from16 v19, v15

    const-string v15, "groups"

    const/16 v20, 0x0

    if-ge v9, v8, :cond_4

    move/from16 v21, v8

    aget-object v8, v7, v9

    move-object/from16 v22, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->getWaveName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    move/from16 v23, v9

    const/4 v7, 0x1

    const/16 v9, 0x4b

    :goto_3
    if-gt v7, v9, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    add-int/lit8 v9, v7, -0x1

    aget v9, v4, v9

    move-object/from16 v24, v4

    invoke-static {v7, v9}, Lcom/prineside/tdi2/managers/WaveManager;->getWaveValue(II)F

    move-result v4

    move-object/from16 v25, v5

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    invoke-virtual {v5, v8, v7, v9}, Lcom/prineside/tdi2/managers/WaveManager;->generateWave(Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;II)Lcom/prineside/tdi2/Wave;

    move-result-object v5

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    move-object/from16 v32, v3

    move-object/from16 v28, v6

    move-object/from16 v26, v15

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_4
    iget-object v3, v5, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-object/from16 v33, v5

    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v5, :cond_2

    invoke-virtual {v3, v15}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/EnemyGroup;

    iget v5, v3, Lcom/prineside/tdi2/EnemyGroup;->health:F

    move-object/from16 v34, v1

    iget v1, v3, Lcom/prineside/tdi2/EnemyGroup;->count:I

    int-to-float v1, v1

    mul-float v5, v5, v1

    add-float v27, v27, v5

    move-object/from16 v35, v2

    float-to-double v1, v6

    iget v6, v3, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    move/from16 v36, v7

    float-to-double v6, v6

    move-object/from16 v37, v8

    move/from16 v38, v9

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v6

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v6

    double-to-float v6, v1

    iget v1, v3, Lcom/prineside/tdi2/EnemyGroup;->count:I

    int-to-float v2, v1

    iget v5, v3, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    mul-float v2, v2, v5

    add-float v29, v29, v2

    int-to-float v2, v1

    iget v5, v3, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    mul-float v2, v2, v5

    add-float v30, v30, v2

    iget v2, v3, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    mul-int v1, v1, v2

    add-int v31, v31, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, v3, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v3, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v3, Lcom/prineside/tdi2/EnemyGroup;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v3, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v3, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v7, v36

    move-object/from16 v8, v37

    move/from16 v9, v38

    goto/16 :goto_4

    :cond_2
    move-object/from16 v34, v1

    move-object/from16 v35, v2

    move/from16 v36, v7

    move-object/from16 v37, v8

    move/from16 v38, v9

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    move/from16 v1, v38

    int-to-float v1, v1

    move/from16 v3, v36

    move-object/from16 v2, v37

    invoke-virtual {v2, v3, v1, v4}, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->getProbability(IFF)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v4, v35

    invoke-virtual {v0, v4, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {v27 .. v27}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v5, v34

    invoke-virtual {v0, v5, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v6, v32

    invoke-virtual {v0, v6, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {v29 .. v29}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v7, v28

    invoke-virtual {v0, v7, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {v30 .. v30}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v8, v25

    invoke-virtual {v0, v8, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v9, v19

    invoke-virtual {v0, v9, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v1, v3, 0x1

    move-object v3, v6

    move-object v6, v7

    move-object/from16 v15, v26

    const/16 v9, 0x4b

    move v7, v1

    move-object v1, v5

    move-object v5, v8

    move-object v8, v2

    move-object v2, v4

    move-object/from16 v4, v24

    goto/16 :goto_3

    :cond_3
    move-object/from16 v24, v4

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    add-int/lit8 v9, v23, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v8, v21

    move-object/from16 v7, v22

    const/16 v3, 0x4b

    goto/16 :goto_2

    :cond_4
    move-object/from16 v24, v4

    move-object v8, v5

    move-object v7, v6

    move-object/from16 v26, v15

    move-object/from16 v9, v19

    move-object v5, v1

    move-object v4, v2

    move-object v6, v3

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->values:[Lcom/prineside/tdi2/enums/BossType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_7

    aget-object v15, v1, v3

    move-object/from16 v19, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    invoke-virtual {v1, v15}, Lcom/prineside/tdi2/managers/WaveManager;->getWaveProcessorFactory(Lcom/prineside/tdi2/enums/BossType;)Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;->create()Lcom/prineside/tdi2/WaveProcessor;

    move-result-object v1

    move/from16 v21, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " Boss"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v15, 0x4b

    :goto_6
    if-gt v2, v15, :cond_6

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    add-int/lit8 v16, v2, -0x1

    aget v15, v24, v16

    invoke-virtual {v1, v2, v15}, Lcom/prineside/tdi2/WaveProcessor;->generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    move/from16 v30, v2

    move/from16 v25, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_7
    iget v2, v15, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_5

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/EnemyGroup;

    move-object/from16 v31, v15

    iget v15, v2, Lcom/prineside/tdi2/EnemyGroup;->health:F

    move-object/from16 v32, v9

    iget v9, v2, Lcom/prineside/tdi2/EnemyGroup;->count:I

    int-to-float v9, v9

    mul-float v15, v15, v9

    add-float v23, v23, v15

    move-object/from16 v33, v8

    float-to-double v8, v3

    iget v3, v2, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    float-to-double v6, v3

    move-object/from16 v36, v4

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v3, v4}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v6

    float-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v6

    double-to-float v3, v8

    iget v4, v2, Lcom/prineside/tdi2/EnemyGroup;->count:I

    int-to-float v6, v4

    iget v7, v2, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    mul-float v6, v6, v7

    add-float v27, v27, v6

    int-to-float v6, v4

    iget v7, v2, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    mul-float v6, v6, v7

    add-float v28, v28, v6

    iget v6, v2, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    mul-int v4, v4, v6

    add-int v29, v29, v4

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v4, v2, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v14, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v4, v2, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v13, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v4, v2, Lcom/prineside/tdi2/EnemyGroup;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v12, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v4, v2, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v11, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, v2, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    move-object/from16 v8, v33

    move-object/from16 v6, v34

    move-object/from16 v7, v35

    move-object/from16 v4, v36

    goto/16 :goto_7

    :cond_5
    move-object/from16 v36, v4

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v33, v8

    move-object/from16 v32, v9

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v1, "1"

    move-object/from16 v2, v36

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {v23 .. v23}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, v34

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {v27 .. v27}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v4, v35

    invoke-virtual {v0, v4, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {v28 .. v28}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v6, v33

    invoke-virtual {v0, v6, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v7, v32

    invoke-virtual {v0, v7, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v1, v30, 0x1

    move-object v8, v6

    move-object v9, v7

    const/16 v15, 0x4b

    move-object v6, v3

    move-object v7, v4

    move/from16 v3, v25

    move-object v4, v2

    move v2, v1

    move-object/from16 v1, v16

    goto/16 :goto_6

    :cond_6
    move/from16 v25, v3

    move-object v2, v4

    move-object v3, v6

    move-object v4, v7

    move-object v6, v8

    move-object v7, v9

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    add-int/lit8 v1, v25, 0x1

    move-object v6, v3

    move-object v7, v4

    move v3, v1

    move-object v4, v2

    move-object/from16 v1, v19

    move/from16 v2, v21

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "../../asset sources/waves-report/report.json"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "../../asset sources/waves-report/report.js"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, v17

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v1, "failed to write resources file"

    move-object/from16 v2, v17

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    const-string v0, "Done"

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
