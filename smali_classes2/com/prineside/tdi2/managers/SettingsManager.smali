.class public Lcom/prineside/tdi2/managers/SettingsManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/SettingsManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;,
        Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;,
        Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;,
        Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;,
        Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;,
        Lcom/prineside/tdi2/managers/SettingsManager$Serializer;
    }
.end annotation


# static fields
.field public static final DEFAULT_HOT_KEYS:[[I

.field public static final N:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public G:Z

.field public H:Z

.field public I:F

.field public J:[D

.field public K:[D

.field public L:Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;

.field public final M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field public final a:[Ljava/lang/String;

.field public final b:[Ljava/lang/String;

.field public d:I

.field public k:[I

.field public p:Lcom/badlogic/gdx/utils/IntArray;

.field public q:Lcom/badlogic/gdx/utils/IntArray;

.field public final r:[[I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->values:[Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    array-length v0, v0

    new-array v0, v0, [[I

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager;->DEFAULT_HOT_KEYS:[[I

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->CALL_WAVE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x3e

    const/4 v5, 0x0

    aput v4, v3, v5

    aput-object v3, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOGGLE_AUTO_WAVE_CALL:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->PAUSE_GAME:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x2c

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->SPEED_UP:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x48

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->SPEED_DOWN:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x47

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->SWITCH_DRAW_MODE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x29

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOGGLE_TILE_MENU:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x3d

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOGGLE_QUEST_LIST:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/4 v6, 0x7

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOGGLE_STATS_PANE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x45

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOGGLE_LEADERBOARD:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x28

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ZOOM_1X:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x83

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ZOOM_FIT_MAP:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x84

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->PANIC:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x79

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_1:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x36

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_2:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x34

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_3:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x1d

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_4:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x2f

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_5:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x2d

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_6:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x33

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->UPGRADE_BUILDING:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x3b

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->UPGRADE_ALL_BUILDINGS:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->SELL_BUILDING:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x43

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->AIM_MODE_SWITCH_PREVIOUS:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x37

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->AIM_MODE_SWITCH_NEXT:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x38

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_1:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x91

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_2:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x92

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_3:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x93

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_4:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x94

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_5:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x95

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_6:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0x96

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_ALL_1:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_ALL_2:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_ALL_3:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_ALL_4:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_ALL_5:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_ALL_6:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_BASIC:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v6, 0xa

    aput v6, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_SNIPER:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v7, 0xb

    aput v7, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_CANNON:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v8, 0xc

    aput v8, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_FREEZING:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v9, 0xd

    aput v9, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_AIR:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v10, 0x21

    aput v10, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_SPLASH:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v11, 0x2e

    aput v11, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_BLAST:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v11, 0x30

    aput v11, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_MULTISHOT:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v11, 0x35

    aput v11, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_MINIGUN:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v11, 0x20

    aput v11, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_VENOM:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v11, 0x22

    aput v11, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_TESLA:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v11, 0x23

    aput v11, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_MISSILE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v11, 0x24

    aput v11, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_FLAMETHROWER:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v11, 0x1f

    aput v11, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_LASER:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v11, 0x32

    aput v11, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_GAUSS:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v11, 0x1e

    aput v11, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_CRUSHER:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v2, [I

    const/16 v11, 0x2a

    aput v11, v4, v5

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_BALANCE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_SEARCH:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_POWER:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_DAMAGE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_ATTACK_SPEED:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_MINING_SPEED:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_BOUNTY:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_EXPERIENCE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v3, v3, [I

    fill-array-data v3, :array_f

    aput-object v3, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MINER_SCALAR:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v3, v2, [I

    aput v6, v3, v5

    aput-object v3, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MINER_VECTOR:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v3, v2, [I

    aput v7, v3, v5

    aput-object v3, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MINER_MATRIX:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v3, v2, [I

    aput v8, v3, v5

    aput-object v3, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MINER_TENSOR:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v3, v2, [I

    aput v9, v3, v5

    aput-object v3, v0, v1

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MINER_INFIAR:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-array v2, v2, [I

    aput v10, v2, v5

    aput-object v2, v0, v1

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager;->N:Lcom/badlogic/gdx/utils/Array;

    return-void

    nop

    :array_0
    .array-data 4
        0x81
        0x3e
    .end array-data

    :array_1
    .array-data 4
        0x81
        0x3b
    .end array-data

    :array_2
    .array-data 4
        0x81
        0x91
    .end array-data

    :array_3
    .array-data 4
        0x81
        0x92
    .end array-data

    :array_4
    .array-data 4
        0x81
        0x93
    .end array-data

    :array_5
    .array-data 4
        0x81
        0x94
    .end array-data

    :array_6
    .array-data 4
        0x81
        0x95
    .end array-data

    :array_7
    .array-data 4
        0x81
        0x96
    .end array-data

    :array_8
    .array-data 4
        0x81
        0xa
    .end array-data

    :array_9
    .array-data 4
        0x81
        0xb
    .end array-data

    :array_a
    .array-data 4
        0x81
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x81
        0xd
    .end array-data

    :array_c
    .array-data 4
        0x81
        0x21
    .end array-data

    :array_d
    .array-data 4
        0x81
        0x2e
    .end array-data

    :array_e
    .array-data 4
        0x81
        0x30
    .end array-data

    :array_f
    .array-data 4
        0x81
        0x35
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    invoke-static {}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->values()[Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->a:[Ljava/lang/String;

    invoke-static {}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->values()[Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->b:[Ljava/lang/String;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_DOUBLE_GAIN_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "true"

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_GREEN_PAPER_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_ACCELERATOR_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->ADS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->WIKI_URL:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "https://infinitode-2.wikia.com"

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->CN_STORE_LINK:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "https://www.taptap.com/app/174842"

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_GREEN_PAPER_MAX_PER_HOUR:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "200000"

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->MULTIPLAYER_TEST_ENDPOINT:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "null"

    aput-object v3, v1, v2

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->d:I

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->p:Lcom/badlogic/gdx/utils/IntArray;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->q:Lcom/badlogic/gdx/utils/IntArray;

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->values:[Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->E:Z

    invoke-static {}, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->values()[Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_SCALE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    aput-wide v6, v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_SCALE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_CONSOLE_LINE_COUNT:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    aput-wide v6, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SEND_NOTIFICATIONS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_CACHE_MAX_SIZE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v6, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->ENABLE_REWARDING_ADS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->ENABLE_PAUSE_AD_ICON:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SOUND_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-wide v6, 0x3fe6666666666666L    # 0.7

    aput-wide v6, v1, v2

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SHOOTING_SOUNDS_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aput-wide v6, v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SHOOTING_SOUNDS_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-wide/16 v6, 0x0

    aput-wide v6, v1, v2

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->LIVE_LEADERBOARDS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->GRAPHICS_INTERPOLATION_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->CAMERA_SHAKE_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SMOOTH_MUSIC:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->STATISTICS_CHART_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SLOW_MOTION_PAUSE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->BACKGROUND_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->LOOT_ICONS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->STATE_AUTO_SAVE_INTERVAL:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    aput-wide v6, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_QUEST_LIST_VISIBLE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_LIVE_LEADERBOARDS_VISIBLE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-wide v4, v1, v2

    invoke-static {}, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->values()[Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->K:[D

    iget-object v2, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    array-length v4, v1

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v1, v3, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/SettingsManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->reload()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/SettingsManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->H:Z

    return p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/SettingsManager;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/SettingsManager;->f(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method public static getBestFullscreenMode(II)Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->getBestScreenResolution()Lcom/prineside/tdi2/utils/IntPair;

    move-result-object v0

    iget v1, v0, Lcom/prineside/tdi2/utils/IntPair;->a:I

    iget v0, v0, Lcom/prineside/tdi2/utils/IntPair;->b:I

    invoke-static {p0, p1, v1, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getBestFullscreenMode(IIII)Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object p0

    return-object p0
.end method

.method public static getBestFullscreenMode(IIII)Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBestFullscreenMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    if-le p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    const/4 p2, 0x0

    sget-object p3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p3}, Lcom/badlogic/gdx/Graphics;->getDisplayModes()[Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object p3

    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v6, p3, v4

    iget v6, v6, Lcom/badlogic/gdx/Graphics$DisplayMode;->bitsPerPixel:I

    if-le v6, v5, :cond_2

    move v5, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-le p0, v0, :cond_6

    if-le p1, v0, :cond_6

    array-length v0, p3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    aget-object v4, p3, v2

    iget v6, v4, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    if-ne v6, p0, :cond_5

    iget v6, v4, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-ne v6, p1, :cond_5

    iget v6, v4, Lcom/badlogic/gdx/Graphics$DisplayMode;->bitsPerPixel:I

    if-lt v6, v5, :cond_5

    if-eqz p2, :cond_4

    iget v6, p2, Lcom/badlogic/gdx/Graphics$DisplayMode;->refreshRate:I

    iget v7, v4, Lcom/badlogic/gdx/Graphics$DisplayMode;->refreshRate:I

    if-ge v6, v7, :cond_5

    :cond_4
    move-object p2, v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    if-nez p2, :cond_b

    array-length p0, p3

    const/4 p1, 0x0

    :goto_4
    if-ge p1, p0, :cond_b

    aget-object v0, p3, p1

    iget v2, v0, Lcom/badlogic/gdx/Graphics$DisplayMode;->bitsPerPixel:I

    if-ge v2, v5, :cond_7

    goto :goto_5

    :cond_7
    if-eqz p2, :cond_9

    iget v2, p2, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget v4, v0, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    if-lt v2, v4, :cond_8

    iget v2, p2, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    iget v4, v0, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-ge v2, v4, :cond_a

    :cond_8
    iget v2, p2, Lcom/badlogic/gdx/Graphics$DisplayMode;->refreshRate:I

    iget v4, v0, Lcom/badlogic/gdx/Graphics$DisplayMode;->refreshRate:I

    if-gt v2, v4, :cond_a

    :cond_9
    move-object p2, v0

    :cond_a
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_b
    array-length p0, p3

    :goto_6
    if-ge v3, p0, :cond_c

    aget-object p1, p3, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "available mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "best fullscreen mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static i([I[I)Z
    .locals 4

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget v1, p0, v0

    aget v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->H:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->save()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->L:Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->removeListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    :cond_1
    return-void
.end method

.method public final e()[I
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->k:[I

    if-nez v0, :cond_4

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->values:[Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->sort()V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->k:[I

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->k:[I

    return-object v0
.end method

.method public final f(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 7

    const-string v0, "SettingsManager"

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/SettingsManager;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "os"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipping (OS mismatch) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "build"

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xb8

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipping (build mismatch) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "settings"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dyn setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/prineside/tdi2/managers/SettingsManager;->a:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "failed to load dynamic settings"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final g()Z
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "cache/dynamic-settings.json"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading local dynamic settings ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->lastModified()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SettingsManager"

    invoke-static {v3, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->f(Lcom/badlogic/gdx/utils/JsonValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v4, "failed to load local dynamic settings, clearing"

    invoke-static {v3, v4, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return v2
.end method

.method public getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->K:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not available in headless"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager;->DEFAULT_HOT_KEYS:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getDynamicSetting(Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getGameStartGameVersion()I
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v1, "gameStartGameVersion"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "NaN"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->remove(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0xb8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return v2
.end method

.method public getGameStartHash()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v1, "gameStartHash"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/prineside/tdi2/utils/FastRandom;->getDistinguishableString(ILcom/badlogic/gdx/math/RandomXS128;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-object v2
.end method

.method public getGameStartTimestamp()I
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v1, "gameStartTimestamp"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "NaN"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->remove(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    return v0
.end method

.method public getHoldingHotKeys()Lcom/badlogic/gdx/utils/IntArray;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->q:Lcom/badlogic/gdx/utils/IntArray;

    return-object v0
.end method

.method public getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/SettingsManager;->getDefaultHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object p1

    return-object p1
.end method

.method public getHotKeyActions(Lcom/badlogic/gdx/utils/IntArray;)Lcom/badlogic/gdx/utils/Array;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntArray;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager;->N:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->values:[Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v5

    if-eqz v5, :cond_4

    iget v6, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v7, v5

    if-ne v6, v7, :cond_4

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget v8, v5, v7

    const/4 v9, 0x0

    :goto_2
    iget v10, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v9, v10, :cond_1

    iget-object v10, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v10, v10, v9

    if-ne v10, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/prineside/tdi2/managers/SettingsManager;->N:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/prineside/tdi2/managers/SettingsManager;->N:Lcom/badlogic/gdx/utils/Array;

    return-object p1
.end method

.method public getHotKeyName(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hotkey_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHotkeyGroupTitle(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$4;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "hotkey_group_miners"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "hotkey_group_modifiers"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "hotkey_group_tower_abilities"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "hotkey_group_towers"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "hotkey_group_buildings"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "hotkey_group_abilities"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "hotkey_group_general"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHotkeysJustPressed()Lcom/badlogic/gdx/utils/Array;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager;->N:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->p:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->values:[Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/prineside/tdi2/managers/SettingsManager;->p:Lcom/badlogic/gdx/utils/IntArray;

    iget v6, v6, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v7, v5

    if-ne v6, v7, :cond_3

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    iget-object v9, p0, Lcom/prineside/tdi2/managers/SettingsManager;->p:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/prineside/tdi2/managers/SettingsManager;->N:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager;->N:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getScaledViewportHeight()I
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_SCALE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    const/high16 v4, 0x44870000    # 1080.0f

    div-double/2addr v2, v0

    double-to-float v0, v2

    mul-float v0, v0, v4

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    return v0
.end method

.method public getTimeSpentInGameSinceStart()I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/SettingsManager;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;->settingsChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public isBugReportsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->s:Z

    return v0
.end method

.method public isDefaultHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEscButtonJustPressed()Z
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->textInputOverlay:Lcom/prineside/tdi2/ui/shared/TextInputOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/TextInputOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v2, 0x6f

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public isExplosionsDrawing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->t:Z

    return v0
.end method

.method public isFlyingCoinsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->y:Z

    return v0
.end method

.method public isHotkeyJustPressed(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)Z
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager;->DEFAULT_HOT_KEYS:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->p:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v1, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    iget-object v4, p0, Lcom/prineside/tdi2/managers/SettingsManager;->p:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public isInDebugDetailedMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->B:Z

    return v0
.end method

.method public isInDebugMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->A:Z

    return v0
.end method

.method public isInstantAutoWaveCallEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->C:Z

    return v0
.end method

.method public isLargeFontsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->z:Z

    return v0
.end method

.method public isMusicEnabled()Z
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParticlesDrawing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->w:Z

    return v0
.end method

.method public isProjectileTrailsDrawing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->v:Z

    return v0
.end method

.method public isProjectilesDrawing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->u:Z

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SOUND_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStainsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->D:Z

    return v0
.end method

.method public isThreeDeeModelsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUiAnimationsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->x:Z

    return v0
.end method

.method public postRender(F)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->I:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->I:F

    const/high16 p1, 0x41f00000    # 30.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->H:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->I:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->save()V

    :cond_0
    return-void
.end method

.method public preRender(F)V
    .locals 5

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Manager$ManagerAdapter;->preRender(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->q:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->e()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/prineside/tdi2/managers/SettingsManager;->q:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->p:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    iget p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->d:I

    if-eq p1, v1, :cond_2

    iput v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->d:I

    iget-object p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->p:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->q:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;->addAll(Lcom/badlogic/gdx/utils/IntArray;)V

    :cond_2
    return-void
.end method

.method public final reload()V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game start hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->getGameStartHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->getGameStartGameVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->getGameStartTimestamp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time in game: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->getTimeSpentInGameSinceStart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsManager"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->reloadPlayerId()V

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "bugReportsEnabled"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->s:Z

    const-string v1, "explosionsDrawing"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->t:Z

    const-string v1, "projectilesDrawing"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->u:Z

    const-string v1, "projectileTrailsDrawing"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->v:Z

    const-string v1, "particlesDrawing"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->w:Z

    const-string v1, "uiAnimations"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->x:Z

    const-string v1, "flyingCoins"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->y:Z

    const-string v1, "instantAutoWaveCall"

    const-string v4, "false"

    invoke-virtual {v0, v1, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->C:Z

    const-string v1, "stainsEnabled"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->D:Z

    const/4 v1, 0x0

    const-string v5, "largeFonts"

    invoke-virtual {v0, v5, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    iput-boolean v5, p0, Lcom/prineside/tdi2/managers/SettingsManager;->z:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->z:Z

    :goto_0
    const-string v1, "debugMode"

    invoke-virtual {v0, v1, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->A:Z

    const-string v1, "threeDeeModelsEnabled"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->E:Z

    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->G:Z

    if-nez v1, :cond_2

    iput-boolean v5, p0, Lcom/prineside/tdi2/managers/SettingsManager;->E:Z

    :cond_2
    const-string v1, "debugDetailedMode"

    invoke-virtual {v0, v1, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->B:Z

    const-string v1, "customValues"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    const-string v4, "[]"

    invoke-virtual {v0, v1, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    :try_start_0
    iget-object v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    move-result-object v4

    iget-object v5, p0, Lcom/prineside/tdi2/managers/SettingsManager;->K:[D

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v6

    aput-wide v6, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load custom value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "hotkeys"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_1
    new-instance v3, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    const-string v4, "{}"

    invoke-virtual {v0, v1, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v3, v1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asIntArray()[I

    move-result-object v5

    aput-object v5, v4, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load hotkey "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "failed to load hotkeys"

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->g()Z

    const-string v0, "requesting dynamic settings from the server"

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->DYNAMIC_SETTINGS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "os"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v2, Lcom/prineside/tdi2/managers/SettingsManager$3;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/managers/SettingsManager$3;-><init>(Lcom/prineside/tdi2/managers/SettingsManager;)V

    invoke-interface {v1, v0, v2}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    :goto_3
    return-void
.end method

.method public removeListener(Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requireDelayedSave()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->save()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->H:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->H:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->I:F

    :cond_1
    return-void
.end method

.method public save()V
    .locals 13

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->values:[Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    iget-object v8, p0, Lcom/prineside/tdi2/managers/SettingsManager;->K:[D

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-wide v9, v8, v9

    iget-object v8, p0, Lcom/prineside/tdi2/managers/SettingsManager;->J:[D

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-wide v11, v8, v11

    cmpl-double v8, v9, v11

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/prineside/tdi2/managers/SettingsManager;->K:[D

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-wide v10, v9, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "customValues"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->values:[Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_4

    aget-object v7, v3, v6

    iget-object v8, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_2
    iget-object v9, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    array-length v9, v9

    if-ge v8, v9, :cond_2

    iget-object v9, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    aget v9, v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hotkeys"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    iput-boolean v5, p0, Lcom/prineside/tdi2/managers/SettingsManager;->H:Z

    const-string v0, "SettingsManager"

    const-string v1, "saved custom values to preferences"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveIfRequired()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->H:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->save()V

    :cond_0
    return-void
.end method

.method public setBugReportsEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->s:Z

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v0, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object p1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    const-string v1, "bugReportsEnabled"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->K:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-wide v1, v0, v1

    cmpl-double v0, v1, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->K:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput-wide p2, v0, v3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->requireDelayedSave()V

    iget-object p2, p0, Lcom/prineside/tdi2/managers/SettingsManager;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/prineside/tdi2/managers/SettingsManager;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, v0, :cond_1

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;

    invoke-interface {p3, p1, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;->customValueChanged(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDebugDetailedMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->B:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->B:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "debugDetailedMode"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->A:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->A:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "debugMode"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setExplosionsDrawing(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->t:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->t:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "explosionsDrawing"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setFlyingCoinsEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->y:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->y:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "flyingCoins"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;[I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/SettingsManager;->getDefaultHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v0

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    invoke-static {v0, p2}, Lcom/prineside/tdi2/managers/SettingsManager;->i([I[I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-object v2, p2, p1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->H:Z

    iput-object v2, p0, Lcom/prineside/tdi2/managers/SettingsManager;->k:[I

    iget-object p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->p:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->q:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    invoke-static {p2, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->i([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->r:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-object p2, v0, p1

    iput-object v2, p0, Lcom/prineside/tdi2/managers/SettingsManager;->k:[I

    iget-object p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->p:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->q:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->H:Z

    return-void
.end method

.method public setInstantAutoWaveCallEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->C:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->C:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "instantAutoWaveCall"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setLargeFontsEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->z:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->z:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "largeFonts"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setMusicVolume(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setParticlesDrawing(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->w:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->w:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "particlesDrawing"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setProjectileTrailsDrawing(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->v:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->v:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "projectileTrailsDrawing"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setProjectilesDrawing(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->u:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->u:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "projectilesDrawing"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setSoundVoulme(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SOUND_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setStainsEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->D:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->D:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "stainsEnabled"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setThreeDeeModelsEnabled(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->E:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->G:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    const-string v0, "Not enough memory :("

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v2}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return v1

    :cond_1
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->E:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_2

    const-string p1, "true"

    goto :goto_0

    :cond_2
    const-string p1, "false"

    :goto_0
    const-string v1, "threeDeeModelsEnabled"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    const/4 p1, 0x1

    return p1
.end method

.method public setUiAnimationsEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->x:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/SettingsManager;->x:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "uiAnimations"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->h()V

    return-void
.end method

.method public setup()V
    .locals 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x4000000

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->G:Z

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/SettingsManager$1;-><init>(Lcom/prineside/tdi2/managers/SettingsManager;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager;->L:Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SettingsManager;->reload()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/SettingsManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/SettingsManager$2;-><init>(Lcom/prineside/tdi2/managers/SettingsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    return-void
.end method
