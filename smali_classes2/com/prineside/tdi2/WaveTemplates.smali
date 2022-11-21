.class public Lcom/prineside/tdi2/WaveTemplates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;,
        Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;,
        Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;
    }
.end annotation


# static fields
.field public static final ARMORED_LOW:Lcom/prineside/tdi2/waves/templates/ArmoredLow;

.field public static final ARMORED_REGULAR:Lcom/prineside/tdi2/waves/templates/ArmoredRegular;

.field public static final ARMORED_STRONG:Lcom/prineside/tdi2/waves/templates/ArmoredStrong;

.field public static final FAST_HIGH:Lcom/prineside/tdi2/waves/templates/FastHigh;

.field public static final FAST_LOW:Lcom/prineside/tdi2/waves/templates/FastLow;

.field public static final FAST_MEDIUM:Lcom/prineside/tdi2/waves/templates/FastMedium;

.field public static final FIGHTER_ARMORED:Lcom/prineside/tdi2/waves/templates/FighterArmored;

.field public static final FIGHTER_LOW:Lcom/prineside/tdi2/waves/templates/FighterLow;

.field public static final FIGHTER_MEDIUM:Lcom/prineside/tdi2/waves/templates/FighterMedium;

.field public static final HEALER_ARMORED:Lcom/prineside/tdi2/waves/templates/HealerArmored;

.field public static final HEALER_ICY:Lcom/prineside/tdi2/waves/templates/HealerIcy;

.field public static final HEALER_JET:Lcom/prineside/tdi2/waves/templates/HealerJet;

.field public static final HEALER_REGULAR:Lcom/prineside/tdi2/waves/templates/HealerRegular;

.field public static final HEALER_SLOW:Lcom/prineside/tdi2/waves/templates/HealerSlow;

.field public static final HEALER_STRONG:Lcom/prineside/tdi2/waves/templates/HealerStrong;

.field public static final HELI_MEDIUM:Lcom/prineside/tdi2/waves/templates/HeliMedium;

.field public static final ICY_HIGH:Lcom/prineside/tdi2/waves/templates/IcyHigh;

.field public static final ICY_TOXIC:Lcom/prineside/tdi2/waves/templates/IcyToxic;

.field public static final JET_MEDIUM:Lcom/prineside/tdi2/waves/templates/JetMedium;

.field public static final LIGHT_FAST:Lcom/prineside/tdi2/waves/templates/LightFast;

.field public static final LIGHT_HIGH:Lcom/prineside/tdi2/waves/templates/LightHigh;

.field public static final LIGHT_MEDIUM:Lcom/prineside/tdi2/waves/templates/LightMedium;

.field public static final REGULAR_HIGH:Lcom/prineside/tdi2/waves/templates/RegularHigh;

.field public static final REGULAR_LOW:Lcom/prineside/tdi2/waves/templates/RegularLow;

.field public static final REGULAR_MEDIUM:Lcom/prineside/tdi2/waves/templates/RegularMedium;

.field public static final STRONG_LOW:Lcom/prineside/tdi2/waves/templates/StrongLow;

.field public static final STRONG_MEDIUM:Lcom/prineside/tdi2/waves/templates/StrongMedium;

.field public static final TOXIC_ARMORED:Lcom/prineside/tdi2/waves/templates/ToxicArmored;

.field public static final TOXIC_HIGH:Lcom/prineside/tdi2/waves/templates/ToxicHigh;

.field public static final TOXIC_MEDIUM:Lcom/prineside/tdi2/waves/templates/ToxicMedium;

