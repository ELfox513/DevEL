.class public Lcom/prineside/tdi2/managers/TowerStatManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/TowerStatManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;,
        Lcom/prineside/tdi2/managers/TowerStatManager$Serializer;
    }
.end annotation


# static fields
.field public static final b:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final d:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final a:[Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/TowerStatManager;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/TowerStatManager;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->values:[Lcom/prineside/tdi2/enums/TowerStatType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/TowerStatManager;->a:[Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->RANGE:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "icon-range"

    const-string v4, "measure_units_tiles"

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "icon-damage"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, "icon-attack-speed"

    const-string v7, "measure_units_units_per_second"

    invoke-virtual {p0, v1, v6, v3, v7}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, "icon-rotation-speed"

    const-string v7, "measure_units_degrees_per_second"

    invoke-virtual {p0, v1, v6, v3, v7}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, "icon-projectile-speed"

    const-string v7, "measure_units_tiles_per_second"

    invoke-virtual {p0, v1, v6, v3, v7}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->AIM_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, "icon-aim-time"

    const-string v7, "measure_units_percent_per_second"

    invoke-virtual {p0, v1, v6, v3, v7}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->CHARGING_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v1, v6, v3, v7}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->FREEZE_PERCENT:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, "icon-freeze-percent"

    const-string v8, "measure_units_percent"

    invoke-virtual {p0, v1, v6, v3, v8}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->FREEZE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, "icon-freeze-in-time"

    invoke-virtual {p0, v1, v6, v3, v7}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ACCURACY:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, "icon-crosshair"

    invoke-virtual {p0, v1, v6, v3, v8}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->STUN_CHANCE:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, "icon-stun"

    invoke-virtual {p0, v1, v6, v3, v8}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->CHAIN_LIGHTNING_DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, "icon-lightning-damage"

    invoke-virtual {p0, v1, v6, v3, v8}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->RESOURCE_CONSUMPTION:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v3, "icon-cubes-stacked-flame"

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->DURATION:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "icon-clock"

    const-string v6, "measure_units_seconds"

    invoke-virtual {p0, v1, v3, v2, v6}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->PRICE:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "icon-dollar"

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->STARTING_LEVEL:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v3, "icon-experience-bar"

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->STARTING_POWER:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v3, "icon-power"

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->MAX_EXP_LEVEL:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v3, "icon-experience-max"

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->MAX_UPGRADE_LEVEL:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v3, "icon-upgrade-max"

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->EXPERIENCE_MULTIPLIER:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v3, "icon-experience-plus"

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->EXPERIENCE_GENERATION:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v9, "icon-experience-generation"

    invoke-virtual {p0, v1, v9, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->UPGRADE_PRICE:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v9, "icon-upgrade-money"

    invoke-virtual {p0, v1, v9, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_DAMAGE_MULTIPLY:Lcom/prineside/tdi2/enums/TowerStatType;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P600:Lcom/badlogic/gdx/graphics/Color;

    const-string v9, "icon-damage-multiplier"

    invoke-virtual {p0, v1, v9, v2, v8}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_CRIT_CHANCE:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v9, "icon-critical-damage-percent"

    invoke-virtual {p0, v1, v9, v2, v8}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_CRIT_MULTIPLIER:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v9, "icon-critical-damage"

    invoke-virtual {p0, v1, v9, v2, v8}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_EXPLOSION_RANGE:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v9, "icon-explosion-range"

    invoke-virtual {p0, v1, v9, v2, v4}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_POISON_DURATION_BONUS:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v4, "icon-skull-and-bones-clock-plus"

    invoke-virtual {p0, v1, v4, v2, v6}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_CHAIN_LIGHTNING_BONUS_LENGTH:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v4, "icon-lightning-length"

    invoke-virtual {p0, v1, v4, v2, v8}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_POISON_DURATION:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v9, "icon-skull-and-bones-clock"

    invoke-virtual {p0, v1, v9, v2, v6}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_PROJECTILE_COUNT:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v9, "icon-projectile-count"

    invoke-virtual {p0, v1, v9, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_STUN_DURATION:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v9, "icon-stun-clock"

    invoke-virtual {p0, v1, v9, v2, v6}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_BURN_CHANCE:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v9, "icon-flame-percent"

    invoke-virtual {p0, v1, v9, v2, v8}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_ACCELERATION:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v9, "icon-speedometer-clock"

    invoke-virtual {p0, v1, v9, v2, v7}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_SHOOT_ANGLE:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v9, "icon-shot-angle"

    const-string v10, "measure_units_degrees"

    invoke-virtual {p0, v1, v9, v2, v10}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_CHAIN_LIGHTNING_LENGTH:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_LRM_AIM_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v4, "icon-rocket-aim-time"

    invoke-virtual {p0, v1, v4, v2, v7}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_BURNING_TIME:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v4, "icon-flame-clock"

    invoke-virtual {p0, v1, v4, v2, v6}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_BATTERIES_CAPACITY:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v4, "icon-battery-max"

    invoke-virtual {p0, v1, v4, v2, v6}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_BONUS_COINS:Lcom/prineside/tdi2/enums/TowerStatType;

    const-string v4, "icon-coin"

    invoke-virtual {p0, v1, v4, v2, v8}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_BONUS_EXPERIENCE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v1, v3, v2, v8}, Lcom/prineside/tdi2/managers/TowerStatManager;->c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/TowerStatManager;->a:[Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tower stat type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static synthetic a()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/TowerStatManager;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public static synthetic b()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/TowerStatManager;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public final c(Lcom/prineside/tdi2/enums/TowerStatType;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;-><init>()V

    invoke-static {v0, p1}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->a(Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;Lcom/prineside/tdi2/enums/TowerStatType;)Lcom/prineside/tdi2/enums/TowerStatType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tower_stat_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->b(Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tower_stat_short_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->c(Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;Ljava/lang/String;)Ljava/lang/String;

    iput-object p4, v0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->unitsAlias:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->d(Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->e(Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object p2, p0, Lcom/prineside/tdi2/managers/TowerStatManager;->a:[Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-object v0, p2, p1

    return-void
.end method

.method public getInstance(Lcom/prineside/tdi2/enums/TowerStatType;)Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerStatManager;->a:[Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method

.method public test()V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->values:[Lcom/prineside/tdi2/enums/TowerStatType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerStatManager;->a:[Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->getIconDrawableAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Icon texture region is null for stat type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TowerStatManager"

    invoke-static {v4, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
