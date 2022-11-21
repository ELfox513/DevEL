.class synthetic Lcom/prineside/tdi2/towers/FlamethrowerTower$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/towers/FlamethrowerTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->values()[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower$1;->a:[I

    :try_start_0
    sget-object v1, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->RANGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower$1;->a:[I

    sget-object v1, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower$1;->a:[I

    sget-object v1, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower$1;->a:[I

    sget-object v1, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->CROWD_DAMAGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower$1;->a:[I

    sget-object v1, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->AGILITY:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