.field public static final WAVE_TEMPLATES:[Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    new-instance v0, Lcom/prineside/tdi2/waves/templates/RegularMedium;

    invoke-direct {v0}, Lcom/prineside/tdi2/waves/templates/RegularMedium;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/WaveTemplates;->REGULAR_MEDIUM:Lcom/prineside/tdi2/waves/templates/RegularMedium;

    new-instance v1, Lcom/prineside/tdi2/waves/templates/RegularLow;

    invoke-direct {v1}, Lcom/prineside/tdi2/waves/templates/RegularLow;-><init>()V

    sput-object v1, Lcom/prineside/tdi2/WaveTemplates;->REGULAR_LOW:Lcom/prineside/tdi2/waves/templates/RegularLow;

    new-instance v2, Lcom/prineside/tdi2/waves/templates/RegularHigh;

    invoke-direct {v2}, Lcom/prineside/tdi2/waves/templates/RegularHigh;-><init>()V

    sput-object v2, Lcom/prineside/tdi2/WaveTemplates;->REGULAR_HIGH:Lcom/prineside/tdi2/waves/templates/RegularHigh;

    new-instance v3, Lcom/prineside/tdi2/waves/templates/StrongMedium;

    invoke-direct {v3}, Lcom/prineside/tdi2/waves/templates/StrongMedium;-><init>()V

    sput-object v3, Lcom/prineside/tdi2/WaveTemplates;->STRONG_MEDIUM:Lcom/prineside/tdi2/waves/templates/StrongMedium;

    new-instance v4, Lcom/prineside/tdi2/waves/templates/StrongLow;

    invoke-direct {v4}, Lcom/prineside/tdi2/waves/templates/StrongLow;-><init>()V

    sput-object v4, Lcom/prineside/tdi2/WaveTemplates;->STRONG_LOW:Lcom/prineside/tdi2/waves/templates/StrongLow;

    new-instance v5, Lcom/prineside/tdi2/waves/templates/FastMedium;

    invoke-direct {v5}, Lcom/prineside/tdi2/waves/templates/FastMedium;-><init>()V

    sput-object v5, Lcom/prineside/tdi2/WaveTemplates;->FAST_MEDIUM:Lcom/prineside/tdi2/waves/templates/FastMedium;

    new-instance v6, Lcom/prineside/tdi2/waves/templates/FastHigh;

    invoke-direct {v6}, Lcom/prineside/tdi2/waves/templates/FastHigh;-><init>()V

    sput-object v6, Lcom/prineside/tdi2/WaveTemplates;->FAST_HIGH:Lcom/prineside/tdi2/waves/templates/FastHigh;

    new-instance v7, Lcom/prineside/tdi2/waves/templates/FastLow;

    invoke-direct {v7}, Lcom/prineside/tdi2/waves/templates/FastLow;-><init>()V

    sput-object v7, Lcom/prineside/tdi2/WaveTemplates;->FAST_LOW:Lcom/prineside/tdi2/waves/templates/FastLow;

    new-instance v8, Lcom/prineside/tdi2/waves/templates/HeliMedium;

    invoke-direct {v8}, Lcom/prineside/tdi2/waves/templates/HeliMedium;-><init>()V

    sput-object v8, Lcom/prineside/tdi2/WaveTemplates;->HELI_MEDIUM:Lcom/prineside/tdi2/waves/templates/HeliMedium;

    new-instance v9, Lcom/prineside/tdi2/waves/templates/JetMedium;

    invoke-direct {v9}, Lcom/prineside/tdi2/waves/templates/JetMedium;-><init>()V

    sput-object v9, Lcom/prineside/tdi2/WaveTemplates;->JET_MEDIUM:Lcom/prineside/tdi2/waves/templates/JetMedium;

    new-instance v10, Lcom/prineside/tdi2/waves/templates/ArmoredLow;

    invoke-direct {v10}, Lcom/prineside/tdi2/waves/templates/ArmoredLow;-><init>()V

    sput-object v10, Lcom/prineside/tdi2/WaveTemplates;->ARMORED_LOW:Lcom/prineside/tdi2/waves/templates/ArmoredLow;

    new-instance v11, Lcom/prineside/tdi2/waves/templates/ArmoredRegular;

    invoke-direct {v11}, Lcom/prineside/tdi2/waves/templates/ArmoredRegular;-><init>()V

    sput-object v11, Lcom/prineside/tdi2/WaveTemplates;->ARMORED_REGULAR:Lcom/prineside/tdi2/waves/templates/ArmoredRegular;

    new-instance v12, Lcom/prineside/tdi2/waves/templates/ArmoredStrong;

    invoke-direct {v12}, Lcom/prineside/tdi2/waves/templates/ArmoredStrong;-><init>()V

    sput-object v12, Lcom/prineside/tdi2/WaveTemplates;->ARMORED_STRONG:Lcom/prineside/tdi2/waves/templates/ArmoredStrong;

    new-instance v13, Lcom/prineside/tdi2/waves/templates/HealerRegular;

    invoke-direct {v13}, Lcom/prineside/tdi2/waves/templates/HealerRegular;-><init>()V

    sput-object v13, Lcom/prineside/tdi2/WaveTemplates;->HEALER_REGULAR:Lcom/prineside/tdi2/waves/templates/HealerRegular;

    new-instance v14, Lcom/prineside/tdi2/waves/templates/HealerSlow;

    invoke-direct {v14}, Lcom/prineside/tdi2/waves/templates/HealerSlow;-><init>()V

    sput-object v14, Lcom/prineside/tdi2/WaveTemplates;->HEALER_SLOW:Lcom/prineside/tdi2/waves/templates/HealerSlow;

    new-instance v15, Lcom/prineside/tdi2/waves/templates/HealerStrong;

    invoke-direct {v15}, Lcom/prineside/tdi2/waves/templates/HealerStrong;-><init>()V

    sput-object v15, Lcom/prineside/tdi2/WaveTemplates;->HEALER_STRONG:Lcom/prineside/tdi2/waves/templates/HealerStrong;

    new-instance v16, Lcom/prineside/tdi2/waves/templates/HealerArmored;

    invoke-direct/range {v16 .. v16}, Lcom/prineside/tdi2/waves/templates/HealerArmored;-><init>()V

    sput-object v16, Lcom/prineside/tdi2/WaveTemplates;->HEALER_ARMORED:Lcom/prineside/tdi2/waves/templates/HealerArmored;

    new-instance v17, Lcom/prineside/tdi2/waves/templates/HealerJet;

    invoke-direct/range {v17 .. v17}, Lcom/prineside/tdi2/waves/templates/HealerJet;-><init>()V

    sput-object v17, Lcom/prineside/tdi2/WaveTemplates;->HEALER_JET:Lcom/prineside/tdi2/waves/templates/HealerJet;

    new-instance v18, Lcom/prineside/tdi2/waves/templates/ToxicMedium;

    invoke-direct/range {v18 .. v18}, Lcom/prineside/tdi2/waves/templates/ToxicMedium;-><init>()V

    sput-object v18, Lcom/prineside/tdi2/WaveTemplates;->TOXIC_MEDIUM:Lcom/prineside/tdi2/waves/templates/ToxicMedium;

    new-instance v19, Lcom/prineside/tdi2/waves/templates/ToxicHigh;

    invoke-direct/range {v19 .. v19}, Lcom/prineside/tdi2/waves/templates/ToxicHigh;-><init>()V

    sput-object v19, Lcom/prineside/tdi2/WaveTemplates;->TOXIC_HIGH:Lcom/prineside/tdi2/waves/templates/ToxicHigh;

    new-instance v20, Lcom/prineside/tdi2/waves/templates/ToxicArmored;

    invoke-direct/range {v20 .. v20}, Lcom/prineside/tdi2/waves/templates/ToxicArmored;-><init>()V

    sput-object v20, Lcom/prineside/tdi2/WaveTemplates;->TOXIC_ARMORED:Lcom/prineside/tdi2/waves/templates/ToxicArmored;

    new-instance v21, Lcom/prineside/tdi2/waves/templates/IcyHigh;

    invoke-direct/range {v21 .. v21}, Lcom/prineside/tdi2/waves/templates/IcyHigh;-><init>()V

    sput-object v21, Lcom/prineside/tdi2/WaveTemplates;->ICY_HIGH:Lcom/prineside/tdi2/waves/templates/IcyHigh;

    new-instance v22, Lcom/prineside/tdi2/waves/templates/IcyToxic;

    invoke-direct/range {v22 .. v22}, Lcom/prineside/tdi2/waves/templates/IcyToxic;-><init>()V

    sput-object v22, Lcom/prineside/tdi2/WaveTemplates;->ICY_TOXIC:Lcom/prineside/tdi2/waves/templates/IcyToxic;

    new-instance v23, Lcom/prineside/tdi2/waves/templates/HealerIcy;

    invoke-direct/range {v23 .. v23}, Lcom/prineside/tdi2/waves/templates/HealerIcy;-><init>()V

    sput-object v23, Lcom/prineside/tdi2/WaveTemplates;->HEALER_ICY:Lcom/prineside/tdi2/waves/templates/HealerIcy;

    new-instance v24, Lcom/prineside/tdi2/waves/templates/FighterLow;

    invoke-direct/range {v24 .. v24}, Lcom/prineside/tdi2/waves/templates/FighterLow;-><init>()V

    sput-object v24, Lcom/prineside/tdi2/WaveTemplates;->FIGHTER_LOW:Lcom/prineside/tdi2/waves/templates/FighterLow;

    new-instance v25, Lcom/prineside/tdi2/waves/templates/FighterMedium;

    invoke-direct/range {v25 .. v25}, Lcom/prineside/tdi2/waves/templates/FighterMedium;-><init>()V

    sput-object v25, Lcom/prineside/tdi2/WaveTemplates;->FIGHTER_MEDIUM:Lcom/prineside/tdi2/waves/templates/FighterMedium;

    new-instance v26, Lcom/prineside/tdi2/waves/templates/FighterArmored;

    invoke-direct/range {v26 .. v26}, Lcom/prineside/tdi2/waves/templates/FighterArmored;-><init>()V

    sput-object v26, Lcom/prineside/tdi2/WaveTemplates;->FIGHTER_ARMORED:Lcom/prineside/tdi2/waves/templates/FighterArmored;

    new-instance v27, Lcom/prineside/tdi2/waves/templates/LightMedium;

    invoke-direct/range {v27 .. v27}, Lcom/prineside/tdi2/waves/templates/LightMedium;-><init>()V

    sput-object v27, Lcom/prineside/tdi2/WaveTemplates;->LIGHT_MEDIUM:Lcom/prineside/tdi2/waves/templates/LightMedium;

    new-instance v28, Lcom/prineside/tdi2/waves/templates/LightHigh;

    invoke-direct/range {v28 .. v28}, Lcom/prineside/tdi2/waves/templates/LightHigh;-><init>()V

    sput-object v28, Lcom/prineside/tdi2/WaveTemplates;->LIGHT_HIGH:Lcom/prineside/tdi2/waves/templates/LightHigh;

    new-instance v29, Lcom/prineside/tdi2/waves/templates/LightFast;

    invoke-direct/range {v29 .. v29}, Lcom/prineside/tdi2/waves/templates/LightFast;-><init>()V

    sput-object v29, Lcom/prineside/tdi2/WaveTemplates;->LIGHT_FAST:Lcom/prineside/tdi2/waves/templates/LightFast;

    move-object/from16 v30, v15

    const/16 v15, 0x1e

    new-array v15, v15, [Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    const/16 v31, 0x0

    aput-object v0, v15, v31

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v0, 0x2

    aput-object v2, v15, v0

    const/4 v0, 0x3

    aput-object v3, v15, v0

    const/4 v0, 0x4

    aput-object v4, v15, v0

    const/4 v0, 0x5

    aput-object v5, v15, v0

    const/4 v0, 0x6

    aput-object v6, v15, v0

    const/4 v0, 0x7

    aput-object v7, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v9, v15, v0

    const/16 v0, 0xa

    aput-object v10, v15, v0

    const/16 v0, 0xb

    aput-object v11, v15, v0

    const/16 v0, 0xc

    aput-object v12, v15, v0

    const/16 v0, 0xd

    aput-object v13, v15, v0

    const/16 v0, 0xe

    aput-object v14, v15, v0

    const/16 v0, 0xf

    aput-object v30, v15, v0

    const/16 v0, 0x10

    aput-object v16, v15, v0

    const/16 v0, 0x11

    aput-object v17, v15, v0

    const/16 v0, 0x12

    aput-object v18, v15, v0

    const/16 v0, 0x13

    aput-object v19, v15, v0

    const/16 v0, 0x14

    aput-object v20, v15, v0

    const/16 v0, 0x15

    aput-object v21, v15, v0

    const/16 v0, 0x16

    aput-object v22, v15, v0

    const/16 v0, 0x17

    aput-object v23, v15, v0

    const/16 v0, 0x18

    aput-object v24, v15, v0

    const/16 v0, 0x19

    aput-object v25, v15, v0

    const/16 v0, 0x1a

    aput-object v26, v15, v0

    const/16 v0, 0x1b

    aput-object v27, v15, v0

    const/16 v0, 0x1c

    aput-object v28, v15, v0

    const/16 v0, 0x1d

    aput-object v29, v15, v0

    sput-object v15, Lcom/prineside/tdi2/WaveTemplates;->WAVE_TEMPLATES:[Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateProbability(IFIFFFFFFI)I
    .locals 3

    int-to-float p2, p2

    const/4 v0, 0x1

    cmpg-float v1, p1, p2

    if-gez v1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

    sub-float p2, p1, p2

    mul-float p2, p2, p3

    const/4 p3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p2, p3, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Interpolation$Pow;->apply(F)F

    move-result p2

    sub-float/2addr v2, p4

    int-to-float p0, p0

    mul-float p0, p0, p5

    add-float/2addr p0, p6

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/StrictMath;->abs(F)F

    move-result p0

    mul-float p0, p0, p4

    add-float/2addr v2, p0

    mul-float p8, p8, p1

    float-to-int p0, p8

    int-to-float p0, p0

    sub-float/2addr p7, p0

    mul-float p7, p7, v2

    mul-float p7, p7, p2

    float-to-int p0, p7

    if-ge p0, p9, :cond_1

    const/high16 p2, 0x41a00000    # 20.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move p9, p0

    :goto_0
    if-ge p9, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, p9

    :goto_1
    return v0
.end method
