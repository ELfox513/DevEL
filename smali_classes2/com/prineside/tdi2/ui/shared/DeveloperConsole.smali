.class public Lcom/prineside/tdi2/ui/shared/DeveloperConsole;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;,
        Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;,
        Lcom/prineside/tdi2/ui/shared/DeveloperConsole$_LoggerListener;
    }
.end annotation


# static fields
.field public static final B:Lcom/badlogic/gdx/graphics/Color;

.field public static final C:Lcom/badlogic/gdx/graphics/Color;

.field public static final D:Lcom/badlogic/gdx/graphics/Color;

.field public static final E:Lcom/badlogic/gdx/graphics/Color;

.field public static final F:[Lcom/badlogic/gdx/graphics/Color;

.field public static final G:Ljava/util/Calendar;

.field public static final H:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final A:Lcom/prineside/tdi2/ui/shared/DeveloperConsole$_LoggerListener;

.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public d:Z

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public s:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public t:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public final x:[Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

.field public y:I

.field public final z:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P300:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->B:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    sput-object v1, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->C:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v1, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->D:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P300:Lcom/badlogic/gdx/graphics/Color;

    sput-object v1, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->E:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0x13

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x3

    aput-object v0, v2, v3

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x4

    aput-object v0, v2, v3

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x5

    aput-object v0, v2, v3

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x6

    aput-object v0, v2, v3

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x7

    aput-object v0, v2, v3

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v3, 0x8

    aput-object v0, v2, v3

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v3, 0x9

    aput-object v0, v2, v3

    const/16 v0, 0xa

    aput-object v1, v2, v0

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v1, 0xb

    aput-object v0, v2, v1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v1, 0xc

    aput-object v0, v2, v1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v1, 0xd

    aput-object v0, v2, v1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v1, 0xe

    aput-object v0, v2, v1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v1, 0xf

    aput-object v0, v2, v1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v1, 0x10

    aput-object v0, v2, v1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v1, 0x11

    aput-object v0, v2, v1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v1, 0x12

    aput-object v0, v2, v1

    sput-object v2, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->F:[Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->G:Ljava/util/Calendar;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->H:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 27

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->t:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->values:[Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    array-length v2, v1

    new-array v2, v2, [Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->x:[Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

    const/4 v2, -0x1

    iput v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->y:I

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->z:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$_LoggerListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$_LoggerListener;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->A:Lcom/prineside/tdi2/ui/shared/DeveloperConsole$_LoggerListener;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v4, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v5, 0x2329

    const-string v6, "DeveloperConsole main"

    invoke-virtual {v2, v4, v5, v6}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const-string v7, "DeveloperConsole toggle button"

    invoke-virtual {v6, v4, v5, v7}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v5

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f0f5c29    # 0.56f

    invoke-direct {v7, v8, v8, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v4, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v5

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v5

    invoke-direct {v4, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x263238cc

    invoke-direct {v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v5, 0x440c0000    # 560.0f

    const/high16 v7, 0x43c80000    # 400.0f

    invoke-virtual {v2, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v15, 0x43040000    # 132.0f

    sub-float/2addr v9, v15

    const/high16 v16, 0x42700000    # 60.0f

    sub-float v9, v9, v16

    sub-float v9, v9, v16

    sub-float/2addr v9, v7

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "blank"

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v5, 0x3f47ae14    # 0.78f

    invoke-virtual {v2, v14, v14, v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v9, v10, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(IZ)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v9

    invoke-direct {v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v14

    invoke-direct {v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v14

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    invoke-direct {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v6

    move-object v9, v5

    move-object v8, v13

    move-object v13, v14

    const/4 v15, 0x0

    move-object v14, v6

    invoke-direct/range {v9 .. v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-interface {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v10

    const/high16 v11, 0x40a00000    # 5.0f

    add-float/2addr v10, v11

    invoke-interface {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v10

    add-float/2addr v10, v11

    invoke-interface {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    array-length v6, v1

    const/4 v10, 0x0

    :goto_0
    const/high16 v12, 0x42a00000    # 80.0f

    const-string v13, ""

    if-ge v10, v6, :cond_1

    aget-object v14, v1, v10

    new-instance v11, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

    invoke-direct {v11, v0, v3}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->x:[Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aput-object v11, v3, v17

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v19

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v15, v20, v22

    if-eqz v15, :cond_0

    const/16 v20, 0x1

    goto :goto_1

    :cond_0
    const/16 v20, 0x0

    :goto_1
    const/16 v21, 0x15

    const/high16 v22, 0x41c00000    # 24.0f

    new-instance v15, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;

    invoke-direct {v15, v0, v14, v11}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;)V

    move-object/from16 v18, v3

    move-object/from16 v23, v15

    invoke-direct/range {v18 .. v23}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFLcom/prineside/tdi2/utils/ObjectRetriever;)V

    iput-object v3, v11, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;->b:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v15, 0x43e60000    # 460.0f

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v3, v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    move-object/from16 v20, v8

    invoke-virtual {v9, v14}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v5}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    iput-object v3, v11, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    new-instance v7, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$2;

    invoke-direct {v7, v0, v11, v14}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$2;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v3, v11, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v3, v12, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v20

    const/4 v3, 0x0

    const/high16 v7, 0x43c80000    # 400.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_1
    move-object/from16 v20, v8

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v2, 0x44070000    # 540.0f

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v6, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$3;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$3;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V

    invoke-direct {v1, v13, v2, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance v7, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v14, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v15, 0x8

    new-array v6, v15, [F

    fill-array-data v6, :array_0

    invoke-direct {v2, v14, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v7, v2}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x42a00000    # 80.0f

    const/high16 v11, 0x42400000    # 48.0f

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-tools"

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    const/high16 v8, 0x41c00000    # 24.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, 0x42000000    # 32.0f

    const/high16 v11, 0x42000000    # 32.0f

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2, v6, v7, v8}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x43040000    # 132.0f

    sub-float/2addr v6, v7

    sub-float v6, v6, v16

    sub-float/2addr v6, v2

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    new-instance v7, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$4;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$4;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V

    invoke-direct {v1, v13, v6, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance v6, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v9, v15, [F

    fill-array-data v9, :array_1

    invoke-direct {v7, v14, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v6, v7}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x42a00000    # 80.0f

    const/high16 v26, 0x42400000    # 48.0f

    move-object/from16 v21, v1

    move-object/from16 v22, v6

    invoke-virtual/range {v21 .. v26}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "icon-backpack"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v22

    const/high16 v23, 0x41c00000    # 24.0f

    const/high16 v24, 0x41000000    # 8.0f

    const/high16 v25, 0x42000000    # 32.0f

    const/high16 v26, 0x42000000    # 32.0f

    invoke-virtual/range {v21 .. v26}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v6, v7, v9, v8}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x43040000    # 132.0f

    sub-float/2addr v6, v7

    const/high16 v7, 0x41400000    # 12.0f

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v6, v20

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v7, v7, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(IZ)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v22

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3e800000    # 0.25f

    const v11, 0x3eb33333    # 0.35f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v25

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3e8f5c29    # 0.28f

    const/4 v8, 0x0

    invoke-direct {v6, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v26

    move-object/from16 v21, v4

    move-object/from16 v23, v14

    move-object/from16 v24, v1

    invoke-direct/range {v21 .. v26}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v1, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v2, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    const/high16 v6, 0x40c00000    # 6.0f

    add-float/2addr v2, v6

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v1, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v2, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v2

    add-float/2addr v2, v6

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-direct {v1, v13, v4}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v2, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    new-instance v2, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$6;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$6;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Game;->addScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->s()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->getLog(IZ)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_2
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/Logger$LogEntry;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/Logger$LogEntry;

    iget-object v4, v4, Lcom/prineside/tdi2/Logger$LogEntry;->entryType:Lcom/prineside/tdi2/Logger$EntryType;

    sget-object v6, Lcom/prineside/tdi2/Logger$EntryType;->ERROR:Lcom/prineside/tdi2/Logger$EntryType;

    if-ne v4, v6, :cond_2

    sget-object v4, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->E:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_2
    sget-object v4, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->D:Lcom/badlogic/gdx/graphics/Color;

    :goto_3
    invoke-virtual {v0, v5, v4}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q(Lcom/prineside/tdi2/Logger$LogEntry;Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->A:Lcom/prineside/tdi2/ui/shared/DeveloperConsole$_LoggerListener;

    invoke-static {v1}, Lcom/prineside/tdi2/Logger;->addListener(Lcom/prineside/tdi2/Logger$LoggerListener;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$7;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$7;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V

    invoke-direct {v1, v13, v2, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v4, v15, [F

    fill-array-data v4, :array_2

    invoke-direct {v2, v3, v4}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v5, v2}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42a00000    # 80.0f

    const/high16 v9, 0x42400000    # 48.0f

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-terminal"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x42000000    # 32.0f

    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x43040000    # 132.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->setVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->v()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x42400000    # 48.0f
        0x42a00000    # 80.0f
        0x42400000    # 48.0f
        0x42900000    # 72.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x42400000    # 48.0f
        0x42a00000    # 80.0f
        0x42400000    # 48.0f
        0x42900000    # 72.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x42400000    # 48.0f
        0x42a00000    # 80.0f
        0x42400000    # 48.0f
        0x42900000    # 72.0f
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object p0
.end method

.method public static synthetic b()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->E:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic c()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->D:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Lcom/prineside/tdi2/Logger$LogEntry;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q(Lcom/prineside/tdi2/Logger$LogEntry;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->u()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->z:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->y:I

    return p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->y:I

    return p1
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->y:I

    return v0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->y:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->y:I

    return v0
.end method

.method public static synthetic k(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    return-object p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->v()V

    return-void
.end method

.method public static synthetic m(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->d:Z

    return p0
.end method

.method public static synthetic n(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object p0
.end method

.method public static synthetic o(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->A:Lcom/prineside/tdi2/ui/shared/DeveloperConsole$_LoggerListener;

    invoke-static {v0}, Lcom/prineside/tdi2/Logger;->removeListener(Lcom/prineside/tdi2/Logger$LoggerListener;)V

    return-void
.end method

.method public isCustomSettingsVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final p(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->t:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->s()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCells()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_4

    sget-object v1, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->G:Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sget-object v5, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->H:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/16 v6, 0x30

    const/16 v7, 0xa

    if-ge p1, v7, :cond_1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    invoke-virtual {v5, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const/16 v8, 0x3a

    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    if-ge v4, v7, :cond_2

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    if-ge v1, v7, :cond_3

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3
    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->z0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->z0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_4
    iget-object p1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->z0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, p2

    :goto_2
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->x0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->r(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->x0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->x0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_3

    :cond_6
    iget-object p1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->x0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_3
    if-eqz p3, :cond_7

    const-string p1, "\n"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->y0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object p1, p1, v3

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    iget-object p1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->y0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->y0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->z0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearListeners()V

    if-eqz p5, :cond_8

    iget-object p1, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;->z0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance p2, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$8;

    invoke-direct {p2, p0, p5}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$8;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_8
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-object v0
.end method

.method public final q(Lcom/prineside/tdi2/Logger$LogEntry;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 12

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollPercentY()F

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lcom/prineside/tdi2/Logger$LogEntry;->message:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v9, v3, v5

    if-eqz v1, :cond_1

    iget-object v7, p1, Lcom/prineside/tdi2/Logger$LogEntry;->date:Ljava/util/Date;

    iget-object v8, p1, Lcom/prineside/tdi2/Logger$LogEntry;->tag:Ljava/lang/String;

    iget-object v11, p1, Lcom/prineside/tdi2/Logger$LogEntry;->message:Ljava/lang/String;

    move-object v6, p0

    move-object v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v11, p1, Lcom/prineside/tdi2/Logger$LogEntry;->message:Ljava/lang/String;

    move-object v6, p0

    move-object v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lcom/prineside/tdi2/Logger$LogEntry;->throwable:Ljava/lang/Throwable;

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->C:Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p1, Lcom/prineside/tdi2/Logger$LogEntry;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->layout()V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->t()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "DeveloperConsole"

    const-string v0, "failed to layout log scroll pane"

    invoke-interface {p1, p2, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_4
    :goto_3
    return-void
.end method

.method public final r(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->F:[Lcom/badlogic/gdx/graphics/Color;

    array-length v0, p1

    int-to-long v3, v0

    rem-long/2addr v1, v3

    long-to-int v0, v1

    aget-object p1, p1, v0

    return-object p1
.end method

.method public final s()I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_CONSOLE_LINE_COUNT:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/16 v0, 0x64

    :cond_0
    return v0
.end method

.method public setCustomSettingsVisible(Z)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->values:[Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->x:[Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v5

    iget-object v3, v4, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;->b:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    const-wide/16 v7, 0x0

    cmpl-double v4, v5, v7

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->d:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->t()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->setCustomSettingsVisible(Z)V

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ScriptManager;->global:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string p1, "DeveloperConsoleShow"

    goto :goto_1

    :cond_1
    const-string p1, "DeveloperConsoleHide"

    :goto_1
    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final t()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, -0x368bdc00    # -1000000.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fling(FFF)V

    return-void
.end method

.method public toggleVisible()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->d:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->setVisible(Z)V

    return-void
.end method

.method public final u()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/prineside/tdi2/Logger$LogEntry;

    invoke-direct {v1}, Lcom/prineside/tdi2/Logger$LogEntry;-><init>()V

    const-string v2, ""

    iput-object v2, v1, Lcom/prineside/tdi2/Logger$LogEntry;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/prineside/tdi2/Logger$LogEntry;->message:Ljava/lang/String;

    sget-object v3, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v1, v3}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q(Lcom/prineside/tdi2/Logger$LogEntry;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v1

    instance-of v1, v1, Lcom/prineside/tdi2/screens/GameScreen;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/ScriptSystem;->runScriptAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ScriptManager;->global:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    const-string v3, "console"

    invoke-virtual {v1, v0, v3}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->executeLua(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->y:I

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->z:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->z:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final v()V
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->getVisibleDisplayFrame()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    mul-float v2, v2, v1

    const/high16 v3, 0x41000000    # 8.0f

    add-float/2addr v2, v3

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    mul-float v4, v4, v1

    add-float/2addr v4, v3

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    mul-float v3, v3, v1

    const/high16 v5, 0x41800000    # 16.0f

    sub-float/2addr v3, v5

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v0, v0, v1

    sub-float/2addr v0, v5

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->t()V

    return-void
.end method
