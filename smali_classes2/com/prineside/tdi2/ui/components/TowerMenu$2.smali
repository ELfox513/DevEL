.class Lcom/prineside/tdi2/ui/components/TowerMenu$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/TowerMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lcom/prineside/tdi2/ui/components/TowerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu;I)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$2;->p:Lcom/prineside/tdi2/ui/components/TowerMenu;

    iput p2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$2;->o:I

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$2;->p:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->k(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->setButtonSelected(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$2;->p:Lcom/prineside/tdi2/ui/components/TowerMenu;

    iget p2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$2;->o:I

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/TowerMenu;->j(Lcom/prineside/tdi2/ui/components/TowerMenu;I)V

    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$2;->p:Lcom/prineside/tdi2/ui/components/TowerMenu;

    iget v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$2;->o:I

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->j(Lcom/prineside/tdi2/ui/components/TowerMenu;I)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$2;->p:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v1, v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->j(Lcom/prineside/tdi2/ui/components/TowerMenu;I)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method
