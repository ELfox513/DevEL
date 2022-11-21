.class public Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WavesConfiguration"
.end annotation


# instance fields
.field public enemyConfigs:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;",
            ">;"
        }
    .end annotation
.end field

.field public enemyGroupsByWave:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/EnemyGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field public startWave:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->startWave:I

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->enemyConfigs:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->enemyGroupsByWave:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method
