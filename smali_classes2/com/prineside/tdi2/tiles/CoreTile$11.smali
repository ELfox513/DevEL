.class synthetic Lcom/prineside/tdi2/tiles/CoreTile$11;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/CoreTile;
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
    .locals 5

    invoke-static {}, Lcom/prineside/tdi2/enums/RarityType;->values()[Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->c:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$11;->c:[I

    sget-object v3, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/prineside/tdi2/tiles/CoreTile$11;->c:[I

    sget-object v4, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->values()[Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/prineside/tdi2/tiles/CoreTile$11;->b:[I

    :try_start_3
    sget-object v4, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->REGULAR:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/prineside/tdi2/tiles/CoreTile$11;->b:[I

    sget-object v4, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->RARE:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/prineside/tdi2/tiles/CoreTile$11;->b:[I

    sget-object v4, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->LEGENDARY:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    invoke-static {}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->values()[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/prineside/tdi2/tiles/CoreTile$11;->a:[I

    :try_start_6
    sget-object v4, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$11;->a:[I

    sget-object v3, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->a:[I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
