.class Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/SpawnTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory$1;->a:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;)I
    .locals 0

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object p2, p2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Lx1/i;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    check-cast p2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory$1;->compare(Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;)I

    move-result p1

    return p1
.end method
