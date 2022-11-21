.class Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell$1;->o:Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell$1;->o:Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->p(Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;)Lcom/prineside/tdi2/enums/TowerStatType;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->towerStatManager:Lcom/prineside/tdi2/managers/TowerStatManager;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell$1;->o:Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->p(Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;)Lcom/prineside/tdi2/enums/TowerStatType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/TowerStatManager;->getInstance(Lcom/prineside/tdi2/enums/TowerStatType;)Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell$1;->o:Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    iget-object p2, p2, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Z:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/components/TowerMenu;->d(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/ui/actors/SideMenu;

    move-result-object p2

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell$1;->o:Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result p3

    iget-object p4, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell$1;->o:Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    invoke-virtual {p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result p4

    const/high16 p5, 0x3f000000    # 0.5f

    mul-float p4, p4, p5

    add-float/2addr p3, p4

    invoke-virtual {p2, p1, p3}, Lcom/prineside/tdi2/ui/actors/SideMenu;->showSideTooltip(Ljava/lang/CharSequence;F)V

    :cond_1
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell$1;->o:Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Z:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->d(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/ui/actors/SideMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->hideSideTooltip()V

    return-void
.end method
