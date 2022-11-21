.class public Lcom/prineside/tdi2/SpaceTileBonus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;
    }
.end annotation


# static fields
.field public static final MAX_LEVEL:I = 0x5

.field public static final a:[Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

.field public static final b:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

.field public static final c:[Lcom/prineside/tdi2/enums/TowerStatType;

.field public static final d:Lcom/badlogic/gdx/utils/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    sget-object v0, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->values:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    sput-object v0, Lcom/prineside/tdi2/SpaceTileBonus;->a:[Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    sget-object v7, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->RANGE:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    new-instance v9, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    const/4 v10, 0x5

    new-array v4, v10, [F

    fill-array-data v4, :array_0

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "icon-range"

    move-object v1, v9

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;-><init>(Lcom/prineside/tdi2/enums/SpaceTileBonusType;Ljava/lang/String;[FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v9, v0, v8

    sget-object v1, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->DAMAGE:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    new-array v14, v10, [F

    fill-array-data v14, :array_1

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P300:Lcom/badlogic/gdx/graphics/Color;

    const-string v13, "icon-damage"

    move-object v11, v3

    move-object v12, v1

    invoke-direct/range {v11 .. v16}, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;-><init>(Lcom/prineside/tdi2/enums/SpaceTileBonusType;Ljava/lang/String;[FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    new-array v5, v10, [F

    fill-array-data v5, :array_2

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const-string v19, "icon-attack-speed"

    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v20, v5

    invoke-direct/range {v17 .. v22}, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;-><init>(Lcom/prineside/tdi2/enums/SpaceTileBonusType;Ljava/lang/String;[FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v4, v0, v3

    sget-object v3, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    new-instance v5, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    new-array v14, v10, [F

    fill-array-data v14, :array_3

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const-string v13, "icon-rotation-speed"

    move-object v11, v5

    move-object v12, v3

    invoke-direct/range {v11 .. v16}, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;-><init>(Lcom/prineside/tdi2/enums/SpaceTileBonusType;Ljava/lang/String;[FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v5, v0, v4

    sget-object v4, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    new-array v8, v10, [F

    fill-array-data v8, :array_4

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const-string v19, "icon-projectile-speed"

    move-object/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v20, v8

    invoke-direct/range {v17 .. v22}, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;-><init>(Lcom/prineside/tdi2/enums/SpaceTileBonusType;Ljava/lang/String;[FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v6, v0, v5

    sget-object v12, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->BONUS_EXPERIENCE:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    new-array v14, v10, [F

    fill-array-data v14, :array_5

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const-string v13, "icon-experience-plus"

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;-><init>(Lcom/prineside/tdi2/enums/SpaceTileBonusType;Ljava/lang/String;[FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v6, v0, v5

    sget-object v18, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->BONUS_COINS:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    new-array v8, v10, [F

    fill-array-data v8, :array_6

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P300:Lcom/badlogic/gdx/graphics/Color;

    const-string v19, "icon-coins"

    move-object/from16 v17, v6

    move-object/from16 v20, v8

    invoke-direct/range {v17 .. v22}, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;-><init>(Lcom/prineside/tdi2/enums/SpaceTileBonusType;Ljava/lang/String;[FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v6, v0, v5

    sget-object v12, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->UPGRADE_DISCOUNT:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    new-array v14, v10, [F

    fill-array-data v14, :array_7

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P300:Lcom/badlogic/gdx/graphics/Color;

    const-string v13, "icon-upgrade-money"

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;-><init>(Lcom/prineside/tdi2/enums/SpaceTileBonusType;Ljava/lang/String;[FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v6, v0, v5

    sget-object v18, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->SELL_REFUND:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    new-array v8, v10, [F

    fill-array-data v8, :array_8

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P300:Lcom/badlogic/gdx/graphics/Color;

    const-string v19, "icon-sell-refund"

    move-object/from16 v17, v6

    move-object/from16 v20, v8

    invoke-direct/range {v17 .. v22}, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;-><init>(Lcom/prineside/tdi2/enums/SpaceTileBonusType;Ljava/lang/String;[FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v6, v0, v5

    sget-object v12, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->PWR_MULTIPLIER:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    new-array v14, v10, [F

    fill-array-data v14, :array_9

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P300:Lcom/badlogic/gdx/graphics/Color;

    const-string v13, "icon-power-plus"

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;-><init>(Lcom/prineside/tdi2/enums/SpaceTileBonusType;Ljava/lang/String;[FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v6, v0, v5

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->values:[Lcom/prineside/tdi2/enums/TowerStatType;

    array-length v5, v0

    new-array v5, v5, [Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    sput-object v5, Lcom/prineside/tdi2/SpaceTileBonus;->b:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    sget-object v6, Lcom/prineside/tdi2/enums/TowerStatType;->RANGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput-object v7, v5, v6

    sget-object v6, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput-object v1, v5, v6

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-object v2, v5, v1

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-object v3, v5, v1

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-object v4, v5, v1

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/enums/TowerStatType;

    sput-object v0, Lcom/prineside/tdi2/SpaceTileBonus;->c:[Lcom/prineside/tdi2/enums/TowerStatType;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->values:[Lcom/prineside/tdi2/enums/TowerStatType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/SpaceTileBonus;->b:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    sget-object v3, Lcom/prineside/tdi2/SpaceTileBonus;->c:[Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-object v1, v3, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/SpaceTileBonus;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void

    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
        0x3fb33333    # 1.4f
        0x3fc00000    # 1.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f933333    # 1.15f
        0x3fa66666    # 1.3f
        0x3fc00000    # 1.5f
        0x3fd9999a    # 1.7f
        0x40000000    # 2.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f933333    # 1.15f
        0x3fa66666    # 1.3f
        0x3fc00000    # 1.5f
        0x3fd9999a    # 1.7f
        0x40000000    # 2.0f
    .end array-data

    :array_3
    .array-data 4
        0x3fa66666    # 1.3f
        0x3fcccccd    # 1.6f
        0x40000000    # 2.0f
        0x4019999a    # 2.4f
        0x40400000    # 3.0f
    .end array-data

    :array_4
    .array-data 4
        0x3fa66666    # 1.3f
        0x3fcccccd    # 1.6f
        0x40000000    # 2.0f
        0x4019999a    # 2.4f
        0x40400000    # 3.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f933333    # 1.15f
        0x3fa66666    # 1.3f
        0x3fc00000    # 1.5f
        0x3fd9999a    # 1.7f
        0x40000000    # 2.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
        0x3fb33333    # 1.4f
        0x3fc00000    # 1.5f
    .end array-data

    :array_7
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f75c28f    # 0.96f
        0x3f70a3d7    # 0.94f
        0x3f6b851f    # 0.92f
        0x3f666666    # 0.9f
    .end array-data

    :array_8
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f59999a    # 0.85f
        0x3f666666    # 0.9f
        0x3f733333    # 0.95f
        0x3f7d70a4    # 0.99f
    .end array-data

    :array_9
    .array-data 4
        0x3f866666    # 1.05f
        0x3f8ccccd    # 1.1f
        0x3f933333    # 1.15f
        0x3f99999a    # 1.2f
        0x3fa00000    # 1.25f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrightColor(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/SpaceTileBonus;->a:[Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    iget-object p0, p0, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;->e:Lcom/badlogic/gdx/graphics/Color;

    return-object p0
.end method

.method public static getColor(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/SpaceTileBonus;->a:[Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    iget-object p0, p0, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;->d:Lcom/badlogic/gdx/graphics/Color;

    return-object p0
.end method

.method public static getDetailedName(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/SpaceTileBonus;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    sget-object v3, Lcom/prineside/tdi2/SpaceTileBonus;->a:[Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    aget-object v1, v3, v1

    iget-object v1, v1, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    if-lez p1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/prineside/tdi2/utils/StringFormatter;->romanNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    const-string v1, " ("

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/prineside/tdi2/SpaceTileBonus;->getEffect(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p0, p0, p1

    invoke-static {p0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p0

    const-string p1, "%)"

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public static getEffect(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)F
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x5

    if-gt p1, v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/SpaceTileBonus;->a:[Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v1, p0

    iget-object p0, p0, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;->a:[F

    sub-int/2addr p1, v0

    aget p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max space tile bonus level is 5, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " given"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level is 0 for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getIconName(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/SpaceTileBonus;->a:[Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    iget-object p0, p0, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;->c:Ljava/lang/String;

    return-object p0
.end method
