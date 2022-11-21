.class public Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/actors/SideMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SideMenuContainer"
.end annotation


# static fields
.field public static sb:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public M:Z

.field public N:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->sb:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->N:Lcom/prineside/tdi2/ui/actors/SideMenu;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->M:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->N:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->e(Lcom/prineside/tdi2/ui/actors/SideMenu;)V

    return-void
.end method

.method public setLabelOverTitle(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 p1, 0x42c80000    # 100.0f

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v0, 0x43e60000    # 460.0f

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42580000    # 54.0f

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v0, 0x3e8f5c29    # 0.28f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public setLabelOverTitleTilePos(Lcom/prineside/tdi2/Tile;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->sb:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->sb:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object p1, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->sb:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->setLabelOverTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->M:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->N:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->e(Lcom/prineside/tdi2/ui/actors/SideMenu;)V

    return-void
.end method
