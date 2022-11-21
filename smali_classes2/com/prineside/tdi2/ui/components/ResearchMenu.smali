.class public Lcom/prineside/tdi2/ui/components/ResearchMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/ResearchMenu$_SideMenuListener;,
        Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;,
        Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchManagerListener;
    }
.end annotation


# static fields
.field public static final T:Lcom/badlogic/gdx/graphics/Color;

.field public static final U:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final A:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final B:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final E:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final F:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final G:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public H:F

.field public I:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public J:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public L:Lcom/badlogic/gdx/graphics/Color;

.field public M:Lcom/badlogic/gdx/graphics/Color;

.field public N:Lcom/badlogic/gdx/graphics/Color;

.field public O:Z

.field public P:Z

.field public final Q:Lcom/prineside/tdi2/ui/components/ResearchMenu$_SideMenuListener;

.field public final R:Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;

.field public final S:Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchManagerListener;

.field public final a:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public final b:Lcom/prineside/tdi2/screens/ResearchesScreen;

.field public final d:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

.field public k:Z

.field public final p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public final q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public final r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final v:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final w:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final x:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final y:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x303030ff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->T:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->U:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->L:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->M:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->N:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->O:Z

    iput-boolean v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->P:Z

    new-instance v5, Lcom/prineside/tdi2/ui/components/ResearchMenu$_SideMenuListener;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/prineside/tdi2/ui/components/ResearchMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/ui/components/ResearchMenu$1;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->Q:Lcom/prineside/tdi2/ui/components/ResearchMenu$_SideMenuListener;

    new-instance v5, Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;

    invoke-direct {v5, v0, v6}, Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/ui/components/ResearchMenu$1;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->R:Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;

    new-instance v5, Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchManagerListener;

    invoke-direct {v5, v0, v6}, Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchManagerListener;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/ui/components/ResearchMenu$1;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->S:Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchManagerListener;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v7

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3e8f5c29    # 0.28f

    invoke-direct {v9, v10, v10, v10, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v5, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->createContainer()Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    move-result-object v5

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x24

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v12, ""

    invoke-direct {v7, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x44020000    # 520.0f

    const/high16 v14, 0x41d00000    # 26.0f

    invoke-virtual {v7, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v15, 0x42200000    # 40.0f

    const v6, 0x4461c000    # 903.0f

    invoke-virtual {v7, v15, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    invoke-direct {v4, v10, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v7, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v4, 0x43dc0000    # 440.0f

    const/high16 v10, 0x42700000    # 60.0f

    invoke-virtual {v7, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v4, 0x4450c000    # 835.0f

    invoke-virtual {v7, v15, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v4

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v10, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v4, "L1"

    invoke-direct {v7, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v15, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v4, 0x10

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    invoke-direct {v7, v10, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v3, "/ 10"

    invoke-direct {v6, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v3, 0x4458c000    # 867.0f

    invoke-virtual {v6, v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const v7, 0x3f0f5c29    # 0.56f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v3, v10, v10, v10, v7}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v6, 0x44160000    # 600.0f

    const v10, 0x444e4000    # 825.0f

    invoke-virtual {v3, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x1e

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "reset_branch"

    invoke-virtual {v6, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v13, 0xe

    if-le v6, v13, :cond_0

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    :cond_0
    new-instance v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v13, v13, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v13, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/prineside/tdi2/ui/components/ResearchMenu$1;

    invoke-direct {v13, v0, v2}, Lcom/prineside/tdi2/ui/components/ResearchMenu$1;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    invoke-direct {v6, v10, v3, v13}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->I:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "reset"

    invoke-virtual {v6, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    new-instance v13, Lcom/prineside/tdi2/ui/components/v;

    invoke-direct {v13, v0, v2}, Lcom/prineside/tdi2/ui/components/v;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    invoke-direct {v3, v6, v10, v13}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->J:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v6, 0x2

    new-array v10, v6, [Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v13, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->I:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v14, 0x0

    aput-object v13, v10, v14

    const/4 v13, 0x1

    aput-object v3, v10, v13

    const/4 v3, 0x0

    :goto_0
    const/16 v13, 0x8

    const/high16 v14, 0x43a90000    # 338.0f

    if-ge v3, v6, :cond_1

    aget-object v6, v10, v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v11, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v4, v4, v4, v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v17, 0x42940000    # 74.0f

    const/16 v18, 0x0

    const/high16 v19, 0x43380000    # 184.0f

    const/high16 v20, 0x42800000    # 64.0f

    const/16 v21, 0x10

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-restart"

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/high16 v18, 0x43890000    # 274.0f

    const/high16 v19, 0x41400000    # 12.0f

    const/high16 v20, 0x42200000    # 40.0f

    const/high16 v21, 0x42200000    # 40.0f

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v8, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v11, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    invoke-direct {v11, v4, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v8, v11}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x43a90000    # 338.0f

    const/high16 v21, 0x42800000    # 64.0f

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    invoke-virtual {v11, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    invoke-virtual {v13, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v4, v11, v13, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v6, v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x435e0000    # 222.0f

    const/high16 v7, 0x43120000    # 146.0f

    invoke-virtual {v6, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x10

    const/4 v6, 0x2

    const v7, 0x3f0f5c29    # 0.56f

    const/16 v8, 0x15

    const/high16 v11, 0x44020000    # 520.0f

    goto/16 :goto_0

    :cond_1
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-virtual {v3, v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v15, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;

    invoke-direct {v6, v0, v2}, Lcom/prineside/tdi2/ui/components/ResearchMenu$2;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "ui-upgrade-button"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v6, v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "icon-research"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->A:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v6, v15, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "do_research"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v6, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "icon-clock"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v6, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x42f00000    # 120.0f

    const/high16 v10, 0x42480000    # 50.0f

    invoke-virtual {v6, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v8, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    invoke-direct {v14, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v9, "30:00:00"

    invoke-direct {v6, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x42e00000    # 112.0f

    invoke-virtual {v6, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x43180000    # 152.0f

    invoke-virtual {v6, v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v12, v6, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x43be0000    # 380.0f

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v6, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v8, v13, [F

    fill-array-data v8, :array_1

    invoke-direct {v7, v11, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v6, v7}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x43340000    # 180.0f

    const/high16 v21, 0x42a00000    # 80.0f

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "research-token"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/high16 v18, 0x42800000    # 64.0f

    const/high16 v19, 0x41000000    # 8.0f

    const/high16 v20, 0x42800000    # 64.0f

    const/high16 v21, 0x42800000    # 64.0f

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelShadowEnabled(Z)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x15

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    invoke-direct {v7, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v8, "for"

    invoke-direct {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x428c0000    # 70.0f

    invoke-virtual {v6, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x43bd0000    # 378.0f

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-time-accelerator"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v6, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v7, 0x43e38000    # 455.0f

    const/high16 v8, 0x42700000    # 60.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v9, "100"

    invoke-direct {v6, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x42700000    # 60.0f

    invoke-virtual {v6, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x43fa0000    # 500.0f

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v6, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "blank"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x1f1f1fff

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x44020000    # 520.0f

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x430c0000    # 140.0f

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "blank"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x44020000    # 520.0f

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x430c0000    # 140.0f

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "researching..."

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    invoke-direct {v7, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x43200000    # 160.0f

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x43480000    # 200.0f

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "icon-clock"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v6, 0x42000000    # 32.0f

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x43d20000    # 420.0f

    const/high16 v7, 0x431f0000    # 159.0f

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v5

    invoke-direct {v6, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v5, "00:30"

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x43ff0000    # 510.0f

    const/high16 v6, 0x43200000    # 160.0f

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v4, v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->Q:Lcom/prineside/tdi2/ui/components/ResearchMenu$_SideMenuListener;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->R:Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/screens/ResearchesScreen;->addListener(Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->S:Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchManagerListener;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ResearchManager;->addListener(Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x41b00000    # 22.0f
        0x42800000    # 64.0f
        0x43a90000    # 338.0f
        0x42800000    # 64.0f
        0x43a90000    # 338.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x41d00000    # 26.0f
        0x42a00000    # 80.0f
        0x43340000    # 180.0f
        0x42a00000    # 80.0f
        0x43340000    # 180.0f
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/Research;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->m(Lcom/prineside/tdi2/Research;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->n(Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/Research;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->l(Lcom/prineside/tdi2/Research;)V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->q()V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/components/ResearchMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->P:Z

    return p1
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->r()V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/components/ResearchMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->O:Z

    return p1
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p(Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;)V

    return-void
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/components/ResearchMenu;)Lcom/prineside/tdi2/screens/ResearchesScreen;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    return-object p0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/components/ResearchMenu;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->o(Z)V

    return-void
.end method

.method private synthetic l(Lcom/prineside/tdi2/Research;)V
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->deleteSavedGame()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/ResearchManager;->resetResearchForAccelerators(Lcom/prineside/tdi2/Research;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->q()V

    return-void
.end method

.method private synthetic m(Lcom/prineside/tdi2/Research;)V
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->savedGameExists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "saved_game_will_be_lost_confirm"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/ui/components/x;

    invoke-direct {v2, p0, p1}, Lcom/prineside/tdi2/ui/components/x;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/Research;)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/ResearchManager;->resetResearchForAccelerators(Lcom/prineside/tdi2/Research;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->q()V

    :goto_0
    return-void
.end method

.method private synthetic n(Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 7

    :try_start_0
    iget-object p1, p1, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->resetForAcceleratorsState()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iget v2, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, v1}, Lcom/prineside/tdi2/Research;->getCumulativePrice(IIZ)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "reset_research_confirm"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->getResetPrice()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-virtual {v2, v5, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ui/components/w;

    invoke-direct {v2, p0, p1}, Lcom/prineside/tdi2/ui/components/w;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/Research;)V

    invoke-virtual {v4, v1, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->setItemsHintForVisibleDialog(Lcom/badlogic/gdx/utils/Array;)V

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->getResetPrice()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "reset_research_unavailable_NOT_ENOUGH_ACCELERATORS"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (<@time-accelerator>[#FFC107]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "[])"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "reset_research_unavailable_STAR_BRANCH"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "reset_research_unavailable_HAS_CHILD"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_4

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "reset_research_unavailable_NOT_SUITABLE"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "ResearchMenu"

    const-string v1, "failed to reset"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->Q:Lcom/prineside/tdi2/ui/components/ResearchMenu$_SideMenuListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->removeListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->R:Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/screens/ResearchesScreen;->removeListener(Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->S:Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->removeListener(Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;)V

    return-void
.end method

.method public draw(F)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->getCurrentResearching()Lcom/prineside/tdi2/Research;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->H:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->H:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->s()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->H:F

    :cond_0
    return-void
.end method

.method public final k(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/Group;F)F
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;",
            ">;",
            "Lcom/badlogic/gdx/scenes/scene2d/Group;",
            "F)F"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v3, v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v4, v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/GameValueManager;->getUnits(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    move-result-object v3

    if-nez v0, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    sub-float/2addr p3, v0

    :cond_0
    const/high16 v0, 0x42500000    # 52.0f

    sub-float/2addr p3, v0

    sget-object v4, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->BOOLEAN:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const-string v5, "..."

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v7, 0x0

    const-string v8, "blank"

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v1

    const/16 v3, 0x32

    if-le v1, v3, :cond_1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x44160000    # 600.0f

    invoke-virtual {v1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v7, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/prineside/tdi2/ui/components/ResearchMenu;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v4

    const/16 v9, 0x23

    if-le v4, v9, :cond_3

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v5, 0x43e38000    # 455.0f

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v5, Lcom/prineside/tdi2/ui/components/ResearchMenu;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v7, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, 0x430d0000    # 141.0f

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v5, 0x43e58000    # 459.0f

    invoke-virtual {v4, v5, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v4, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v2, 0x43cd0000    # 410.0f

    invoke-virtual {v4, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-wide v6, v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    invoke-virtual {v2, v6, v7, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v1, 0x42ca0000    # 101.0f

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v5, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    return p3
.end method

.method public final o(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->k:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->show()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->q()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p(Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->U:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "cant_start_research"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v2, ":\n"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    iget-object v0, p1, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start_research_fail_reason_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/ui/components/ResearchMenu;->U:Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    sget-object v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->U:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final q()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    if-eqz v1, :cond_37

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->J:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->I:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget v4, v1, Lcom/prineside/tdi2/Research;->priceInStars:I

    const v5, 0x3f0f5c29    # 0.56f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-lez v4, :cond_0

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ResearchManager;->getResetStarResearchesAcceleratorPrice()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->I:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget v4, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v4, :cond_2

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->J:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->resetForAcceleratorsState()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->J:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    invoke-virtual {v8, v6, v6, v6, v5}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    invoke-virtual {v9, v6, v6, v6, v5}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    invoke-virtual {v10, v6, v6, v6, v5}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->J:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->getTitle()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    iget v8, v4, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v9, 0x1e

    const/16 v10, 0x24

    if-le v8, v10, :cond_3

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-string v8, "..."

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v11, 0x1a

    if-le v8, v11, :cond_4

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    goto :goto_1

    :cond_4
    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    :goto_1
    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->getDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget v4, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget v8, v1, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v9

    invoke-static {v9}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v8, v1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v9, v8

    array-length v10, v8

    if-le v4, v10, :cond_5

    array-length v4, v8

    :cond_5
    move v8, v9

    :cond_6
    if-le v8, v7, :cond_7

    if-lez v4, :cond_7

    sget-object v9, Lcom/prineside/tdi2/ui/components/ResearchMenu;->U:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v11, 0x4c

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v11, "Max L"

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_2

    :cond_7
    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_2
    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    const v8, 0x44464000    # 793.0f

    new-instance v9, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v9}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    if-nez v4, :cond_8

    iget-object v10, v1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/prineside/tdi2/Research$ResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/Research;->getEffects(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    :goto_3
    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v11, 0x44020000    # 520.0f

    const/high16 v12, 0x42200000    # 40.0f

    const/high16 v13, 0x42500000    # 52.0f

    if-eqz v10, :cond_b

    const v8, 0x44394000    # 741.0f

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v14, v14, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v15, "effects"

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v10, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v10, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v10, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v14, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v14, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v9, v10, v8}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->k(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/Group;F)F

    move-result v8

    if-lez v4, :cond_b

    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->isMaxEndlessLevel()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->isMaxNormalLevel()Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v10

    invoke-static {v10}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v1, Lcom/prineside/tdi2/Research;->endlessLevel:Lcom/prineside/tdi2/Research$EndlessResearchLevel;

    iget-object v10, v10, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->isMaxNormalLevel()Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, v1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    aget-object v10, v10, v4

    iget-object v10, v10, Lcom/prineside/tdi2/Research$ResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;)V

    :goto_4
    const/4 v10, 0x1

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_b

    sub-float/2addr v8, v13

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v14, v14, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v15, "next_level"

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v10, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v10, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v10, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v14, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v14, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v9, v10, v8}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->k(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/Group;F)F

    move-result v8

    :cond_b
    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v9

    invoke-static {v9}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->isMaxEndlessLevel()Z

    move-result v9

    goto :goto_6

    :cond_c
    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->isMaxNormalLevel()Z

    move-result v9

    :goto_6
    const-string v15, "blank"

    const/high16 v5, 0x44160000    # 600.0f

    const/4 v6, 0x0

    if-eqz v4, :cond_d

    if-nez v9, :cond_23

    :cond_d
    sub-float/2addr v8, v13

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "research_requirements"

    invoke-virtual {v10, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    iget-object v14, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v9, v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v9, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v9, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v11, 0x43cd0000    # 410.0f

    const-string v14, " / "

    if-nez v4, :cond_15

    iget-object v4, v1, Lcom/prineside/tdi2/Research;->linksToParents:Lcom/badlogic/gdx/utils/Array;

    iget v7, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v7, :cond_15

    iget v9, v1, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v9, :cond_e

    const/4 v7, 0x1

    :cond_e
    sub-float/2addr v8, v13

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    const/4 v9, 0x0

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    check-cast v10, Lcom/prineside/tdi2/Research$ResearchLink;

    iget-object v3, v10, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v3, v3, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget v10, v10, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevels:I

    if-lt v3, v10, :cond_f

    add-int/lit8 v9, v9, 0x1

    :cond_f
    const/4 v3, 0x0

    goto :goto_7

    :cond_10
    iget v3, v1, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v3, :cond_12

    iget-object v3, v1, Lcom/prineside/tdi2/Research;->linksToChildren:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :cond_11
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/Research$ResearchLink;

    iget-object v10, v4, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v10, v10, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget v4, v4, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevels:I

    if-lt v10, v4, :cond_11

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_12
    if-le v9, v7, :cond_13

    move v9, v7

    :cond_13
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v4, Lcom/prineside/tdi2/ui/components/ResearchMenu;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "previous_researches"

    invoke-virtual {v4, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v3, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v4, Lcom/prineside/tdi2/ui/components/ResearchMenu;->U:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v10, v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x42ca0000    # 101.0f

    invoke-virtual {v10, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v4, 0x43e58000    # 459.0f

    invoke-virtual {v10, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v4, 0x10

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    if-ne v9, v7, :cond_14

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_9

    :cond_14
    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_9
    const/4 v3, 0x0

    goto :goto_a

    :cond_15
    const/4 v3, 0x1

    :goto_a
    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    const-class v7, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v4, v7}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iget v7, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget-object v9, v1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v10, v9

    const/high16 v12, 0x40800000    # 4.0f

    if-lt v7, v10, :cond_16

    iget-object v9, v1, Lcom/prineside/tdi2/Research;->endlessLevel:Lcom/prineside/tdi2/Research$EndlessResearchLevel;

    const/4 v10, 0x1

    add-int/2addr v7, v10

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->getPrice(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    goto/16 :goto_e

    :cond_16
    aget-object v7, v9, v7

    iget-object v9, v7, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v7, v7, Lcom/prineside/tdi2/Research$ResearchLevel;->requirements:[Lcom/prineside/tdi2/Requirement;

    array-length v9, v7

    if-eqz v9, :cond_1a

    array-length v9, v7

    move v10, v3

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v9, :cond_19

    aget-object v11, v7, v3

    if-nez v10, :cond_17

    sub-float/2addr v8, v12

    :cond_17
    sub-float/2addr v8, v13

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v10, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v12, Lcom/prineside/tdi2/ui/components/ResearchMenu;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v10, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/Requirement;->getTitle(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v10, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x43cd0000    # 410.0f

    invoke-virtual {v10, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {v10, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v11}, Lcom/prineside/tdi2/Requirement;->getFormattedValue()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v12

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v6, v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x42ca0000    # 101.0f

    invoke-virtual {v6, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v5, 0x43e58000    # 459.0f

    invoke-virtual {v6, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v5, 0x10

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v11}, Lcom/prineside/tdi2/Requirement;->isSatisfied()Z

    move-result v5

    if-eqz v5, :cond_18

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_c

    :cond_18
    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_c
    add-int/lit8 v3, v3, 0x1

    const/high16 v5, 0x44160000    # 600.0f

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x43cd0000    # 410.0f

    const/high16 v12, 0x40800000    # 4.0f

    goto/16 :goto_b

    :cond_19
    move v3, v10

    :cond_1a
    iget v5, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-nez v5, :cond_1d

    iget v5, v1, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v5, :cond_1d

    if-nez v3, :cond_1b

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v8, v3

    :cond_1b
    sub-float/2addr v8, v13

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v5, 0x44160000    # 600.0f

    invoke-virtual {v3, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v5, Lcom/prineside/tdi2/ui/components/ResearchMenu;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "stars"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x43cd0000    # 410.0f

    invoke-virtual {v3, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v3, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    const-string v6, ""

    invoke-direct {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x42ca0000    # 101.0f

    invoke-virtual {v3, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v5, 0x43e58000    # 459.0f

    invoke-virtual {v3, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ResearchManager;->getUnusedStarsCount()I

    move-result v5

    iget v6, v1, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lt v5, v6, :cond_1c

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/prineside/tdi2/Research;->priceInStars:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/prineside/tdi2/Research;->priceInStars:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_1c
    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/prineside/tdi2/Research;->priceInStars:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    const/4 v3, 0x0

    :cond_1d
    :goto_e
    move v6, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_f
    iget v7, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_23

    iget-object v7, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ItemStack;

    aget-object v7, v7, v5

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v9

    if-eqz v3, :cond_1f

    sub-float/2addr v8, v13

    if-nez v6, :cond_1e

    const/high16 v6, 0x40800000    # 4.0f

    sub-float/2addr v8, v6

    goto :goto_10

    :cond_1e
    const/high16 v6, 0x40800000    # 4.0f

    :goto_10
    const/4 v10, 0x0

    goto :goto_11

    :cond_1f
    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v10, 0x43970000    # 302.0f

    :goto_11
    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v12, 0x43950000    # 298.0f

    invoke-virtual {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v12, Lcom/prineside/tdi2/ui/components/ResearchMenu;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v11, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v11

    const/4 v6, 0x0

    const/high16 v12, 0x42000000    # 32.0f

    invoke-virtual {v11, v12, v6}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v11

    invoke-virtual {v11, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    if-eqz v3, :cond_20

    const/high16 v6, 0x42200000    # 40.0f

    add-float v12, v10, v6

    const/high16 v16, 0x41200000    # 10.0f

    add-float v6, v8, v16

    invoke-virtual {v11, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_12

    :cond_20
    const/high16 v16, 0x41200000    # 10.0f

    const/high16 v6, 0x41400000    # 12.0f

    add-float/2addr v6, v10

    add-float v12, v8, v16

    invoke-virtual {v11, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_12
    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v6, Lcom/prineside/tdi2/ui/components/ResearchMenu;->U:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    move-object/from16 v18, v14

    int-to-double v13, v9

    invoke-static {v13, v14, v11}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-object/from16 v13, v18

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v14

    move-object/from16 v20, v13

    int-to-double v12, v14

    invoke-static {v12, v13, v11}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v11, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v6

    if-le v6, v9, :cond_21

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_13

    :cond_21
    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_13
    if-eqz v3, :cond_22

    const/high16 v6, 0x438f0000    # 286.0f

    const/high16 v7, 0x42500000    # 52.0f

    invoke-virtual {v11, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    goto :goto_14

    :cond_22
    const/high16 v7, 0x42500000    # 52.0f

    const/high16 v6, 0x43810000    # 258.0f

    invoke-virtual {v11, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    :goto_14
    invoke-virtual {v11, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v6, 0x10

    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    xor-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v14, v20

    const/4 v6, 0x0

    const/high16 v13, 0x42500000    # 52.0f

    goto/16 :goto_f

    :cond_23
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v4, 0x42a00000    # 80.0f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ResearchManager;->getCurrentResearching()Lcom/prineside/tdi2/Research;

    move-result-object v3

    const v4, 0x3e8f5c29    # 0.28f

    if-ne v3, v1, :cond_25

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P900:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->L:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P900:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->N:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P800:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->M:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->A:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-time-accelerator"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "finish_now"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->s()V

    :cond_24
    :goto_15
    const/4 v10, 0x0

    goto/16 :goto_1a

    :cond_25
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v3

    invoke-static {v3}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->isMaxEndlessLevel()Z

    move-result v3

    goto :goto_16

    :cond_26
    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->isMaxNormalLevel()Z

    move-result v3

    :goto_16
    if-nez v3, :cond_2d

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Lcom/prineside/tdi2/managers/ResearchManager;->canStartResearching(Lcom/prineside/tdi2/Research;Z)Z

    move-result v3

    if-eqz v3, :cond_27

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->L:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->N:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->M:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_17

    :cond_27
    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->L:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->N:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->M:Lcom/badlogic/gdx/graphics/Color;

    :goto_17
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->A:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-research"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget v3, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-nez v3, :cond_28

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "do_research"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_28
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "do_research"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_18
    iget-object v3, v1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v5, v3

    iget v6, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-le v5, v6, :cond_2a

    aget-object v3, v3, v6

    iget v5, v3, Lcom/prineside/tdi2/Research$ResearchLevel;->researchDuration:I

    if-gtz v5, :cond_29

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_19

    :cond_29
    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v3, v3, Lcom/prineside/tdi2/Research$ResearchLevel;->researchDuration:I

    invoke-static {v3}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x42a00000    # 80.0f

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_19

    :cond_2a
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_19
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v5}, Lcom/prineside/tdi2/managers/ResearchManager;->canResearchForToken(Lcom/prineside/tdi2/Research;Z)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v3

    if-lez v3, :cond_2c

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Lcom/prineside/tdi2/managers/ResearchManager;->canResearchForToken(Lcom/prineside/tdi2/Research;Z)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v3, Lcom/prineside/tdi2/ui/components/ResearchMenu$3;

    invoke-direct {v3, v0, v1}, Lcom/prineside/tdi2/ui/components/ResearchMenu$3;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/Research;)V

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setClickHandler(Ljava/lang/Runnable;)V

    goto/16 :goto_15

    :cond_2b
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v5, 0x3f0f5c29    # 0.56f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6, v6, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v6, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v6, v6, v6, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v6, v6, v6, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5, v7, v9, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v5, Lcom/prineside/tdi2/ui/components/ResearchMenu$4;

    invoke-direct {v5, v0, v2}, Lcom/prineside/tdi2/ui/components/ResearchMenu$4;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setClickHandler(Ljava/lang/Runnable;)V

    goto/16 :goto_15

    :cond_2c
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v3, 0x3f0f5c29    # 0.56f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5, v5, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3, v6, v7, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->K:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v3, Lcom/prineside/tdi2/ui/components/ResearchMenu$5;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/ui/components/ResearchMenu$5;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setClickHandler(Ljava/lang/Runnable;)V

    goto/16 :goto_15

    :cond_2d
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    sget-object v3, Lcom/prineside/tdi2/enums/ResearchType;->DEVELOPER_MODE:Lcom/prineside/tdi2/enums/ResearchType;

    if-ne v2, v3, :cond_2e

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->L:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->N:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->M:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->A:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-times"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "disable"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto/16 :goto_15

    :cond_2e
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->r()V

    sget-object v2, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v3, :cond_37

    aget-object v6, v2, v5

    iget-object v7, v1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v9, v7

    const/4 v11, 0x1

    if-ne v9, v11, :cond_36

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/prineside/tdi2/Research$ResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    array-length v9, v7

    if-ne v9, v11, :cond_36

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/managers/TowerManager;->getTowerGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v9

    if-ne v7, v9, :cond_35

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    const/16 v18, 0x0

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v23}, Lcom/prineside/tdi2/managers/GameValueManager;->createSnapshot(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/enums/DifficultyMode;ZLcom/prineside/tdi2/BasicLevel;ZZ)Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/managers/TowerManager;->getStatTypes(Lcom/prineside/tdi2/enums/TowerType;)[Lcom/prineside/tdi2/enums/TowerStatType;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v3, :cond_37

    aget-object v7, v2, v5

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->towerStatManager:Lcom/prineside/tdi2/managers/TowerStatManager;

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/managers/TowerStatManager;->getInstance(Lcom/prineside/tdi2/enums/TowerStatType;)Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;

    move-result-object v9

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v11, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    const/16 v20, 0x0

    const/16 v21, 0x1

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v11}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v22

    move-object/from16 v17, v13

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-virtual/range {v17 .. v22}, Lcom/prineside/tdi2/managers/TowerManager;->getStatFromConfig(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;IILcom/prineside/tdi2/GameValueProvider;)F

    move-result v11

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    move-object/from16 v17, v13

    move-object/from16 v22, v1

    invoke-virtual/range {v17 .. v22}, Lcom/prineside/tdi2/managers/TowerManager;->getStatFromConfig(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;IILcom/prineside/tdi2/GameValueProvider;)F

    move-result v13

    sget-object v14, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v10, v14

    const/4 v12, 0x0

    const/16 v24, 0x0

    :goto_1d
    if-ge v12, v10, :cond_31

    aget-object v4, v14, v12

    move-object/from16 v25, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v1, v4, v7}, Lcom/prineside/tdi2/managers/TowerManager;->hasStat(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;)Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    move-object/from16 v26, v2

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    const/16 v20, 0x0

    const/16 v21, 0x1

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v22

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    invoke-virtual/range {v17 .. v22}, Lcom/prineside/tdi2/managers/TowerManager;->getStatFromConfig(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;IILcom/prineside/tdi2/GameValueProvider;)F

    move-result v1

    cmpl-float v2, v1, v24

    if-lez v2, :cond_30

    move/from16 v24, v1

    goto :goto_1e

    :cond_2f
    move-object/from16 v26, v2

    :cond_30
    :goto_1e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    const v4, 0x3e8f5c29    # 0.28f

    goto :goto_1d

    :cond_31
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    const/high16 v4, 0x42500000    # 52.0f

    sub-float/2addr v8, v4

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v10, 0x44160000    # 600.0f

    invoke-virtual {v1, v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    div-float v14, v13, v24

    mul-float v14, v14, v10

    cmpl-float v17, v14, v10

    if-lez v17, :cond_32

    const/high16 v14, 0x44160000    # 600.0f

    :cond_32
    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    const v4, 0x3ed70a3d    # 0.42f

    iput v4, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    div-float v10, v11, v24

    const/high16 v17, 0x44160000    # 600.0f

    mul-float v10, v10, v17

    cmpl-float v19, v10, v17

    if-lez v19, :cond_33

    const/high16 v10, 0x44160000    # 600.0f

    :cond_33
    sub-float/2addr v10, v14

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    const/4 v10, 0x0

    invoke-virtual {v4, v14, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    const v14, 0x3f47ae14    # 0.78f

    iput v14, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->getIconDrawableAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v14, 0x42000000    # 32.0f

    invoke-virtual {v10, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v10, v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v0, 0x15

    invoke-virtual {v14, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    invoke-direct {v2, v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v0, 0x42d00000    # 104.0f

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v0, 0x43a00000    # 320.0f

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v2, v0, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v0, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x440c0000    # 560.0f

    invoke-virtual {v0, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v9, 0x42800000    # 64.0f

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v13, v13

    move/from16 v20, v3

    const/4 v3, 0x1

    invoke-static {v13, v14, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ->  "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x15

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x42400000    # 48.0f

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const v13, 0x3f0f5c29    # 0.56f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v1, v14, v14, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    float-to-double v13, v11

    const/4 v11, 0x1

    invoke-static {v13, v14, v11}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x18

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v1, v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v0, v6, v7}, Lcom/prineside/tdi2/managers/TowerManager;->getStatConfig(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;)Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->unique:Z

    if-eqz v0, :cond_34

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v7, 0x3e8f5c29    # 0.28f

    iput v7, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3ed70a3d    # 0.42f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1f

    :cond_34
    const v7, 0x3e8f5c29    # 0.28f

    :goto_1f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    const v4, 0x3e8f5c29    # 0.28f

    const/4 v10, 0x0

    goto/16 :goto_1c

    :cond_35
    const v7, 0x3e8f5c29    # 0.28f

    const/4 v11, 0x1

    goto :goto_20

    :cond_36
    const v7, 0x3e8f5c29    # 0.28f

    :goto_20
    const/high16 v17, 0x44160000    # 600.0f

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const v4, 0x3e8f5c29    # 0.28f

    const/4 v10, 0x0

    goto/16 :goto_1b

    :cond_37
    return-void
.end method

.method public final r()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->O:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->N:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->M:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->L:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method

.method public final s()V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->getCurrentResearching()Lcom/prineside/tdi2/Research;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getMillisToResearchingEnd()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->countAcceleratorsNeeded(I)I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/ui/components/ResearchMenu;->U:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getMillisToResearchingEnd()J

    move-result-wide v1

    div-long/2addr v1, v5

    long-to-int v2, v1

    iget-object v1, v0, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    iget v0, v0, Lcom/prineside/tdi2/Research;->installedLevel:I

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v3, 0x44020000    # 520.0f

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, v2

    iget v0, v0, Lcom/prineside/tdi2/Research$ResearchLevel;->researchDuration:I

    int-to-float v0, v0

    div-float/2addr v5, v0

    sub-float/2addr v4, v5

    mul-float v4, v4, v3

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v2}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
