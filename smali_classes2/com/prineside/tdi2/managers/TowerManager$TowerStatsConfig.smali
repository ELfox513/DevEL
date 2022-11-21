.class Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/TowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TowerStatsConfig"
.end annotation


# instance fields
.field public a:[I

.field public b:F

.field public c:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Lcom/prineside/tdi2/enums/TowerStatType;

.field public e:[Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;

.field public f:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->a:[I

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->c:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->f:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/TowerManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;-><init>()V

    return-void
.end method
