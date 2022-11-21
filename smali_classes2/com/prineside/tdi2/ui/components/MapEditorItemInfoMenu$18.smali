.class synthetic Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/prineside/tdi2/enums/ItemType;->values()[Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->c:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->c:[I

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->GATE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/prineside/tdi2/enums/TileType;->values()[Lcom/prineside/tdi2/enums/TileType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->b:[I

    :try_start_2
    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->b:[I

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->GAME_VALUE:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->b:[I

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->b:[I

    sget-object v5, Lcom/prineside/tdi2/enums/TileType;->BOSS:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v4, 0x5

    :try_start_6
    sget-object v5, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->b:[I

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v5, 0x6

    :try_start_7
    sget-object v6, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->b:[I

    sget-object v7, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->values()[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->a:[I

    :try_start_8
    sget-object v7, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->a:[I

    sget-object v6, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
