.class public Lcom/prineside/tdi2/AndroidLauncher;
.super Lcom/badlogic/gdx/backends/android/AndroidApplication;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;
    }
.end annotation


# static fields
.field public static final F:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static G:Ljava/lang/String;

.field public static H:Z

.field public static I:Z


# instance fields
.field public A:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public B:Lq3/b;

.field public C:Lcom/badlogic/gdx/pay/PurchaseManager;

.field public D:Lk5/c;

.field public E:Z

.field public k:Lcom/prineside/tdi2/utils/ObjectRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lj3/b;

.field public q:Lk3/a;

.field public r:Lc3/a;

.field public s:Lcom/prineside/tdi2/Game$GameListener;

.field public t:Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

.field public final u:Landroid/graphics/Rect;

.field public v:Lcom/prineside/tdi2/Game;

.field public w:Landroid/os/Handler;

.field public x:Lcom/badlogic/gdx/Preferences;

.field public final y:Lcom/badlogic/gdx/utils/IntArray;

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/AndroidLauncher;->F:Lcom/badlogic/gdx/utils/IntMap;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->TUTORIALS_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQAQ"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->STAGE_1_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQAg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->STAGE_2_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQAw"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->STAGE_3_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQBA"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->STAGE_4_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQBQ"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->STAGE_5_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQBg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->FIVE_HUNDRED_RESEARCH:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQLg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->FULL_REGULAR_RESEARCH:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQBw"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->MILLION_SCORE_ONE_GAME:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQCA"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->PRESTIGE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQCg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->HUNDRED_TILE_CUSTOM_MAP:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQCw"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->FIVE_HUNDRED_TILE_CUSTOM_MAP:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQDA"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->FAST_BOSS_KILL:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQDQ"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->EVERY_ENEMY_MET:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQDg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->UNLOCK_ALL_TROPHIES:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQDw"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->MILLION_PAPERS:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQEA"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->MILLION_MDPS_ONE_GAME:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQEQ"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->REACH_HIGH_WAVE_ONE_GAME:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQEg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->KILL_MILLION_ENEMIES:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQEw"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->KILL_TEN_MILLION_ENEMIES:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQFA"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->HUNDRED_KILLS_NUKE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQFQ"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->COPY_TOWERS_ONE_GAME:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQFg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->PLACE_MINES_ONE_GAME:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQFw"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->EXPLODE_ENEMY_WITH_BULLET:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQGA"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->HIT_ENEMY_WITH_SNOWBALLS:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQGQ"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->KILL_GROUND_ENEMY_WITH_AIR:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQGg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->SPLASH_CHAIN_KILL:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQGw"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->KILL_THROWN_BACK_ENEMIES:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQHA"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->KILL_ENEMY_WITH_BACK_PROJECTILE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQHQ"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->PLACE_MICROGUNS:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQHg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->MASS_BUFF_ENEMY:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQHw"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->MASS_BALL_LIGHTNINGS:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQIA"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->MASS_MISSILES:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQIQ"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->MASS_BURN_ENEMIES:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQIg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->DOUBLE_LASER_DAMAGE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQIw"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->MASS_STUN_ENEMIES_ONE_SHOT:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQJA"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->RECRUIT_ENEMIES:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQJQ"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->FAIL_TUTORIAL:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQJg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->HUGE_TOWER_ATTACK_SPEED:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQJw"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->MASS_TOWERS_LEVEL_DEV:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQKA"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->MASS_MINERS:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQKQ"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->KILL_BOSS_BONUS_COINS:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQKg"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->BUILD_TOWER_FINISH_WITH_TEN:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQKw"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->RECRUIT_SPIDER:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQLA"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->KILL_BOSS_WITH_RECRUIT:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "CgkIt8WMkYIEEAIQLQ"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v0, "egl14="

    sput-object v0, Lcom/prineside/tdi2/AndroidLauncher;->G:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/prineside/tdi2/AndroidLauncher;->H:Z

    sput-boolean v0, Lcom/prineside/tdi2/AndroidLauncher;->I:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->u:Landroid/graphics/Rect;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->y:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public static synthetic A(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/badlogic/gdx/pay/PurchaseManager;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidLauncher;->C:Lcom/badlogic/gdx/pay/PurchaseManager;

    return-object p0
.end method

.method public static synthetic B()Z
    .locals 1

    sget-boolean v0, Lcom/prineside/tdi2/AndroidLauncher;->H:Z

    return v0
.end method

.method public static synthetic C(Z)Z
    .locals 0

    sput-boolean p0, Lcom/prineside/tdi2/AndroidLauncher;->H:Z

    return p0
.end method

.method public static synthetic D()Z
    .locals 1

    sget-boolean v0, Lcom/prineside/tdi2/AndroidLauncher;->I:Z

    return v0
.end method

.method public static synthetic E(Z)Z
    .locals 0

    sput-boolean p0, Lcom/prineside/tdi2/AndroidLauncher;->I:Z

    return p0
.end method

.method public static synthetic F()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/AndroidLauncher;->G:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic G(Lcom/prineside/tdi2/AndroidLauncher;)Lk3/a;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidLauncher;->q:Lk3/a;

    return-object p0
.end method

.method public static synthetic H()Lcom/badlogic/gdx/utils/IntMap;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/AndroidLauncher;->F:Lcom/badlogic/gdx/utils/IntMap;

    return-object v0
.end method

.method public static synthetic I(Lcom/prineside/tdi2/AndroidLauncher;Lk3/a;)Lk3/a;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->q:Lk3/a;

    return-object p1
.end method

.method public static synthetic J(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher;->V()Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher;->p0()V

    return-void
.end method

.method public static synthetic L(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher;->o0()V

    return-void
.end method

.method public static synthetic M(Lcom/prineside/tdi2/AndroidLauncher;)Lc3/a;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidLauncher;->r:Lc3/a;

    return-object p0
.end method

.method public static synthetic N(Lcom/prineside/tdi2/AndroidLauncher;Lc3/a;)Lc3/a;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->r:Lc3/a;

    return-object p1
.end method

.method public static synthetic O(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher;->r0()V

    return-void
.end method

.method public static synthetic P(Lcom/prineside/tdi2/AndroidLauncher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->E:Z

    return p1
.end method

.method public static synthetic Q(Lcom/prineside/tdi2/AndroidLauncher;)Lk5/c;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidLauncher;->D:Lk5/c;

    return-object p0
.end method

.method public static synthetic R(Lcom/prineside/tdi2/AndroidLauncher;Lk5/c;)Lk5/c;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->D:Lk5/c;

    return-object p1
.end method

.method public static synthetic S(Lcom/prineside/tdi2/AndroidLauncher;)Lq3/b;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidLauncher;->B:Lq3/b;

    return-object p0
.end method

.method public static synthetic T(Lcom/prineside/tdi2/AndroidLauncher;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/utils/ObjectRetriever;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->k:Lcom/prineside/tdi2/utils/ObjectRetriever;

    return-object p1
.end method

.method public static synthetic Y(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    const-string v1, "AndroidLauncher"

    if-nez v0, :cond_0

    const-string p0, "skip silent sign in - no authManager"

    invoke-static {v1, p0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "skip silent sign in - already signed in"

    invoke-static {v1, p0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->signInWithGoogle(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method private synthetic Z()V
    .locals 5

    new-instance v0, Lt2/f$a;

    invoke-direct {v0}, Lt2/f$a;-><init>()V

    invoke-virtual {v0}, Lt2/f$a;->c()Lt2/f;

    move-result-object v0

    const-string v1, "AndroidLauncher"

    const-string v2, "loadNextAd - calling RewardedAd.load"

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v1

    sget-object v3, Lcom/prineside/tdi2/Config;->ANDROID_REWARDED_VIDEOS_ID:Ljava/lang/String;

    new-instance v4, Lcom/prineside/tdi2/AndroidLauncher$7;

    invoke-direct {v4, p0, v1, v2}, Lcom/prineside/tdi2/AndroidLauncher$7;-><init>(Lcom/prineside/tdi2/AndroidLauncher;J)V

    invoke-static {p0, v3, v0, v4}, Lj3/b;->a(Landroid/content/Context;Ljava/lang/String;Lt2/f;Lj3/c;)V

    return-void
.end method

.method private synthetic a0()V
    .locals 5

    new-instance v0, Lt2/f$a;

    invoke-direct {v0}, Lt2/f$a;-><init>()V

    invoke-virtual {v0}, Lt2/f$a;->c()Lt2/f;

    move-result-object v0

    const-string v1, "AndroidLauncher"

    const-string v2, "loadNextInterstitialAd - calling InterstitialAd.load"

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v1

    sget-object v3, Lcom/prineside/tdi2/Config;->ANDROID_INTERSTITIAL_AD_ID:Ljava/lang/String;

    new-instance v4, Lcom/prineside/tdi2/AndroidLauncher$6;

    invoke-direct {v4, p0, v1, v2}, Lcom/prineside/tdi2/AndroidLauncher$6;-><init>(Lcom/prineside/tdi2/AndroidLauncher;J)V

    invoke-static {p0, v3, v0, v4}, Lc3/a;->a(Landroid/content/Context;Ljava/lang/String;Lt2/f;Lc3/b;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/AndroidLauncher;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher;->f0(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method private synthetic b0()V
    .locals 5

    const-string v0, "AndroidLauncher"

    const-string v1, "loadNextRewardedInterstitialAd - calling RewardedInterstitialAd.load"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    sget-object v2, Lcom/prineside/tdi2/Config;->ANDROID_REWARDED_INTERSTITIAL_AD_ID:Ljava/lang/String;

    new-instance v3, Lt2/f$a;

    invoke-direct {v3}, Lt2/f$a;-><init>()V

    invoke-virtual {v3}, Lt2/f$a;->c()Lt2/f;

    move-result-object v3

    new-instance v4, Lcom/prineside/tdi2/AndroidLauncher$5;

    invoke-direct {v4, p0, v0, v1}, Lcom/prineside/tdi2/AndroidLauncher$5;-><init>(Lcom/prineside/tdi2/AndroidLauncher;J)V

    invoke-static {p0, v2, v3, v4}, Lk3/a;->a(Landroid/content/Context;Ljava/lang/String;Lt2/f;Lk3/b;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher;->a0()V

    return-void
.end method

.method private synthetic c0(Lk5/e;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed consentForm.show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk5/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk5/e;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidLauncher"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher;->loadThatUglyConsentForm()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher;->g0()V

    return-void
.end method

.method private synthetic d0(Lk5/b;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->D:Lk5/c;

    invoke-interface {v0}, Lk5/c;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/prineside/tdi2/d;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/d;-><init>(Lcom/prineside/tdi2/AndroidLauncher;)V

    invoke-interface {p1, p0, v0}, Lk5/b;->a(Landroid/app/Activity;Lk5/b$a;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UserMessagingPlatform.loadConsentForm - consentInformation.getConsentStatus() is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->D:Lk5/c;

    invoke-interface {v0}, Lk5/c;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidLauncher"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/AndroidLauncher;Lj5/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher;->m0(Lj5/i;)V

    return-void
.end method

.method public static synthetic e0(Lk5/e;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed UserMessagingPlatform.loadConsentForm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk5/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk5/e;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AndroidLauncher"

    invoke-static {v0, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/AndroidLauncher;Lk5/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher;->c0(Lk5/e;)V

    return-void
.end method

.method private synthetic f0(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->k:Lcom/prineside/tdi2/utils/ObjectRetriever;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->b1()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher;->k:Lcom/prineside/tdi2/utils/ObjectRetriever;

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/AndroidLauncher;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher;->k0(Landroid/graphics/Point;)V

    return-void
.end method

.method private synthetic g0()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->k:Lcom/prineside/tdi2/utils/ObjectRetriever;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher;->k:Lcom/prineside/tdi2/utils/ObjectRetriever;

    return-void
.end method

.method public static synthetic h(Lk5/e;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/AndroidLauncher;->e0(Lk5/e;)V

    return-void
.end method

.method private synthetic h0()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->k:Lcom/prineside/tdi2/utils/ObjectRetriever;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher;->k:Lcom/prineside/tdi2/utils/ObjectRetriever;

    return-void
.end method

.method public static synthetic i(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher;->Z()V

    return-void
.end method

.method public static synthetic i0()V
    .locals 0

    return-void
.end method

.method public static synthetic j(Lk5/e;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/AndroidLauncher;->j0(Lk5/e;)V

    return-void
.end method

.method public static synthetic j0(Lk5/e;)V
    .locals 0

    return-void
.end method

.method public static synthetic k(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher;->b0()V

    return-void
.end method

.method private synthetic k0(Landroid/graphics/Point;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->v:Lcom/prineside/tdi2/Game;

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher;->u:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, p1, v4, v3}, Lcom/prineside/tdi2/Game;->notifyVisibleDisplayFrameChanged(IIII)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/AndroidLauncher;->Y(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l0(Landroid/view/Window;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->u:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->v:Lcom/prineside/tdi2/Game;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/e;

    invoke-direct {v1, p0, v0}, Lcom/prineside/tdi2/e;-><init>(Lcom/prineside/tdi2/AndroidLauncher;Landroid/graphics/Point;)V

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/prineside/tdi2/AndroidLauncher;Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher;->l0(Landroid/view/Window;)V

    return-void
.end method

.method private synthetic m0(Lj5/i;)V
    .locals 3

    const-string v0, "AndroidLauncher"

    :try_start_0
    const-class v1, Lu3/b;

    invoke-virtual {p1, v1}, Lj5/i;->m(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher;->X(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher;->U(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_0
    .catch Lu3/b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "failed silent sign in"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed silent sign in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu3/b;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic n(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher;->h0()V

    return-void
.end method

.method public static synthetic o(Lcom/prineside/tdi2/AndroidLauncher;Lk5/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher;->d0(Lk5/b;)V

    return-void
.end method

.method public static synthetic p()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/AndroidLauncher;->i0()V

    return-void
.end method

.method public static synthetic q(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher;->n0()V

    return-void
.end method

.method public static synthetic r(Lcom/prineside/tdi2/AndroidLauncher;)Lj3/b;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidLauncher;->p:Lj3/b;

    return-object p0
.end method

.method public static synthetic s(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidLauncher;->A:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method public static showNotificationNow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "main"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "All notifications"

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-class v2, Landroid/app/NotificationManager;

    invoke-static {p0, v2}, Ld/e;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Lt3/f;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    new-instance v0, Lr/o$d;

    invoke-direct {v0, p0, v1}, Lr/o$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f060074

    invoke-virtual {v0, v1}, Lr/o$d;->o(I)Lr/o$d;

    move-result-object v0

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Lr/o$d;->g(I)Lr/o$d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr/o$d;->j(Ljava/lang/CharSequence;)Lr/o$d;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lr/o$d;->e(Z)Lr/o$d;

    move-result-object p2

    invoke-virtual {p2, p3}, Lr/o$d;->i(Ljava/lang/CharSequence;)Lr/o$d;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lr/o$d;->n(I)Lr/o$d;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Config;->PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p2, p3}, Lr/o$d;->h(Landroid/app/PendingIntent;)Lr/o$d;

    invoke-static {p0}, Lr/x0;->b(Landroid/content/Context;)Lr/x0;

    move-result-object p0

    invoke-virtual {p2}, Lr/o$d;->b()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lr/x0;->d(ILandroid/app/Notification;)V

    return-void
.end method

.method public static synthetic t(Lcom/prineside/tdi2/AndroidLauncher;Lj3/b;)Lj3/b;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->p:Lj3/b;

    return-object p1
.end method

.method public static synthetic u(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/badlogic/gdx/utils/IntArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidLauncher;->y:Lcom/badlogic/gdx/utils/IntArray;

    return-object p0
.end method

.method public static synthetic v(Lcom/prineside/tdi2/AndroidLauncher;)J
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->z:J

    return-wide v0
.end method

.method public static synthetic w(Lcom/prineside/tdi2/AndroidLauncher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->z:J

    return-wide p1
.end method

.method public static synthetic x(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher;->q0()V

    return-void
.end method

.method public static synthetic y(Lcom/prineside/tdi2/AndroidLauncher;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidLauncher;->w:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic z(Lcom/prineside/tdi2/AndroidLauncher;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher;->W()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final U(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    const-string v0, "AndroidLauncher"

    if-nez p1, :cond_0

    const-string p1, "skip silent sign in - no account"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->b1()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "skip silent sign in - no idToken"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/f;

    invoke-direct {v1, p1}, Lcom/prineside/tdi2/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final V()Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->t:Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;-><init>(Lcom/prineside/tdi2/AndroidLauncher;)V

    iput-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->t:Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->t:Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    return-object v0
.end method

.method public final W()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public final X(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    const-string v0, "AndroidLauncher"

    :try_start_0
    invoke-static {p0, p1}, Lh4/d;->b(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lh4/e;

    move-result-object p1

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Lh4/e;->c(Landroid/view/View;)Lj5/i;

    const/16 v1, 0x31

    invoke-interface {p1, v1}, Lh4/e;->e(I)Lj5/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "failed to set popups view"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, "set view for popups"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createAudio(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidAudio;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-object v0
.end method

.method public loadThatUglyConsentForm()V
    .locals 2

    const-string v0, "AndroidLauncher"

    const-string v1, "loadThatUglyConsentForm called"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher;->D:Lk5/c;

    if-nez v1, :cond_0

    const-string v1, "loadThatUglyConsentForm - consentInformation is null"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/l;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/l;-><init>(Lcom/prineside/tdi2/AndroidLauncher;)V

    new-instance v1, Lcom/prineside/tdi2/m;

    invoke-direct {v1}, Lcom/prineside/tdi2/m;-><init>()V

    invoke-static {p0, v0, v1}, Lk5/f;->b(Landroid/content/Context;Lk5/f$b;Lk5/f$a;)V

    return-void
.end method

.method public final n0()V
    .locals 2

    const-string v0, "AndroidLauncher"

    const-string v1, "loadNextAd NOT called, hehe"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final o0()V
    .locals 2

    const-string v0, "AndroidLauncher"

    const-string v1, "loadNextInterstitialAd NOT called, hehe"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "AndroidLauncher"

    const v1, 0xbc4a4

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x364d

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->k:Lcom/prineside/tdi2/utils/ObjectRetriever;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/a;->d(Landroid/content/Intent;)Lj5/i;

    move-result-object p1

    :try_start_0
    const-class p2, Lu3/b;

    invoke-virtual {p1, p2}, Lj5/i;->m(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p3, Lcom/prineside/tdi2/a;

    invoke-direct {p3, p0, p1}, Lcom/prineside/tdi2/a;-><init>(Lcom/prineside/tdi2/AndroidLauncher;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-interface {p2, p3}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lu3/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "signInResult:failed"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p2, Lcom/prineside/tdi2/h;

    invoke-direct {p2, p0}, Lcom/prineside/tdi2/h;-><init>(Lcom/prineside/tdi2/AndroidLauncher;)V

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "signInResult:failed code="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu3/b;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p2, Lcom/prineside/tdi2/g;

    invoke-direct {p2, p0}, Lcom/prineside/tdi2/g;-><init>(Lcom/prineside/tdi2/AndroidLauncher;)V

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "SHA"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher;->V()Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/Logger;->init(Lcom/prineside/tdi2/ActionResolver;)V

    const/16 v1, 0x40

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/security/MessageDigest;->update([B)V

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const-string v7, "hash key"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "exception"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "no such an algorithm"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name not found"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate called in thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidLauncher"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/prineside/tdi2/AndroidLauncher;->w:Landroid/os/Handler;

    new-instance v3, Lk5/d$a;

    invoke-direct {v3}, Lk5/d$a;-><init>()V

    invoke-virtual {v3, v2}, Lk5/d$a;->b(Z)Lk5/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lk5/d$a;->a()Lk5/d;

    move-result-object v3

    invoke-static {p0}, Lk5/f;->a(Landroid/content/Context;)Lk5/c;

    move-result-object v5

    iput-object v5, p0, Lcom/prineside/tdi2/AndroidLauncher;->D:Lk5/c;

    new-instance v6, Lcom/prineside/tdi2/n;

    invoke-direct {v6}, Lcom/prineside/tdi2/n;-><init>()V

    new-instance v7, Lcom/prineside/tdi2/o;

    invoke-direct {v7}, Lcom/prineside/tdi2/o;-><init>()V

    invoke-interface {v5, p0, v3, v6, v7}, Lk5/c;->a(Landroid/app/Activity;Lk5/d;Lk5/c$b;Lk5/c$a;)V

    new-instance v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v3}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->getInitConfigManager()Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_AA_LEVELS:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v5

    iput v5, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    iput-boolean v2, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    iput-boolean v2, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    iput-boolean v2, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGyroscope:Z

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    const/16 v6, 0x38

    iput v6, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxSimultaneousSounds:I

    iput-boolean v5, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    new-instance v5, Lcom/prineside/tdi2/NormalGame;

    invoke-direct {v5, p1}, Lcom/prineside/tdi2/NormalGame;-><init>(Lcom/prineside/tdi2/ActionResolver;)V

    iput-object v5, p0, Lcom/prineside/tdi2/AndroidLauncher;->v:Lcom/prineside/tdi2/Game;

    invoke-virtual {p0, v5, v3}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_1

    aget-object v5, p1, v3

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/prineside/tdi2/AndroidLauncher;->G:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/prineside/tdi2/AndroidLauncher;->G:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_3
    move-exception p1

    const-string v0, "Unable to get signature"

    invoke-static {v4, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->x:Lcom/badlogic/gdx/Preferences;

    :try_start_2
    const-string v0, "lastRewardedAdShowTimestamp"

    const-wide/16 v5, 0x0

    invoke-interface {p1, v0, v5, v6}, Lcom/badlogic/gdx/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->z:J

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v7

    cmp-long p1, v0, v7

    if-lez p1, :cond_2

    iput-wide v5, p0, Lcom/prineside/tdi2/AndroidLauncher;->z:J

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->x:Lcom/badlogic/gdx/Preferences;

    const-string v0, "rewardAdViewTimestamps"

    const-string v1, "[]"

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/prineside/tdi2/AndroidLauncher;->y:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_3

    :cond_4
    invoke-static {v4, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    const-string p1, "calling MobileAds.initialize"

    invoke-static {v4, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lt2/t$a;

    invoke-direct {p1}, Lt2/t$a;-><init>()V

    invoke-virtual {p1}, Lt2/t$a;->a()Lt2/t;

    move-result-object p1

    invoke-static {p1}, Lt2/o;->b(Lt2/t;)V

    new-instance p1, Lcom/prineside/tdi2/AndroidLauncher$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/AndroidLauncher$1;-><init>(Lcom/prineside/tdi2/AndroidLauncher;)V

    invoke-static {p0, p1}, Lt2/o;->a(Landroid/content/Context;Ly2/c;)V

    new-instance p1, Lcom/prineside/tdi2/AndroidLauncher$2;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/AndroidLauncher$2;-><init>(Lcom/prineside/tdi2/AndroidLauncher;)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    const-string p1, "FirebaseAnalytics.getInstance"

    invoke-static {v4, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->A:Lcom/google/firebase/analytics/FirebaseAnalytics;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    :catch_5
    const-string p1, "failed to initialize firebase"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    new-instance p1, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->C:Lcom/badlogic/gdx/pay/PurchaseManager;

    :try_start_4
    new-instance p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->w:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const-string v0, "138011681463-iqgufa34lpfasg9h9h840etivtngdpo9.apps.googleusercontent.com"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object p1

    sget-object v0, Lh4/d;->e:Lcom/google/android/gms/common/api/Scope;

    new-array v1, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->f(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lq3/b;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->B:Lq3/b;

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->v:Lcom/prineside/tdi2/Game;

    new-instance v0, Lcom/prineside/tdi2/AndroidLauncher$3;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/AndroidLauncher$3;-><init>(Lcom/prineside/tdi2/AndroidLauncher;)V

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Game;->addListener(Lcom/prineside/tdi2/Game$GameListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    const-string v0, "failed to create sign in client"

    invoke-static {v4, v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    :try_start_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.intent.action.TEST_LOOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher;->v:Lcom/prineside/tdi2/Game;

    new-instance v0, Lcom/prineside/tdi2/AndroidLauncher$4;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/AndroidLauncher$4;-><init>(Lcom/prineside/tdi2/AndroidLauncher;)V

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Game;->addListener(Lcom/prineside/tdi2/Game$GameListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_6

    :catch_7
    const-string p1, "failed to get testing intent"

    invoke-static {v4, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_6
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onResume()V

    iget-boolean v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher;->r0()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Lcom/prineside/tdi2/AndroidLauncher$8;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/AndroidLauncher$8;-><init>(Lcom/prineside/tdi2/AndroidLauncher;)V

    iput-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->s:Lcom/prineside/tdi2/Game$GameListener;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Game;->addListener(Lcom/prineside/tdi2/Game$GameListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/b;

    invoke-direct {v2, p0, v0}, Lcom/prineside/tdi2/b;-><init>(Lcom/prineside/tdi2/AndroidLauncher;Landroid/view/Window;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher;->s:Lcom/prineside/tdi2/Game$GameListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Game;->removeListener(Lcom/prineside/tdi2/Game$GameListener;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final p0()V
    .locals 2

    const-string v0, "AndroidLauncher"

    const-string v1, "loadNextRewardedInterstitialAd NOT called, hehe"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final q0()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/AndroidLauncher;->y:Lcom/badlogic/gdx/utils/IntArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v4, :cond_0

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->x:Lcom/badlogic/gdx/Preferences;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rewardAdViewTimestamps"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->x:Lcom/badlogic/gdx/Preferences;

    iget-wide v1, p0, Lcom/prineside/tdi2/AndroidLauncher;->z:J

    const-string v3, "lastRewardedAdShowTimestamp"

    invoke-interface {v0, v3, v1, v2}, Lcom/badlogic/gdx/Preferences;->putLong(Ljava/lang/String;J)Lcom/badlogic/gdx/Preferences;

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->x:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    return-void
.end method

.method public final r0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher;->B:Lq3/b;

    invoke-virtual {v0}, Lq3/b;->A()Lj5/i;

    move-result-object v0

    invoke-virtual {v0}, Lj5/i;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher;->X(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/AndroidLauncher;->U(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/prineside/tdi2/k;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/k;-><init>(Lcom/prineside/tdi2/AndroidLauncher;)V

    invoke-virtual {v0, v1}, Lj5/i;->c(Lj5/d;)Lj5/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AndroidLauncher"

    const-string v2, "silent sign in failed"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
