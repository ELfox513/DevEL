.class public Lcom/prineside/tdi2/ui/components/GateMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/GateMenu$_SideMenuListener;,
        Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;
    }
.end annotation


# static fields
.field public static final x:Lcom/badlogic/gdx/graphics/Color;

.field public static final y:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final a:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public final b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

.field public d:Z

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public s:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public t:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final u:Lcom/prineside/tdi2/GameSystemProvider;

.field public final v:Lcom/prineside/tdi2/ui/components/GateMenu$_SideMenuListener;

.field public final w:Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x252525ff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/GateMenu;->x:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/GateMenu;->y:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/ui/components/GateMenu$_SideMenuListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/ui/components/GateMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/GateMenu;Lcom/prineside/tdi2/ui/components/GateMenu$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->v:Lcom/prineside/tdi2/ui/components/GateMenu$_SideMenuListener;

    new-instance v2, Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;

    invoke-direct {v2, p0, v1}, Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/GateMenu;Lcom/prineside/tdi2/ui/components/GateMenu$1;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->w:Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->createContainer()Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v3

    add-int/lit16 v3, v3, -0x438

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x24

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x43e60000    # 460.0f

    const/high16 v7, 0x41d00000    # 26.0f

    invoke-virtual {v4, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    int-to-float v3, v3

    const v5, 0x44788000    # 994.0f

    add-float/2addr v5, v3

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v4, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x44020000    # 520.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x445d0000    # 884.0f

    add-float/2addr v5, v3

    invoke-virtual {v4, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x446b0000    # 940.0f

    add-float/2addr v8, v3

    const/high16 v9, 0x44160000    # 600.0f

    invoke-virtual {v4, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "blocked_enemies"

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v8, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v5, 0x44628000    # 906.0f

    add-float/2addr v5, v3

    invoke-virtual {v4, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e8f5c29    # 0.28f

    invoke-virtual {v4, v5, v5, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const v5, 0x445e8000    # 890.0f

    add-float/2addr v3, v5

    invoke-virtual {v4, v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V

    iget-object p1, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/GateMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/GateMenu;->e()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/GateMenu;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/GateMenu;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/GateMenu;->d(Z)V

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->d:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->d:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "shown"

    goto :goto_1

    :cond_1
    const-string p1, "hidden"

    :goto_1
    const-string v0, "GateMenu"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v0

    add-int/lit16 v0, v0, -0x438

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedGate()Lcom/prineside/tdi2/Gate;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getType()Lcom/prineside/tdi2/enums/GateType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/GateManager;->getFactory(Lcom/prineside/tdi2/enums/GateType;)Lcom/prineside/tdi2/Gate$Factory;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/prineside/tdi2/Gate$Factory;->getTitle(Lcom/prineside/tdi2/Gate;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getType()Lcom/prineside/tdi2/enums/GateType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/GateManager;->getFactory(Lcom/prineside/tdi2/enums/GateType;)Lcom/prineside/tdi2/Gate$Factory;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/prineside/tdi2/Gate$Factory;->getDescription(Lcom/prineside/tdi2/Gate;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getType()Lcom/prineside/tdi2/enums/GateType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/GateType;->BARRIER_TYPE:Lcom/prineside/tdi2/enums/GateType;

    const/16 v6, 0x18

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    check-cast v2, Lcom/prineside/tdi2/gates/BarrierTypeGate;

    iget-object v0, v2, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "blank"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v7, 0x44160000    # 600.0f

    const/high16 v8, 0x42500000    # 52.0f

    invoke-virtual {v5, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v9, Lcom/prineside/tdi2/ui/components/GateMenu;->x:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v9, v2}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v9, 0x42400000    # 48.0f

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-virtual {v5, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v9, v2}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy$Factory;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v5, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v5, v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v9, 0x0

    invoke-virtual {v5, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getType()Lcom/prineside/tdi2/enums/GateType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/GateType;->TELEPORT:Lcom/prineside/tdi2/enums/GateType;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    check-cast v2, Lcom/prineside/tdi2/gates/TeleportGate;

    sget-object v4, Lcom/prineside/tdi2/ui/components/GateMenu;->y:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v1, Lcom/prineside/tdi2/gates/TeleportGate;->INDEX_NAMES:[Ljava/lang/String;

    iget v5, v2, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    aget-object v1, v1, v5

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v5, " ("

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v2, 0x445c0000    # 880.0f

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v0, 0x44020000    # 520.0f

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GateMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method
