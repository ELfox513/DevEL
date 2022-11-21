.class Lcom/prineside/tdi2/ui/components/SpawnMenu$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/SpawnMenu;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

.field public final synthetic p:Lcom/prineside/tdi2/ui/components/SpawnMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$2;->p:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$2;->o:Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$2;->p:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->b(Lcom/prineside/tdi2/ui/components/SpawnMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->newEnemyOverlay:Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$2;->o:Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iget-object p2, p2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;->show(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method
