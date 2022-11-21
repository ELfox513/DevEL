.class Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;
    }
.end annotation


# static fields
.field public static final e0:Lcom/badlogic/gdx/graphics/Color;

.field public static final f0:Lcom/badlogic/gdx/graphics/Color;

.field public static final g0:Lcom/badlogic/gdx/graphics/Color;

.field public static final h0:Lcom/badlogic/gdx/graphics/Color;

.field public static final i0:Lcom/badlogic/gdx/graphics/Color;

.field public static final j0:Lcom/badlogic/gdx/graphics/Color;

.field public static final k0:Lcom/badlogic/gdx/graphics/Color;

.field public static final l0:Lcom/badlogic/gdx/graphics/Color;

.field public static final m0:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final M:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final R:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public U:I

.field public V:I

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:F

.field public c0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

.field public final d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;",
            ">;"
        }
    .end annotation
.end field

.field public final upgradeButton:Lcom/badlogic/gdx/scenes/scene2d/Group;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->e0:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e0f5c29    # 0.14f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->f0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->g0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->h0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->i0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->j0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->k0:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->l0:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->m0:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/16 v1, 0xa

    new-array v2, v1, [Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->M:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput v1, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->U:I

    new-instance v3, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/high16 v3, 0x44160000    # 600.0f

    const/high16 v6, 0x42e80000    # 116.0f

    invoke-virtual {v0, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "ui-upgrade-level-line-start"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    aput-object v3, v2, v4

    const/high16 v6, 0x42280000    # 42.0f

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    aget-object v3, v2, v4

    const/high16 v6, 0x42200000    # 40.0f

    const/high16 v8, 0x42b80000    # 92.0f

    invoke-virtual {v3, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "ui-upgrade-level-line"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    const/high16 v9, 0x42a00000    # 80.0f

    if-ge v3, v1, :cond_0

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->M:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    aput-object v11, v10, v3

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->M:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v10, v10, v3

    const/high16 v11, 0x42380000    # 46.0f

    invoke-virtual {v10, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->M:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v10, v10, v3

    const/high16 v11, 0x42300000    # 44.0f

    add-int/lit8 v12, v3, -0x1

    int-to-float v12, v12

    mul-float v12, v12, v11

    add-float/2addr v12, v9

    invoke-virtual {v10, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->M:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v9, v9, v3

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x18

    invoke-virtual {v3, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    sget-object v10, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v3, ""

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x43f00000    # 480.0f

    invoke-virtual {v1, v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->upgradeButton:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x43a90000    # 338.0f

    invoke-virtual {v1, v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v8, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v8, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;

    invoke-direct {v8, v0}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;-><init>(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)V

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "ui-upgrade-button"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v8, v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-double-arrow-up"

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v3, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v11, v11, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "do_upgrade"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x1e

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    invoke-direct {v12, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v3, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-virtual {v3, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v13, "click_to_confirm"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x15

    invoke-virtual {v15, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    invoke-direct {v13, v15, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v3, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-virtual {v3, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {v3, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f0f5c29    # 0.56f

    invoke-virtual {v3, v11, v11, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v15, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->UPGRADE_BUILDING:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v13, v15}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v13

    const/high16 v15, 0x41400000    # 12.0f

    const/high16 v2, 0x426c0000    # 59.0f

    const/16 v14, 0x8

    invoke-direct {v3, v13, v15, v2, v14}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFFI)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v13, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->UPGRADE_ALL_BUILDINGS:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v2, v13}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->addVariant([I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "for_price_glue_word"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v11, v11, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v1, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x43bd0000    # 378.0f

    invoke-virtual {v1, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "game-ui-coin-icon"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x43da0000    # 436.0f

    invoke-virtual {v1, v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    invoke-direct {v2, v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v3, "32123"

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v2, 0x43040000    # 132.0f

    invoke-virtual {v1, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x43d60000    # 428.0f

    invoke-virtual {v1, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v0, v5, v5}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->B(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->setButtonSelected(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->E()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->D()V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->X:Z

    return p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->a0:Z

    return p0
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->a0:Z

    return p1
.end method

.method public static synthetic s(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->b0:F

    return p1
.end method

.method public static synthetic t(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->c0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    return-object p0
.end method

.method public static synthetic u(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->c0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    return-object p1
.end method

.method public static synthetic v(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->y()Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->z()V

    return-void
.end method

.method public static synthetic x(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->Y:Z

    return p1
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->W:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->Z:Z

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->D()V

    return-void
.end method

.method public B(II)V
    .locals 1

    iput p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->V:I

    iput p2, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->U:I

    sget-object p2, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->m0:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const-string v0, " LVL"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->E()V

    return-void
.end method

.method public C(I)V
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, "MAX"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v1, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->m0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public D()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->W:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->Z:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->h0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->g0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->X:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->k0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->Y:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->j0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->i0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->l0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->W:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->Z:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    :goto_1
    return-void
.end method

.method public E()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->M:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget v3, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->V:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->M:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v2, v2, v1

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->U:I

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->M:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v2, v2, v1

    const v3, 0x3e0f5c29    # 0.14f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_1

    :cond_1
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public act(F)V
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->X:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->b0:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->b0:F

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->a0:Z

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;

    invoke-interface {v4}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;->globalUpgradeButtonConfirmed()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->c0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    if-eqz v1, :cond_1

    iput-boolean v0, v1, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->disappearing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->c0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    :cond_1
    iput-boolean v2, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->X:Z

    :cond_2
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    return-void
.end method

.method public addListener(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isButtonSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->W:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->Z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeListener(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setButtonSelected(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->Z:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;

    invoke-interface {v2, p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;->upgradeButtonStateChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->D()V

    return-void
.end method

.method public final y()Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;->upgradeButtonConfirmed()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->d0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method
