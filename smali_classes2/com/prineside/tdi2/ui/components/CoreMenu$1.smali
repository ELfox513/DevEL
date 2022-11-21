.class Lcom/prineside/tdi2/ui/components/CoreMenu$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/CoreMenu;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:Lcom/prineside/tdi2/tiles/CoreTile;

.field public final synthetic r:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

.field public final synthetic s:Lcom/prineside/tdi2/ui/components/CoreMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/CoreMenu;IILcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->s:Lcom/prineside/tdi2/ui/components/CoreMenu;

    iput p2, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->o:I

    iput p3, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->p:I

    iput-object p4, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->q:Lcom/prineside/tdi2/tiles/CoreTile;

    iput-object p5, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->r:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->s:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->a(Lcom/prineside/tdi2/ui/components/CoreMenu;)I

    move-result p1

    iget p2, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->o:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->s:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->c(Lcom/prineside/tdi2/ui/components/CoreMenu;)I

    move-result p1

    iget p2, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->p:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->s:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->e(Lcom/prineside/tdi2/ui/components/CoreMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->q:Lcom/prineside/tdi2/tiles/CoreTile;

    iget p3, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->o:I

    iget v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->p:I

    invoke-virtual {p2, p3, v0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result p2

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->r:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iget-object v0, p3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, v1, :cond_3

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object p2, v0, p2

    iget-boolean p3, p3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget p2, p2, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    if-gt p2, p1, :cond_1

    goto :goto_0

    :cond_0
    iget p1, p2, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->q:Lcom/prineside/tdi2/tiles/CoreTile;

    invoke-virtual {p2}, Lcom/prineside/tdi2/tiles/CoreTile;->getFreeUpgradePoints()I

    move-result p2

    if-gt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->q:Lcom/prineside/tdi2/tiles/CoreTile;

    iget p2, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->o:I

    iget p3, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->p:I

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile;->canUpgradeBeInstalled(II)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->s:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->e(Lcom/prineside/tdi2/ui/components/CoreMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->q:Lcom/prineside/tdi2/tiles/CoreTile;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result p2

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->q:Lcom/prineside/tdi2/tiles/CoreTile;

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->s:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->a(Lcom/prineside/tdi2/ui/components/CoreMenu;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->s:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->c(Lcom/prineside/tdi2/ui/components/CoreMenu;)I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/prineside/tdi2/systems/MapSystem;->upgradeCoreAction(IIII)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->s:Lcom/prineside/tdi2/ui/components/CoreMenu;

    iget p2, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->o:I

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/CoreMenu;->b(Lcom/prineside/tdi2/ui/components/CoreMenu;I)I

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->s:Lcom/prineside/tdi2/ui/components/CoreMenu;

    iget p2, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->p:I

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/CoreMenu;->d(Lcom/prineside/tdi2/ui/components/CoreMenu;I)I

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->s:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->f(Lcom/prineside/tdi2/ui/components/CoreMenu;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$1;->s:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->e(Lcom/prineside/tdi2/ui/components/CoreMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method
