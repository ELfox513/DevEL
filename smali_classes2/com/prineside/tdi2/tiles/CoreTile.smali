.class public Lcom/prineside/tdi2/tiles/CoreTile;
.super Lcom/prineside/tdi2/Tile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/tiles/CoreTile$Tier;,
        Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;,
        Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;,
        Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;
    }
.end annotation


# static fields
.field public static final D:[Lcom/badlogic/gdx/graphics/Color;

.field public static final E:[Lcom/badlogic/gdx/graphics/Color;

.field public static final FIXED_LEVEL_XP_REQUIREMENT:I = 0x3e8

.field public static final LEVEL_EXPERIENCE:[I

.field public static final LEVEL_EXPERIENCE_MILESTONES:[I

.field public static final LINK_DIRECTION_BITS:[I

.field public static final MAX_LEVEL:I = 0x100

.field public static final TIER_COLS:[I

.field public static final TIER_ROWS:[I


# instance fields
.field public A:F

.field public B:F

.field public C:Lcom/badlogic/gdx/utils/IntIntMap;

.field public doubleSpeedTimeLeft:F

.field public predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

.field public timeDrawn:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public u:F

.field public upgradeAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public v:Z

.field public w:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;",
            ">;"
        }
    .end annotation
.end field

.field public x:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public y:I

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x101

    new-array v1, v0, [I

    sput-object v1, Lcom/prineside/tdi2/tiles/CoreTile;->LEVEL_EXPERIENCE:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v1, 0x2

    const/4 v4, 0x2

    :goto_0
    const/16 v5, 0xa

    if-ge v4, v0, :cond_0

    sget-object v6, Lcom/prineside/tdi2/tiles/CoreTile;->LEVEL_EXPERIENCE:[I

    add-int/lit8 v7, v4, -0x2

    mul-int/lit8 v8, v7, 0xa

    div-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v8, v7

    add-int/lit16 v8, v8, 0xb4

    aput v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->LEVEL_EXPERIENCE_MILESTONES:[I

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    const/16 v6, 0x100

    if-gt v0, v6, :cond_1

    sget-object v6, Lcom/prineside/tdi2/tiles/CoreTile;->LEVEL_EXPERIENCE:[I

    aget v6, v6, v0

    add-int/2addr v4, v6

    sget-object v6, Lcom/prineside/tdi2/tiles/CoreTile;->LEVEL_EXPERIENCE_MILESTONES:[I

    aput v4, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-array v0, v5, [Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v4, v0, v2

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v3

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P400:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v4, v0, v1

    const/4 v1, 0x6

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v4, v0, v1

    const/4 v1, 0x7

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v4, v0, v1

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const/16 v1, 0x9

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v5, v0, v1

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->D:[Lcom/badlogic/gdx/graphics/Color;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->TIER_COLS:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->TIER_ROWS:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->LINK_DIRECTION_BITS:[I

    new-array v0, v3, [Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->E:[Lcom/badlogic/gdx/graphics/Color;

    return-void

    :array_0
    .array-data 4
        0x3
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x4
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const-string v0, ""

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->REGULAR:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->x:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->timeDrawn:F

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->doubleSpeedTimeLeft:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->y:I

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->C:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/CoreTile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/tiles/CoreTile;-><init>()V

    return-void
.end method

.method private synthetic A(Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    iget p3, p2, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget v0, p2, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    invoke-virtual {p0, p3, v0, p1}, Lcom/prineside/tdi2/tiles/CoreTile;->setUpgrade(IILcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V

    invoke-virtual {p2}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method

.method private synthetic B(Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    iget p3, p2, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget v0, p2, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    invoke-virtual {p0, p3, v0, p1}, Lcom/prineside/tdi2/tiles/CoreTile;->setUpgrade(IILcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V

    invoke-virtual {p2}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method

.method private synthetic C(Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    iget p3, p2, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget v0, p2, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    invoke-virtual {p0, p3, v0, p1}, Lcom/prineside/tdi2/tiles/CoreTile;->setUpgrade(IILcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V

    invoke-virtual {p2}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile;->C(Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->x(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile;->A(Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/tiles/CoreTile;->z(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->w(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V

    return-void
.end method

.method public static getUpgradeIdx(Lcom/prineside/tdi2/tiles/CoreTile$Tier;II)I
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->TIER_COLS:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile;->TIER_ROWS:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const-string v1, " given"

    const-string v2, "core tier has max "

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_0

    if-ge p2, p0, :cond_0

    mul-int p2, p2, v0

    add-int/2addr p2, p1

    return p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " row idx, "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " col idx, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile;->B(Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic i(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->v(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/tiles/CoreTile;->y(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    return-void
.end method

.method public static synthetic k(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->u(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lcom/prineside/tdi2/tiles/CoreTile;)Lcom/prineside/tdi2/tiles/CoreTile$Tier;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    return-object p0
.end method

.method public static synthetic m(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Lcom/prineside/tdi2/tiles/CoreTile$Tier;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    return-object p1
.end method

.method public static synthetic n(Lcom/prineside/tdi2/tiles/CoreTile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic o(Lcom/prineside/tdi2/tiles/CoreTile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic p(Lcom/prineside/tdi2/tiles/CoreTile;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    return p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/tiles/CoreTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    return p1
.end method

.method public static synthetic r(Lcom/prineside/tdi2/tiles/CoreTile;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method private synthetic u(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoreTile"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic v(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->setIcon(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoreTile"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic w(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/tiles/CoreTile;->setExperienceGeneration(F)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoreTile"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic x(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->setXpLevelRequirementFixed(Z)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method

.method private synthetic y(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 9

    new-instance v8, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->COINS_GENERATION:Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;-><init>(ZZLcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/TriggeredActionType;Lcom/badlogic/gdx/utils/Array;IZ)V

    iget v0, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget v1, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    invoke-virtual {p0, v0, v1, v8}, Lcom/prineside/tdi2/tiles/CoreTile;->setUpgrade(IILcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method

.method private synthetic z(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 3

    iget v0, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget v1, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/tdi2/tiles/CoreTile;->setUpgrade(IILcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->b:[I

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x64

    const/16 v4, 0xc8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->RESOURCE_MATRIX:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-direct {v0, v3, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->RESOURCE_TENSOR:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-direct {v0, v3, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->RESOURCE_INFIAR:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-direct {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->RESOURCE_VECTOR:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-direct {v0, v3, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->RESOURCE_MATRIX:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-direct {v0, v3, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->RESOURCE_TENSOR:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-direct {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_SCALAR:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_VECTOR:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public canUpgradeBeInstalled(II)Z
    .locals 11

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeCols()I

    move-result v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeRows()I

    move-result v2

    sget-object v3, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->values:[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    invoke-static {v7}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->getDeltaCol(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)I

    move-result v8

    add-int/2addr v8, p1

    invoke-static {v7}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->getDeltaRow(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)I

    move-result v9

    add-int/2addr v9, p2

    if-ltz v8, :cond_1

    if-ge v8, v0, :cond_1

    if-ltz v9, :cond_1

    if-ge v9, v2, :cond_1

    invoke-virtual {p0, v8, v9}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {p0, v8, v9}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v7}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->getOpposite(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V
    .locals 9

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->timeDrawn:F

    add-float/2addr v1, p2

    iput v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->timeDrawn:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getSphereColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget p2, p0, Lcom/prineside/tdi2/tiles/CoreTile;->timeDrawn:F

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_3

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-static {p2}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->c(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)Lcom/badlogic/gdx/graphics/g2d/Animation;

    move-result-object p2

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->timeDrawn:F

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(FZ)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float p2, p3

    const/high16 p3, 0x42000000    # 32.0f

    add-float v2, p2, p3

    int-to-float p4, p4

    add-float v3, p4, p3

    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x42800000    # 64.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getIcon()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;Z)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    if-eqz v4, :cond_0

    const p3, 0x3f266666    # 0.65f

    invoke-virtual {p1, v1, v1, v1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    const p3, 0x4228f5c3    # 42.24f

    add-float v5, p2, p3

    add-float v6, p4, p3

    const v7, 0x422e147b    # 43.52f

    const v8, 0x422e147b    # 43.52f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_0
    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz p3, :cond_2

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object p3

    sget-object v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p3, v2, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getFreeUpgradePoints()I

    move-result p3

    const/4 v2, 0x7

    if-le p3, v2, :cond_1

    const/4 p3, 0x7

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_2

    const v2, 0x3f0f5c29    # 0.56f

    invoke-virtual {p1, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v4, v2, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->particlePentagon:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    const/high16 v2, 0x41400000    # 12.0f

    add-float v5, p2, v2

    add-float/2addr v2, p4

    mul-int/lit16 v3, v0, 0x80

    int-to-float v3, v3

    const/high16 v6, 0x3e000000    # 0.125f

    mul-float v3, v3, v6

    add-float v6, v2, v3

    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v8, 0x41400000    # 12.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "timeDrawn is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->timeDrawn:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "deltaTime is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 8

    invoke-super/range {p0 .. p6}, Lcom/prineside/tdi2/Tile;->drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getBaseColors()[Lcom/badlogic/gdx/graphics/Color;

    move-result-object p6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->REGULAR:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->RARE:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, p6, v0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-static {v1}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->b(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    aget-object v3, v1, v0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 32

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "Predefined type"

    invoke-virtual {v7, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-string v2, "None"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v3, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->values:[Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_0

    aget-object v9, v3, v8

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v1, v6, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/tiles/CoreTile$1;

    invoke-direct {v1, v6, v0, v7}, Lcom/prineside/tdi2/tiles/CoreTile$1;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v7, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBox(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iget-object v0, v6, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-nez v0, :cond_1f

    const-string v0, "Tier"

    invoke-virtual {v7, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->values:[Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/tiles/CoreTile$2;

    invoke-direct {v1, v6, v0, v7}, Lcom/prineside/tdi2/tiles/CoreTile$2;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v7, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBox(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    const-string v0, "Name"

    invoke-virtual {v7, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/tiles/a;

    invoke-direct {v1, v6, v7}, Lcom/prineside/tdi2/tiles/a;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {v7, v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    const-string v0, "Icon"

    invoke-virtual {v7, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getIcon()Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    if-nez v0, :cond_3

    move-object v0, v8

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getIcon()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Lcom/prineside/tdi2/tiles/b;

    invoke-direct {v1, v6, v7}, Lcom/prineside/tdi2/tiles/b;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {v7, v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    const-string v0, "XP generation"

    invoke-virtual {v7, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getExperienceGeneration()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/tiles/c;

    invoke-direct {v1, v6, v7}, Lcom/prineside/tdi2/tiles/c;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {v7, v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->isXpLevelRequirementFixed()Z

    move-result v0

    new-instance v1, Lcom/prineside/tdi2/tiles/d;

    invoke-direct {v1, v6, v7}, Lcom/prineside/tdi2/tiles/d;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    const-string v2, "Fixed XP levels (1000 XP)"

    invoke-virtual {v7, v2, v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->toggle(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    const-string v0, "Upgrades"

    invoke-virtual {v7, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v1, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->form:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeRows()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    const-string v9, "tiny-arrow-top"

    const-string v11, "blank"

    const/high16 v13, 0x42000000    # 32.0f

    if-ge v4, v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeCols()I

    move-result v12

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v12, :cond_12

    invoke-virtual {v6, v14, v4}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v5

    int-to-float v10, v14

    mul-float v16, v10, v2

    mul-float v10, v10, v13

    add-float v10, v16, v10

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeRows()I

    move-result v16

    add-int/lit8 v13, v16, -0x1

    int-to-float v13, v13

    const/high16 v16, 0x42c00000    # 96.0f

    mul-float v13, v13, v16

    int-to-float v2, v4

    mul-float v2, v2, v16

    sub-float/2addr v13, v2

    iget v2, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    if-ne v2, v14, :cond_4

    iget v2, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    if-ne v2, v4, :cond_4

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v15

    invoke-direct {v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v15, 0x42880000    # 68.0f

    invoke-virtual {v2, v15, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    move/from16 v19, v3

    const/high16 v15, 0x40000000    # 2.0f

    sub-float v3, v10, v15

    move/from16 v20, v12

    sub-float v12, v13, v15

    invoke-virtual {v2, v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_6

    :cond_4
    move/from16 v19, v3

    move/from16 v20, v12

    :goto_6
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v3, Lcom/prineside/tdi2/tiles/CoreTile$3;

    invoke-direct {v3, v6, v7, v14, v4}, Lcom/prineside/tdi2/tiles/CoreTile$3;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;II)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v3, 0x0

    if-nez v5, :cond_5

    const v12, 0x3e8f5c29    # 0.28f

    invoke-virtual {v2, v3, v3, v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    move-object/from16 v24, v8

    move-object/from16 v23, v11

    goto/16 :goto_a

    :cond_5
    iget-boolean v12, v5, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    if-eqz v12, :cond_6

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_7

    :cond_6
    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_7
    iget-boolean v2, v5, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    const v15, 0x3f47ae14    # 0.78f

    const v3, 0x424ccccd    # 51.2f

    if-eqz v2, :cond_7

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->triggeredActionManager:Lcom/prineside/tdi2/managers/TriggeredActionManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getActionType()Lcom/prineside/tdi2/enums/TriggeredActionType;

    move-result-object v12

    move-object/from16 v23, v11

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v24, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v11, v8, v8, v8, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v12, v3, v11}, Lcom/prineside/tdi2/managers/TriggeredActionManager;->generateIcon(Lcom/prineside/tdi2/enums/TriggeredActionType;FLcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    const v3, 0x40cccccd    # 6.4f

    add-float v12, v10, v3

    add-float/2addr v3, v13

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_9

    :cond_7
    move-object/from16 v24, v8

    move-object/from16 v23, v11

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    const/4 v8, 0x0

    :goto_8
    iget v11, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v11, :cond_8

    iget-object v11, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v11, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v11, v11, v8

    const v12, 0x40cccccd    # 6.4f

    add-float v15, v10, v12

    move-object/from16 v25, v2

    add-float v2, v13, v12

    invoke-virtual {v11, v15, v2, v3}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v2

    sget-object v11, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    const/high16 v3, 0x3f800000    # 1.0f

    const v15, 0x3f47ae14    # 0.78f

    invoke-virtual {v11, v3, v3, v3, v15}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v25

    const v3, 0x424ccccd    # 51.2f

    goto :goto_8

    :cond_8
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v5, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " <@icon-coin>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x15

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v3, v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v8, 0x3f0f5c29    # 0.56f

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v11, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v8, 0x40400000    # 3.0f

    add-float/2addr v8, v10

    const/high16 v11, 0x40000000    # 2.0f

    add-float v15, v8, v11

    sub-float v12, v13, v11

    invoke-virtual {v3, v15, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v11, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x15

    invoke-virtual {v12, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v3, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "tiny-arrow-left"

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sub-float v8, v10, v3

    add-float v11, v13, v3

    const/high16 v3, 0x41800000    # 16.0f

    sub-float/2addr v11, v3

    invoke-virtual {v2, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_a
    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "tiny-arrow-right"

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x42800000    # 64.0f

    add-float v11, v10, v8

    add-float v8, v13, v3

    const/high16 v3, 0x41800000    # 16.0f

    sub-float/2addr v8, v3

    invoke-virtual {v2, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_b
    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    add-float v8, v10, v3

    const/high16 v3, 0x41800000    # 16.0f

    sub-float/2addr v8, v3

    const/high16 v3, 0x42800000    # 64.0f

    add-float v11, v13, v3

    invoke-virtual {v2, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_c
    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "tiny-arrow-bottom"

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    add-float v8, v10, v3

    const/high16 v11, 0x41800000    # 16.0f

    sub-float/2addr v8, v11

    sub-float v11, v13, v3

    invoke-virtual {v2, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_d
    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "tiny-arrow-top-left"

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sub-float v8, v10, v3

    const/high16 v3, 0x42800000    # 64.0f

    add-float v11, v13, v3

    invoke-virtual {v2, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_e
    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "tiny-arrow-top-right"

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x42800000    # 64.0f

    add-float v8, v10, v3

    add-float v11, v13, v3

    invoke-virtual {v2, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_f
    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "tiny-arrow-bottom-left"

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sub-float v8, v10, v3

    sub-float v11, v13, v3

    invoke-virtual {v2, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_10
    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "tiny-arrow-bottom-right"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x42800000    # 64.0f

    add-float/2addr v10, v5

    sub-float/2addr v13, v3

    invoke-virtual {v2, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_11
    :goto_a
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v19

    move/from16 v12, v20

    move-object/from16 v11, v23

    move-object/from16 v8, v24

    const/high16 v2, 0x42800000    # 64.0f

    const/high16 v13, 0x42000000    # 32.0f

    goto/16 :goto_5

    :cond_12
    move/from16 v19, v3

    move-object/from16 v24, v8

    add-int/lit8 v4, v4, 0x1

    const/high16 v2, 0x42800000    # 64.0f

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_13
    move-object/from16 v24, v8

    move-object/from16 v23, v11

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeCols()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42800000    # 64.0f

    mul-float v2, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeCols()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    const/high16 v5, 0x42000000    # 32.0f

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeRows()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeRows()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float v3, v3, v5

    add-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget v1, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget v2, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    invoke-virtual {v6, v1, v2}, Lcom/prineside/tdi2/tiles/CoreTile;->isValidUpgradePos(II)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget v0, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget v2, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    invoke-virtual {v6, v0, v2}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v8

    const/high16 v0, 0x43480000    # 200.0f

    const/16 v2, 0x18

    const/high16 v3, 0x42400000    # 48.0f

    if-nez v8, :cond_14

    new-instance v4, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v5, Lcom/prineside/tdi2/tiles/e;

    invoke-direct {v5, v6, v7}, Lcom/prineside/tdi2/tiles/e;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    const-string v7, "Add upgrade"

    invoke-direct {v4, v7, v2, v5}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_12

    :cond_14
    new-instance v4, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v5, Lcom/prineside/tdi2/tiles/f;

    invoke-direct {v5, v6, v7}, Lcom/prineside/tdi2/tiles/f;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    const-string v10, "Remove upgrade"

    invoke-direct {v4, v10, v2, v5}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    iget-boolean v2, v8, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    const/16 v28, 0x18

    const/high16 v29, 0x41c00000    # 24.0f

    const/16 v30, 0x0

    new-instance v4, Lcom/prineside/tdi2/tiles/g;

    invoke-direct {v4, v6, v8, v7}, Lcom/prineside/tdi2/tiles/g;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    const-string v26, "Is action"

    move-object/from16 v25, v0

    move/from16 v27, v2

    move-object/from16 v31, v4

    invoke-direct/range {v25 .. v31}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v10, 0x41000000    # 8.0f

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-boolean v0, v8, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    const/high16 v2, 0x43a00000    # 320.0f

    if-eqz v0, :cond_16

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    const-class v5, Lcom/prineside/tdi2/enums/TriggeredActionType;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v5, Lcom/prineside/tdi2/enums/TriggeredActionType;->values:[Lcom/prineside/tdi2/enums/TriggeredActionType;

    array-length v11, v5

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v11, :cond_15

    aget-object v13, v5, v12

    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_15
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v8}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getActionType()Lcom/prineside/tdi2/enums/TriggeredActionType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v4, Lcom/prineside/tdi2/tiles/CoreTile$4;

    invoke-direct {v4, v6, v8, v0, v7}, Lcom/prineside/tdi2/tiles/CoreTile$4;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto :goto_d

    :cond_16
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    const-class v5, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v11, v5

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v11, :cond_17

    aget-object v13, v5, v12

    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_17
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v8}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v4, Lcom/prineside/tdi2/tiles/CoreTile$5;

    invoke-direct {v4, v6, v8, v0, v7}, Lcom/prineside/tdi2/tiles/CoreTile$5;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :goto_d
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v0, v8, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    new-instance v5, Lcom/prineside/tdi2/tiles/h;

    invoke-direct {v5, v6, v8, v7}, Lcom/prineside/tdi2/tiles/h;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    const-string v11, "Starting"

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11, v0, v5}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->toggle(ZLjava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-boolean v0, v8, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    new-instance v5, Lcom/prineside/tdi2/tiles/i;

    invoke-direct {v5, v6, v8, v7}, Lcom/prineside/tdi2/tiles/i;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    const-string v11, "Costs coins"

    invoke-virtual {v7, v12, v11, v0, v5}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->toggle(ZLjava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->values:[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1c

    aget-object v5, v2, v4

    sget-object v11, Lcom/prineside/tdi2/tiles/CoreTile$11;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v11, v11, v13

    packed-switch v11, :pswitch_data_0

    move-object/from16 v11, v23

    goto :goto_f

    :pswitch_0
    const-string v11, "tiny-arrow-bottom-right"

    goto :goto_f

    :pswitch_1
    const-string v11, "tiny-arrow-bottom-left"

    goto :goto_f

    :pswitch_2
    const-string v11, "tiny-arrow-top-right"

    goto :goto_f

    :pswitch_3
    const-string v11, "tiny-arrow-top-left"

    goto :goto_f

    :pswitch_4
    const-string v11, "tiny-arrow-bottom"

    goto :goto_f

    :pswitch_5
    const-string v11, "tiny-arrow-right"

    goto :goto_f

    :pswitch_6
    const-string v11, "tiny-arrow-left"

    goto :goto_f

    :pswitch_7
    move-object v11, v9

    :goto_f
    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v11

    if-nez v11, :cond_18

    const v11, 0x3e8f5c29    # 0.28f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14, v14, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_18
    sget-object v11, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    sget-object v11, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-ne v5, v11, :cond_19

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_19
    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    const/high16 v15, 0x42000000    # 32.0f

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v14, Lcom/prineside/tdi2/tiles/CoreTile$6;

    invoke-direct {v14, v6, v8, v5, v7}, Lcom/prineside/tdi2/tiles/CoreTile$6;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    sget-object v13, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-eq v5, v13, :cond_1a

    if-ne v5, v11, :cond_1b

    :cond_1a
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1c
    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    const-string v3, "Delta"

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v1, 0x3e8f5c29    # 0.28f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v11, 0x42200000    # 40.0f

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    const-string v2, "Price"

    invoke-direct {v0, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :goto_10
    iget-object v0, v8, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v12, v1, :cond_1e

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v13, v0, v12

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v15, v24

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v13, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textFieldStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v5, v0, v1}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v4, Lcom/prineside/tdi2/tiles/CoreTile$7;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v8

    move-object v10, v4

    move v4, v12

    move-object v11, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/tiles/CoreTile$7;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;ILcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v13, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textFieldStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v10, v0, v1}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v11, Lcom/prineside/tdi2/tiles/CoreTile$8;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/tiles/CoreTile$8;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;ILcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-nez v12, :cond_1d

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-object/from16 v2, v23

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_11

    :cond_1d
    new-instance v0, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/tiles/CoreTile$9;

    invoke-direct {v2, v6, v8, v12, v7}, Lcom/prineside/tdi2/tiles/CoreTile$9;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;ILcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-direct {v0, v15, v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x42200000    # 40.0f

    const/high16 v22, 0x42200000    # 40.0f

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v22}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-times"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v18

    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v20, 0x40800000    # 4.0f

    const/high16 v21, 0x42000000    # 32.0f

    const/high16 v22, 0x42000000    # 32.0f

    invoke-virtual/range {v17 .. v22}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :goto_11
    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-object/from16 v23, v2

    move v12, v14

    move-object/from16 v24, v15

    const/high16 v10, 0x41000000    # 8.0f

    const/high16 v11, 0x42200000    # 40.0f

    goto/16 :goto_10

    :cond_1e
    new-instance v0, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/tiles/CoreTile$10;

    invoke-direct {v2, v6, v8, v7}, Lcom/prineside/tdi2/tiles/CoreTile$10;-><init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    const-string v3, "Add new level"

    invoke-direct {v0, v3, v1, v2}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43240000    # 164.0f

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_1f
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public from(Lcom/prineside/tdi2/Tile;)V
    .locals 4

    check-cast p1, Lcom/prineside/tdi2/tiles/CoreTile;

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    iget v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    iget-boolean v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v3, v3, v1

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    check-cast v2, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->cloneUpgrade()Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    :cond_2
    return-void
.end method

.method public generateSeedSalt()I
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getExperienceGeneration()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrades()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    :goto_1
    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    iget-object v3, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v4, v4, v1

    if-nez v4, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_2

    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    check-cast v3, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->generateHash()I

    move-result v3

    add-int/2addr v0, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public generateUiIcon(F)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 7

    const/high16 v0, 0x43000000    # 128.0f

    div-float/2addr p1, v0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getBaseColors()[Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->REGULAR:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    if-ne v5, v6, :cond_0

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->RARE:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-static {v6}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->b(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    mul-float v6, p1, v0

    invoke-virtual {v5, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/prineside/tdi2/ui/actors/AnimatedImage;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-static {v3}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->c(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)Lcom/badlogic/gdx/graphics/g2d/Animation;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/prineside/tdi2/ui/actors/AnimatedImage;-><init>(Lcom/badlogic/gdx/graphics/g2d/Animation;)V

    const/high16 v3, 0x42800000    # 64.0f

    mul-float v3, v3, p1

    invoke-virtual {v0, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x42000000    # 32.0f

    mul-float v3, v3, p1

    invoke-virtual {v0, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getSphereColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;Z)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const v0, 0x4228f5c3    # 42.24f

    mul-float v0, v0, p1

    invoke-virtual {v2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v0, 0x422aaa3b

    mul-float v0, v0, p1

    const v3, 0x422aaa9f

    mul-float p1, p1, v3

    invoke-virtual {v2, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const p1, 0x3f266666    # 0.65f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_4
    return-object v1
.end method

.method public getBaseColors()[Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->t()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile;->E:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile;->D:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v3

    aget-object v3, v2, v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    array-length v3, v2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v3

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    array-length v3, v2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v3

    aget-object v3, v2, v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    array-length v3, v2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v0

    aget-object v0, v2, v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getCurrentLevelExperience()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->B:F

    return v0
.end method

.method public getData(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->TILE_PREDEFINED_CORE_TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->getTierDescription(Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExperience()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->z:F

    return v0
.end method

.method public getExperienceGeneration()F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    return v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->a(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)[Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    return v0
.end method

.method public getFreeUpgradePoints()I
    .locals 11

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeCols()I

    move-result v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeRows()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_2

    invoke-virtual {p0, v6, v4}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-boolean v8, v7, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    if-eqz v8, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, v6, v4}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    iget-object v10, v7, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object v10, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v10, v10, v9

    iget v10, v10, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    add-int/2addr v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v5

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->a(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)[Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getInventorySubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SPECIAL:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->y:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->a(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)[Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getNextLevelExperience()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->A:F

    return v0
.end method

.method public getPrestigeScore()D
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->c:[I

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x401e000000000000L    # 7.5

    return-wide v0

    :cond_1
    const-wide v0, 0x3fe3333333333333L    # 0.6

    return-wide v0

    :cond_2
    const-wide v0, 0x3fa999999999999aL    # 0.05

    return-wide v0
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->b:[I

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->KIND:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x12c

    :goto_0
    add-int/lit16 p1, p1, 0x3a98

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x64

    return p1
.end method

.method public getSphereColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->b:[I

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P600:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P700:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->a(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)[Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->a(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)[Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeIdx(Lcom/prineside/tdi2/tiles/CoreTile$Tier;II)I

    move-result p1

    iget p2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le p2, p1, :cond_1

    iget-object p2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p2, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object p1, p2, p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUpgradeCols()I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->TIER_COLS:[I

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getUpgradeInstallLevel(I)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->C:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result p1

    return p1
.end method

.method public getUpgradeInstallLevel(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeIdx(Lcom/prineside/tdi2/tiles/CoreTile$Tier;II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(I)I

    move-result p1

    return p1
.end method

.method public getUpgradeRows()I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->TIER_ROWS:[I

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getUpgrades()Lcom/badlogic/gdx/utils/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->a(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)[Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public hasSomethingToUpgrade()Z
    .locals 11

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getFreeUpgradePoints()I

    move-result v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeCols()I

    move-result v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeRows()I

    move-result v2

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_5

    invoke-virtual {p0, v6, v5}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0, v6, v5}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v8

    iget-object v9, v7, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v8, v10, :cond_1

    goto :goto_4

    :cond_1
    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v8, v9, v8

    iget-boolean v7, v7, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    iget v7, v8, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    if-gt v7, v3, :cond_3

    goto :goto_2

    :cond_2
    iget v7, v8, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    if-gt v7, v0, :cond_3

    :goto_2
    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_4

    invoke-virtual {p0, v6, v5}, Lcom/prineside/tdi2/tiles/CoreTile;->canUpgradeBeInstalled(II)Z

    move-result v7

    if-eqz v7, :cond_4

    return v9

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return v4
.end method

.method public isRoadType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValidUpgradePos(II)Z
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v0

    if-ltz p1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile;->TIER_COLS:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-ge p1, v1, :cond_0

    if-ltz p2, :cond_0

    sget-object p1, Lcom/prineside/tdi2/tiles/CoreTile;->TIER_ROWS:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isXpLevelRequirementFixed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    const-class v0, Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->doubleSpeedTimeLeft:F

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->y:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->z:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->A:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->B:F

    const-class v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/IntIntMap;

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->C:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public final s(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    return p1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->LEVEL_EXPERIENCE_MILESTONES:[I

    aget p1, v0, p1

    return p1
.end method

.method public sameAs(Lcom/prineside/tdi2/Tile;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->sameAs(Lcom/prineside/tdi2/Tile;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/tiles/CoreTile;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-ne v3, v0, :cond_1

    return v2

    :cond_1
    iget-object v3, p1, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-eq v3, v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    if-eq v0, v3, :cond_3

    return v1

    :cond_3
    iget-object v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    if-eqz v3, :cond_5

    return v1

    :cond_5
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    if-nez v3, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    iget v3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    iget-boolean v3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    if-eq v0, v3, :cond_9

    return v1

    :cond_9
    iget-object v0, p1, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v0, v3, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_f

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v4, v4, v0

    if-nez v4, :cond_b

    iget-object v4, p1, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v4, v4, v0

    if-nez v4, :cond_d

    :cond_b
    move-object v4, v3

    check-cast v4, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v4, v4, v0

    if-eqz v4, :cond_c

    iget-object v4, p1, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v4, v4, v0

    if-eqz v4, :cond_d

    :cond_c
    move-object v4, v3

    check-cast v4, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v4, v4, v0

    if-eqz v4, :cond_e

    check-cast v3, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->sameAs(Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    return v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_f
    return v2
.end method

.method public setExperience(F)V
    .locals 3

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->z:F

    iget p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->y:I

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-gt p1, v0, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->z:F

    float-to-int v1, v1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/CoreTile;->s(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->y:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->y:I

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    if-eqz v0, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->A:F

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->LEVEL_EXPERIENCE:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->A:F

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->A:F

    :cond_3
    :goto_1
    iget p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->z:F

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->y:I

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/tiles/CoreTile;->s(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->B:F

    return-void
.end method

.method public setExperienceGeneration(F)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-nez v0, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->x:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t edit predefined core"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->x:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t edit predefined core"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t edit predefined core"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->z:F

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/CoreTile;->setExperience(F)V

    return-void
.end method

.method public setTier(Lcom/prineside/tdi2/tiles/CoreTile$Tier;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->x:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t edit predefined core"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUpgrade(IILcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeIdx(Lcom/prineside/tdi2/tiles/CoreTile$Tier;II)I

    move-result p1

    :goto_0
    iget-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1, p3}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->x:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t change upgrades of predefined Cores"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setUpgradeInstallLevel(III)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->C:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeIdx(Lcom/prineside/tdi2/tiles/CoreTile$Tier;II)I

    move-result p1

    invoke-virtual {v0, p1, p3}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/prineside/tdi2/tiles/CoreTile;->C:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeIdx(Lcom/prineside/tdi2/tiles/CoreTile$Tier;II)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->remove(II)I

    :goto_0
    return-void
.end method

.method public setXpLevelRequirementFixed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->x:I

    return-void
.end method

.method public final t()I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->generateSeedSalt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->x:I

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->x:I

    return v0
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    const-string v1, "n"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "icon"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "eg"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "flx"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pt"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string v0, "u"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    iput v0, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeCols()I

    move-result v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeRows()I

    move-result v2

    mul-int v1, v1, v2

    if-lt v0, v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    :goto_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const-class v1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->r:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->s:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->t:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->u:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->v:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->w:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->doubleSpeedTimeLeft:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->y:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->z:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->A:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->B:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile;->C:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
