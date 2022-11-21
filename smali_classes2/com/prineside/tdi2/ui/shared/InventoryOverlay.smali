.class public Lcom/prineside/tdi2/ui/shared/InventoryOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;,
        Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;,
        Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;,
        Lcom/prineside/tdi2/ui/shared/InventoryOverlay$_ProgressManagerListener;,
        Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;
    }
.end annotation


# static fields
.field public static final A0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public static final y0:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

.field public static final z0:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public A:F

.field public B:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public E:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public G:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public J:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public K:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public L:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/ItemStack;",
            "Lcom/prineside/tdi2/ui/actors/ItemCell;",
            ">;"
        }
    .end annotation
.end field

.field public M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public O:Z

.field public P:I

.field public Q:Lcom/prineside/tdi2/CraftRecipe;

.field public R:[I

.field public S:I

.field public T:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public U:Lcom/prineside/tdi2/Item;

.field public V:I

.field public W:F

.field public X:Lcom/prineside/tdi2/ui/actors/ItemCell;

.field public Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public Z:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public e0:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

.field public f0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

.field public g0:Z

.field public h0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;",
            ">;"
        }
    .end annotation
.end field

.field public i0:Z

.field public j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public k0:[F

.field public l0:Lcom/prineside/tdi2/enums/ItemSortingType;

.field public m0:Lcom/prineside/tdi2/ItemStack;

.field public n0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public o0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public p0:I

.field public q:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public q0:I

.field public r:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public r0:F

.field public s:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public s0:Z

.field public t:Lcom/prineside/tdi2/ui/actors/QuadActor;

.field public t0:Z

.field public u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public final u0:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;

.field public v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public final v0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public final w0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$_ProgressManagerListener;

.field public x:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public x0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

.field public y:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    sget-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->values:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    sput-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y0:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    sget-object v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_MATERIALS:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    new-instance v10, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v11, 0x5

    new-array v7, v11, [Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    sget-object v12, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_RESOURCE:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 v13, 0x0

    aput-object v12, v7, v13

    sget-object v14, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_BLUEPRINT:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 v15, 0x1

    aput-object v14, v7, v15

    sget-object v16, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_DUST:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 v8, 0x2

    aput-object v16, v7, v8

    sget-object v17, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_TOKENS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/16 v18, 0x3

    aput-object v17, v7, v18

    sget-object v19, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_CURRENCY:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/16 v20, 0x4

    aput-object v19, v7, v20

    const/high16 v3, 0x42b80000    # 92.0f

    const-string v4, "icon-backpack"

    const/16 v21, 0x0

    move-object v1, v10

    const/4 v11, 0x2

    move-object/from16 v8, v21

    invoke-direct/range {v1 .. v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;FLjava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;[Lcom/prineside/tdi2/enums/ItemSubcategoryType;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    aput-object v10, v0, v9

    sget-object v24, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_MAP_EDITOR:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    sget-object v27, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v28, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x7

    new-array v4, v3, [Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    sget-object v5, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_PLATFORMS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    aput-object v5, v4, v13

    sget-object v6, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_ROADS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    aput-object v6, v4, v15

    sget-object v7, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SOURCES:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    aput-object v7, v4, v11

    sget-object v8, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SPAWNS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    aput-object v8, v4, v18

    sget-object v9, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_BASES:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    aput-object v9, v4, v20

    sget-object v10, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SOUNDS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/16 v21, 0x5

    aput-object v10, v4, v21

    sget-object v21, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SPECIAL:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/16 v31, 0x6

    aput-object v21, v4, v31

    const/high16 v25, 0x43580000    # 216.0f

    const-string v26, "icon-edit"

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v29, v4

    invoke-direct/range {v23 .. v30}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;FLjava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;[Lcom/prineside/tdi2/enums/ItemSubcategoryType;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    aput-object v2, v0, v1

    sget-object v33, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_OTHER:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    sget-object v36, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v37, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    new-array v4, v15, [Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    sget-object v23, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->O_OTHER:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    aput-object v23, v4, v13

    const/high16 v34, 0x43aa0000    # 340.0f

    const-string v35, "icon-question"

    const/16 v39, 0x0

    move-object/from16 v32, v2

    move-object/from16 v38, v4

    invoke-direct/range {v32 .. v39}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;FLjava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;[Lcom/prineside/tdi2/enums/ItemSubcategoryType;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    aput-object v2, v0, v1

    sget-object v24, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->CRAFTING:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    sget-object v27, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v28, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    aput-object v12, v4, v13

    aput-object v14, v4, v15

    aput-object v16, v4, v11

    aput-object v17, v4, v18

    aput-object v19, v4, v20

    const/4 v12, 0x5

    aput-object v5, v4, v12

    aput-object v6, v4, v31

    aput-object v7, v4, v3

    const/16 v3, 0x8

    aput-object v8, v4, v3

    const/16 v3, 0x9

    aput-object v9, v4, v3

    const/16 v3, 0xa

    aput-object v10, v4, v3

    const/16 v3, 0xb

    aput-object v21, v4, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->P_DECRYPTED:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/16 v5, 0xc

    aput-object v3, v4, v5

    sget-object v5, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->P_ENCRYPTED:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/16 v6, 0xd

    aput-object v5, v4, v6

    const v25, 0x4421c000    # 647.0f

    const-string v26, "icon-tools"

    move-object/from16 v23, v2

    move-object/from16 v29, v4

    invoke-direct/range {v23 .. v30}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;FLjava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;[Lcom/prineside/tdi2/enums/ItemSubcategoryType;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    aput-object v2, v0, v1

    sget-object v17, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->PACKS:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    sget-object v20, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P500:Lcom/badlogic/gdx/graphics/Color;

    new-array v4, v11, [Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    aput-object v3, v4, v13

    aput-object v5, v4, v15

    const v18, 0x4440c000    # 771.0f

    const-string v19, "icon-chest"

    const/16 v23, 0x0

    move-object/from16 v16, v2

    move-object/from16 v22, v4

    invoke-direct/range {v16 .. v23}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;FLjava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;[Lcom/prineside/tdi2/enums/ItemSubcategoryType;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    aput-object v2, v0, v1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z0:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A0:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const-class v0, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0xbe

    const-string v4, "InventoryOverlay toggle button"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v4, 0xc0

    const-string v5, "InventoryOverlay main"

    invoke-virtual {v3, v2, v4, v5}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A:F

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->O:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->P:I

    iput v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->S:I

    iput v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->V:I

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    const-class v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->h0:Lcom/badlogic/gdx/utils/Array;

    sget-object v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_MATERIALS:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    iput-object v5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    sget-object v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->values:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    array-length v5, v5

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k0:[F

    sget-object v5, Lcom/prineside/tdi2/enums/ItemSortingType;->KIND:Lcom/prineside/tdi2/enums/ItemSortingType;

    iput-object v5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l0:Lcom/prineside/tdi2/enums/ItemSortingType;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v6, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v6, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    iput v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p0:I

    iput v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q0:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r0:F

    new-instance v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u0:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v0:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$_ProgressManagerListener;

    invoke-direct {v0, p0, v5}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$_ProgressManagerListener;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$_ProgressManagerListener;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->addListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42e00000    # 112.0f

    const/high16 v6, 0x42d20000    # 105.0f

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const v5, 0x4434c000    # 723.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    new-instance v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$2;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$2;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const-string v12, ""

    invoke-direct {v6, v12, v1, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "ui-inventory-toggle-button"

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    const/high16 v8, -0x3d380000    # -100.0f

    const/4 v9, 0x0

    const/high16 v10, 0x43540000    # 212.0f

    const/high16 v11, 0x42d20000    # 105.0f

    invoke-virtual/range {v6 .. v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    const v7, 0x3f47ae14    # 0.78f

    invoke-virtual {v6, v4, v4, v4, v7}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v4, v6, v7, v8}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-backpack"

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    const/high16 v8, 0x41e00000    # 28.0f

    const/high16 v9, 0x41c80000    # 25.0f

    const/high16 v10, 0x42800000    # 64.0f

    const/high16 v11, 0x42800000    # 64.0f

    invoke-virtual/range {v6 .. v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "count-bubble"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v4, 0x42ac0000    # 86.0f

    const/high16 v6, 0x42900000    # 72.0f

    invoke-virtual {v1, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v4, 0x42010000    # 32.25f

    const/high16 v6, 0x42130000    # 36.75f

    invoke-virtual {v1, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v4, -0x3d6a0000    # -75.0f

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x433e0000    # 190.0f

    const/high16 v4, 0x42960000    # 75.0f

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "icon-chest"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {v4, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v4, v12, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-tools"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->rebuildLayoutIfRequired()V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "particles/decrypting-progress-line.prt"

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "particle-one"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/4 v4, 0x1

    const/16 v6, 0x8

    invoke-direct {v1, v0, v4, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->T:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    iput-boolean v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->i0:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v1, -0x3cac0000    # -212.0f

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public static synthetic A(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->P:I

    return p0
.end method

.method public static synthetic B(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D()V

    return-void
.end method

.method private synthetic G()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->hide(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->G()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->S()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/CraftRecipe;)Lcom/prineside/tdi2/CraftRecipe;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Q:Lcom/prineside/tdi2/CraftRecipe;

    return-object p1
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u0:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v0:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic h()Lcom/badlogic/gdx/utils/Array;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A0:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->M(I)V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Q()V

    return-void
.end method

.method public static synthetic k(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    return-object p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    return-object p0
.end method

.method public static synthetic m(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I()Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ItemStack;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->H(Lcom/prineside/tdi2/ItemStack;)V

    return-void
.end method

.method public static synthetic o(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    return-object p0
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    return-object p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->E()V

    return-void
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->i0:Z

    return p0
.end method

.method public static synthetic s()[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y0:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    return-object v0
.end method

.method public static synthetic t(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    return-object p0
.end method

.method public static synthetic u(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->K()V

    return-void
.end method

.method public static synthetic v(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s0:Z

    return p1
.end method

.method public static synthetic w(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)[I
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R:[I

    return-object p0
.end method

.method public static synthetic x(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R:[I

    return-object p1
.end method

.method public static synthetic y(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->P()V

    return-void
.end method

.method public static synthetic z(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->O(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;)V

    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;[Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 8

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    invoke-direct {v6, p1, v0, p4, p5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance p1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 p5, 0x8

    new-array v0, p5, [F

    fill-array-data v0, :array_0

    invoke-direct {p1, p4, v0}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v1, p1}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x43a40000    # 328.0f

    const/high16 v5, 0x42a00000    # 80.0f

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object p1, v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v0, 0x43a38000    # 327.0f

    const/high16 v1, 0x42ae0000    # 87.0f

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v0, 0x0

    const v1, 0x3e0f5c29    # 0.14f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object p1, v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v0, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v2, p5, [F

    fill-array-data v2, :array_1

    invoke-direct {v1, p4, v2}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$Variants;->P800:Lcom/prineside/tdi2/utils/MaterialColor$Variants;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, p3, v0

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$Variants;->P900:Lcom/prineside/tdi2/utils/MaterialColor$Variants;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, p3, v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$Variants;->P700:Lcom/prineside/tdi2/utils/MaterialColor$Variants;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, p3, v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v3, 0x41c80000    # 25.0f

    const/high16 v4, 0x42400000    # 48.0f

    const/high16 v5, 0x42400000    # 48.0f

    move-object v0, v6

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v1, 0x429a0000    # 77.0f

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v3, 0x43700000    # 240.0f

    const/16 v5, 0x8

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object p2, v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {p6, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    const/high16 p6, 0x43a40000    # 328.0f

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p2, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    const/high16 p6, 0x41000000    # 8.0f

    invoke-virtual {p2, p6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    const/high16 p6, 0x41b80000    # 23.0f

    invoke-virtual {p2, p6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance p6, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array p5, p5, [F

    fill-array-data p5, :array_2

    invoke-direct {v0, p4, p5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {p6, v0}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    invoke-direct {p2, p6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p3, p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p1, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p7, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x41980000    # 19.0f

    const/high16 p3, 0x41500000    # 13.0f

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x43a30000    # 326.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x42aa0000    # 85.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x0
        0x0
        0x42a00000    # 80.0f
        0x43a40000    # 328.0f
        0x429a0000    # 77.0f
        0x43a18000    # 323.0f
        0x40400000    # 3.0f
    .end array-data

    :array_1
    .array-data 4
        0x41600000    # 14.0f
        0x0
        0x40c00000    # 6.0f
        0x42ae0000    # 87.0f
        0x43a38000    # 327.0f
        0x42aa0000    # 85.0f
        0x43a00000    # 320.0f
        0x41300000    # 11.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x41500000    # 13.0f
        0x41980000    # 19.0f
        0x41500000    # 13.0f
        0x41980000    # 19.0f
        0x41500000    # 13.0f
    .end array-data
.end method

.method public final D()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ui/actors/ItemCell;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setSelected(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R()V

    return-void
.end method

.method public final E()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->h0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->G:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_1
    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    return-void
.end method

.method public final F()Lcom/badlogic/gdx/utils/Array;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y0:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    sget-object v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->CRAFTING:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    iget v6, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v6, :cond_5

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/CraftRecipe;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/CraftRecipe;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v3}, Lcom/prineside/tdi2/CraftRecipe;->hasEnoughItemsToRun()Z

    move-result v6

    iget-object v3, v3, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v10, 0x1

    if-ge v7, v9, :cond_3

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ItemStack;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/ItemStack;

    aget-object v7, v9, v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v7

    add-int/2addr v7, v10

    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    if-eqz v6, :cond_1

    iget-boolean v7, v8, Lcom/prineside/tdi2/ItemStack;->covered:Z

    if-eqz v7, :cond_1

    iput-boolean v5, v8, Lcom/prineside/tdi2/ItemStack;->covered:Z

    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_4

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v7, v3, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    xor-int/lit8 v3, v6, 0x1

    iput-boolean v3, v7, Lcom/prineside/tdi2/ItemStack;->covered:Z

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l0:Lcom/prineside/tdi2/enums/ItemSortingType;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemSortingType;->RARITY:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne v2, v3, :cond_8

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/ItemStack;->SORT_COMPARATOR_RARITY_DESC:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    move-object v2, v4

    move-object v3, v2

    const/4 v1, 0x0

    :goto_4
    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v7, :cond_7

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ItemStack;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v7

    if-eq v7, v2, :cond_6

    new-instance v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;

    invoke-direct {v3, p0, v4}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    iput-object v7, v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->rarityType:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object v2, v7

    :cond_6
    iget-object v7, v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v1, :cond_11

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/ItemStack;->SORT_COMPARATOR_KIND:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->subcategories:[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_11

    aget-object v6, v1, v3

    new-instance v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;

    invoke-direct {v7, p0, v4}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    iput-object v6, v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->subcategoryType:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 v8, 0x0

    :goto_7
    iget-object v9, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v10, :cond_a

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/ItemStack;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/Item;->getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    move-result-object v10

    if-ne v10, v6, :cond_9

    iget-object v10, v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_a
    iget-object v6, v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v8, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v8, :cond_b

    sget-object v8, Lcom/prineside/tdi2/ItemStack;->SORT_COMPARATOR_RARITY_DESC:Ljava/util/Comparator;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l0:Lcom/prineside/tdi2/enums/ItemSortingType;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemSortingType;->KIND:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne v2, v3, :cond_d

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->subcategories:[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    array-length v2, v1

    :goto_8
    if-ge v5, v2, :cond_11

    aget-object v3, v1, v5

    new-instance v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;

    invoke-direct {v6, p0, v4}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    iput-object v3, v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->subcategoryType:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    iget-object v7, v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v8, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsBySubcategory(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v3, v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    sget-object v7, Lcom/prineside/tdi2/ItemStack;->SORT_COMPARATOR_RARITY_DESC:Ljava/util/Comparator;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_d
    sget-object v3, Lcom/prineside/tdi2/enums/ItemSortingType;->RARITY:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne v2, v3, :cond_11

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->subcategories:[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_e

    aget-object v6, v1, v3

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v8, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsBySubcategory(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/ItemStack;->SORT_COMPARATOR_RARITY_DESC:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    move-object v2, v4

    move-object v3, v2

    const/4 v1, 0x0

    :goto_a
    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v7, :cond_10

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ItemStack;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v7

    if-eq v7, v2, :cond_f

    new-instance v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;

    invoke-direct {v3, p0, v4}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    iput-object v7, v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->rarityType:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object v2, v7

    :cond_f
    iget-object v7, v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v1, :cond_11

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/ItemStack;->SORT_COMPARATOR_KIND:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_11
    return-object v0
.end method

.method public final H(Lcom/prineside/tdi2/ItemStack;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->setSelectedItem(Lcom/prineside/tdi2/ItemStack;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ui/actors/ItemCell;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ui/actors/ItemCell;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setSelected(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R()V

    return-void
.end method

.method public final I()Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final J()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    sget-object v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y0:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->tabType:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    sget-object v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_OTHER:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-ne v6, v7, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const/high16 v8, 0x41c80000    # 25.0f

    const/16 v9, 0x15

    const/4 v10, 0x1

    if-ne v7, v6, :cond_1

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->t:Lcom/prineside/tdi2/ui/actors/QuadActor;

    iget v7, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->buttonShiftX:F

    const/high16 v11, 0x42700000    # 60.0f

    sub-float/2addr v7, v11

    const/high16 v11, -0x3f400000    # -6.0f

    invoke-virtual {v6, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->t:Lcom/prineside/tdi2/ui/actors/QuadActor;

    iget-object v7, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->colorDark:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v7, 0x43040000    # 132.0f

    invoke-virtual {v6, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget v7, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->buttonShiftX:F

    const/high16 v12, 0x42840000    # 66.0f

    sub-float/2addr v7, v12

    invoke-virtual {v6, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const/16 v12, 0x20

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v12, 0x8

    new-array v13, v12, [F

    fill-array-data v13, :array_0

    invoke-direct {v7, v11, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v11, 0x42fa0000    # 125.0f

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    iget-object v11, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->colorDark:Lcom/badlogic/gdx/graphics/Color;

    new-array v12, v12, [F

    fill-array-data v12, :array_1

    invoke-direct {v7, v11, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v12, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->iconAlias:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v11, 0x42a00000    # 80.0f

    invoke-virtual {v7, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v11, 0x41e00000    # 28.0f

    invoke-virtual {v7, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    new-instance v11, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$6;

    invoke-direct {v11, v0, v5}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$6;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;)V

    const-string v12, ""

    invoke-direct {v6, v12, v7, v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iget v7, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->buttonShiftX:F

    const/high16 v11, 0x42580000    # 54.0f

    sub-float/2addr v7, v11

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x42d80000    # 108.0f

    const/high16 v8, 0x42aa0000    # 85.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v8, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->iconAlias:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    const/high16 v14, 0x41b00000    # 22.0f

    const/high16 v15, 0x41900000    # 18.0f

    const/high16 v16, 0x42800000    # 64.0f

    const/high16 v17, 0x42800000    # 64.0f

    move-object v12, v6

    invoke-virtual/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->colorBright:Lcom/badlogic/gdx/graphics/Color;

    iget-object v11, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->colorDark:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v7, v8, v11, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v6, v10}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelShadowEnabled(Z)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_1
    iget-object v6, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->tabType:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    sget-object v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->CRAFTING:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const-string v14, "count-bubble"

    const/high16 v15, 0x41900000    # 18.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v11, 0x40000000    # 2.0f

    const-string v12, "18:59:44"

    if-ne v6, v7, :cond_3

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v6, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v8, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->buttonShiftX:F

    sub-float v8, v8, v16

    invoke-virtual {v6, v8, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-ne v6, v7, :cond_2

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_2
    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v8, 0x41c40000    # 24.5f

    const/high16 v9, 0x41ac0000    # 21.5f

    invoke-virtual {v6, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->buttonShiftX:F

    const/high16 v8, 0x41c00000    # 24.0f

    add-float/2addr v5, v8

    const/high16 v8, 0x42a80000    # 84.0f

    invoke-virtual {v6, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-eq v5, v7, :cond_5

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->PACKS:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-ne v6, v7, :cond_5

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v6, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v8, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->buttonShiftX:F

    sub-float v8, v8, v16

    invoke-virtual {v6, v8, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-ne v6, v7, :cond_4

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_4
    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v8, 0x41c40000    # 24.5f

    const/high16 v9, 0x41ac0000    # 21.5f

    invoke-virtual {v6, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->buttonShiftX:F

    const/high16 v8, 0x41c00000    # 24.0f

    add-float/2addr v5, v8

    const/high16 v8, 0x42a80000    # 84.0f

    invoke-virtual {v6, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-eq v5, v7, :cond_5

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->V()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x40800000    # 4.0f
        0x40e00000    # 7.0f
        0x42f00000    # 120.0f
        0x41880000    # 17.0f
        0x42ee0000    # 119.0f
        0x40a00000    # 5.0f
        0x40e00000    # 7.0f
    .end array-data

    :array_1
    .array-data 4
        0x40c00000    # 6.0f
        0x0
        0x0
        0x43040000    # 132.0f
        0x43040000    # 132.0f
        0x43010000    # 129.0f
        0x42fa0000    # 125.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method public final K()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->setSelectedItem(Lcom/prineside/tdi2/ItemStack;)V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    sget-object v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_MAP_EDITOR:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollY()F

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getMaxY()F

    move-result v2

    sub-float v3, v2, v0

    const/high16 v4, 0x428c0000    # 70.0f

    add-float/2addr v3, v4

    sub-float/2addr v0, v1

    sub-float/2addr v2, v0

    add-float/2addr v2, v4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->setSelectedItem(Lcom/prineside/tdi2/ItemStack;)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v4, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getTop()F

    move-result v4

    cmpl-float v5, v4, v3

    if-ltz v5, :cond_2

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/prineside/tdi2/ItemStack;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setSelected(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R()V

    return-void
.end method

.method public final M(I)V
    .locals 1

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->P:I

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    sget-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->CRAFTING:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Q()V

    :cond_0
    return-void
.end method

.method public final N(Z)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    const v0, 0x3e19999a    # 0.15f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->show()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->T()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v2, -0x3cac0000    # -212.0f

    invoke-static {v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_0
    return-void
.end method

.method public final O(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-eq v0, p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k0:[F

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollY()F

    move-result v2

    aput v2, v1, v0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k0:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollY(F)V

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->M(I)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    sget-object p1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y0:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    iget-object v4, v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->tabType:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-ne v3, v4, :cond_1

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget v0, v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->buttonShiftX:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v2, -0x3de00000    # -40.0f

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v3

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final P()V
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->getInfoContainer()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Q:Lcom/prineside/tdi2/CraftRecipe;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R:[I

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R:[I

    :cond_0
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->getSelectedCount()I

    move-result v3

    invoke-virtual {v2}, Lcom/prineside/tdi2/CraftRecipe;->getMaxQueueStackWithGVs()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    iget-object v9, v2, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v11, 0x42a00000    # 80.0f

    if-ge v7, v10, :cond_9

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getSuitableItemsFromInventory()Lcom/badlogic/gdx/utils/Array;

    move-result-object v10

    invoke-virtual {v9}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getCountWithGVs()I

    move-result v13

    mul-int v13, v13, v3

    iget v14, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v14, :cond_1

    invoke-virtual {v9}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getExampleItems()[Lcom/prineside/tdi2/Item;

    move-result-object v14

    aget-object v14, v14, v5

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    iget-object v15, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R:[I

    aget v15, v15, v7

    if-gt v14, v15, :cond_2

    const/4 v15, 0x0

    :cond_2
    iget-object v14, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v14, [Lcom/prineside/tdi2/ItemStack;

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v14

    iget-object v12, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v12, [Lcom/prineside/tdi2/ItemStack;

    aget-object v12, v12, v15

    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v12

    :goto_1
    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    move/from16 v16, v8

    const/high16 v8, 0x42800000    # 64.0f

    invoke-virtual {v5, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v14, v8, v6}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    const/high16 v11, 0x41000000    # 8.0f

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v14, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    invoke-direct {v5, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v11, 0x42740000    # 61.0f

    const/high16 v14, 0x40e00000    # 7.0f

    invoke-virtual {v5, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v5, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v11, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v14, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v14, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    if-ge v12, v13, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    move/from16 v8, v16

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v6, 0x427c0000    # 63.0f

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-virtual {v14, v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v14, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v6, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v11, 0x41a00000    # 20.0f

    const/high16 v13, 0x41c00000    # 24.0f

    if-le v6, v5, :cond_5

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R:[I

    aget v5, v5, v7

    if-lez v5, :cond_4

    new-instance v5, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-triangle-top"

    invoke-virtual {v6, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v18

    new-instance v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$4;

    invoke-direct {v6, v0, v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$4;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;I)V

    sget-object v20, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v22}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v5, v13, v13}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v6, 0x42040000    # 33.0f

    invoke-virtual {v5, v11, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v6, 0x42800000    # 64.0f

    invoke-virtual {v5, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x42180000    # 38.0f

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_4
    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R:[I

    aget v5, v5, v7

    iget v6, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    if-ge v5, v6, :cond_5

    new-instance v5, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-triangle-bottom"

    invoke-virtual {v6, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v18

    new-instance v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$5;

    invoke-direct {v6, v0, v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$5;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;I)V

    sget-object v20, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v22}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v5, v13, v13}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-virtual {v5, v11, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v6, 0x42800000    # 64.0f

    invoke-virtual {v5, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, -0x3e300000    # -26.0f

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    iget-object v5, v2, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ne v7, v5, :cond_6

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-plus"

    invoke-virtual {v6, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v6, 0x3e8f5c29    # 0.28f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v5, v10, v10, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_7
    invoke-virtual {v9}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getCountWithGVs()I

    move-result v5

    div-int/2addr v12, v5

    if-ge v12, v4, :cond_8

    move v4, v12

    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_9
    move/from16 v16, v8

    const/4 v5, 0x1

    if-ge v4, v5, :cond_a

    const/4 v4, 0x1

    :cond_a
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    int-to-float v6, v3

    invoke-virtual {v2}, Lcom/prineside/tdi2/CraftRecipe;->getTimeWithGVs()F

    move-result v2

    mul-float v6, v6, v2

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-static {v2}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_b
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-gt v3, v4, :cond_c

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->getMaxCount()I

    move-result v1

    if-eq v1, v4, :cond_d

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " available "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InventoryOverlay"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->setMinMaxCount(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->P()V

    :cond_d
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    move/from16 v6, v16

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->setConfirmButtonEnabled(Z)V

    return-void
.end method

.method public final Q()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "icon-backpack-arrow-down"

    const/4 v5, 0x6

    const-string v6, ""

    const v7, 0x3f0f5c29    # 0.56f

    const/16 v8, 0x15

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/high16 v13, 0x3f800000    # 1.0f

    if-ge v2, v5, :cond_9

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v14, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getCraftingQueueItem(I)Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    move-result-object v14

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->P:I

    if-ne v2, v4, :cond_2

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v1, v12, [F

    fill-array-data v1, :array_0

    invoke-direct {v4, v5, v1}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v5, v12, [F

    fill-array-data v5, :array_1

    invoke-direct {v4, v1, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    :goto_1
    invoke-virtual {v15, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_3

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v9, v12, [F

    fill-array-data v9, :array_2

    invoke-direct {v4, v5, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v9, v12, [F

    fill-array-data v9, :array_3

    invoke-direct {v4, v5, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    :goto_2
    invoke-virtual {v15, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v5, 0x43af0000    # 350.0f

    const/high16 v9, 0x42860000    # 67.0f

    if-nez v14, :cond_5

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getMaxCraftQueueSize()I

    move-result v1

    if-lt v2, v1, :cond_4

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x404040ff

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-lock"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v13, v13, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "research_to_unlock"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v13, v13, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$22;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$22;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_3

    :cond_4
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x282828ff

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "craft_queue_empty"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v3, 0x3e8f5c29    # 0.28f

    invoke-virtual {v1, v13, v13, v13, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_3
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_5
    iget-object v5, v14, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v5

    invoke-virtual {v14}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->getTimeLeft()F

    move-result v18

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x42c80000    # 100.0f

    cmpl-float v18, v18, v11

    if-nez v18, :cond_7

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v13, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    if-nez v1, :cond_6

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v13, v12, [F

    fill-array-data v13, :array_4

    invoke-direct {v1, v4, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v12, v12, [F

    fill-array-data v12, :array_5

    invoke-direct {v13, v4, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    goto :goto_4

    :cond_6
    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v13, v12, [F

    fill-array-data v13, :array_6

    invoke-direct {v1, v4, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v12, v12, [F

    fill-array-data v12, :array_7

    invoke-direct {v13, v4, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    :goto_4
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v11, v11, v11, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const v12, 0x3e0f5c29    # 0.14f

    iput v12, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v13, v4}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v14, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v12

    iget v13, v14, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    mul-int v12, v12, v13

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-virtual {v1, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v4, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v21

    new-instance v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$23;

    invoke-direct {v3, v0, v2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$23;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;I)V

    sget-object v23, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v24

    sget-object v25, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v20, v1

    move-object/from16 v22, v3

    invoke-direct/range {v20 .. v25}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v1, v3, v4}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v3, 0x42000000    # 32.0f

    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {v1, v3, v4}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v3, 0x438f0000    # 286.0f

    invoke-virtual {v1, v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_7
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x1c1c1cff

    invoke-direct {v3, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v14}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->getTimeLeft()F

    move-result v3

    iget v4, v14, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->duration:F

    iget v13, v14, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    int-to-float v13, v13

    mul-float v4, v4, v13

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v13, v4, v3

    const/4 v3, 0x2

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v20, 0x40400000    # 3.0f

    if-nez v1, :cond_8

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v12, v12, [F

    const/16 v17, 0x0

    aput v4, v12, v17

    const/16 v19, 0x1

    aput v20, v12, v19

    aput v20, v12, v3

    const/4 v3, 0x3

    const/high16 v22, 0x42800000    # 64.0f

    aput v22, v12, v3

    const/4 v3, 0x4

    const/high16 v22, 0x43ac0000    # 344.0f

    mul-float v22, v22, v13

    add-float v22, v22, v20

    aput v22, v12, v3

    const/4 v3, 0x5

    const/high16 v22, 0x42800000    # 64.0f

    const/high16 v23, -0x3fc00000    # -3.0f

    mul-float v23, v23, v13

    add-float v23, v23, v22

    aput v23, v12, v3

    const/high16 v3, 0x43a90000    # 338.0f

    mul-float v3, v3, v13

    add-float/2addr v3, v4

    const/4 v4, 0x6

    aput v3, v12, v4

    const/4 v3, 0x7

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v13, v13, v4

    add-float v13, v13, v20

    aput v13, v12, v3

    invoke-direct {v1, v11, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/16 v17, 0x0

    goto :goto_5

    :cond_8
    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v12, v12, [F

    const/16 v17, 0x0

    aput v20, v12, v17

    const/16 v19, 0x1

    aput v4, v12, v19

    aput v4, v12, v3

    const/4 v3, 0x3

    const/high16 v22, 0x42780000    # 62.0f

    aput v22, v12, v3

    const/4 v3, 0x4

    const/high16 v22, 0x43a90000    # 338.0f

    mul-float v22, v22, v13

    add-float v22, v22, v4

    aput v22, v12, v3

    const/4 v3, 0x5

    const/high16 v22, 0x42780000    # 62.0f

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v23, v23, v13

    add-float v23, v23, v22

    aput v23, v12, v3

    const/high16 v3, 0x43ac0000    # 344.0f

    mul-float v3, v3, v13

    add-float v3, v3, v20

    const/16 v16, 0x6

    aput v3, v12, v16

    const/4 v3, 0x7

    const/high16 v16, -0x3fc00000    # -3.0f

    mul-float v13, v13, v16

    add-float/2addr v13, v4

    aput v13, v12, v3

    invoke-direct {v1, v11, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_5
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const v4, 0x3e8f5c29    # 0.28f

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->getCraftedCount()I

    move-result v4

    iget-object v5, v14, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v5

    mul-int v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v4

    iget v5, v14, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    mul-int v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v3, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v14}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->getTimeLeft()F

    move-result v3

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v3

    invoke-static {v3}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v3, 0x429c0000    # 78.0f

    const/high16 v4, 0x42860000    # 67.0f

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x437d0000    # 253.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_6
    iget-object v1, v14, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    const/high16 v3, 0x42400000    # 48.0f

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    const/high16 v3, 0x41500000    # 13.0f

    const/high16 v4, 0x41100000    # 9.0f

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v3, v14, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x428a0000    # 69.0f

    const/high16 v4, 0x42140000    # 37.0f

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$24;

    invoke-direct {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$24;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;I)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :goto_7
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x43af0000    # 350.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x42860000    # 67.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_9
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getTotalCraftingTimeLeft()F

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(IZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x18

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    new-instance v10, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$25;

    invoke-direct {v10, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$25;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    invoke-direct {v4, v6, v9, v10}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v23

    const/high16 v24, 0x42200000    # 40.0f

    const/high16 v25, 0x41200000    # 10.0f

    const/high16 v26, 0x42400000    # 48.0f

    const/high16 v27, 0x42400000    # 48.0f

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v27}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v3, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v9, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v10, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v11, v12, [F

    fill-array-data v11, :array_8

    invoke-direct {v9, v10, v11}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v3, v9}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x42fe0000    # 127.0f

    const/high16 v27, 0x428c0000    # 70.0f

    move-object/from16 v23, v3

    invoke-virtual/range {v22 .. v27}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v9, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v11, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v13, Lcom/badlogic/gdx/graphics/Color;

    const v14, 0x3e570a3d    # 0.21f

    const/4 v15, 0x0

    invoke-direct {v13, v15, v15, v15, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-array v14, v12, [F

    fill-array-data v14, :array_9

    invoke-direct {v11, v13, v14}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v9, v11}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v3, v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v11, -0x3f800000    # -4.0f

    invoke-virtual {v3, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v9, 0x42fe0000    # 127.0f

    const/high16 v11, 0x428c0000    # 70.0f

    invoke-virtual {v3, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "grab_crafted_items_button"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v3, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v4, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_b

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getAcceleratorsRequiredToShortenTime(F)I

    move-result v1

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    new-instance v13, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$26;

    invoke-direct {v13, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$26;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    invoke-direct {v4, v6, v11, v13}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance v11, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v14, v12, [F

    fill-array-data v14, :array_a

    invoke-direct {v13, v10, v14}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v11, v13}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x42fe0000    # 127.0f

    const/high16 v27, 0x428c0000    # 70.0f

    move-object/from16 v22, v4

    move-object/from16 v23, v11

    invoke-virtual/range {v22 .. v27}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v11, v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v13, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v14, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e570a3d    # 0.21f

    const/4 v7, 0x0

    invoke-direct {v15, v7, v7, v7, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-array v3, v12, [F

    fill-array-data v3, :array_b

    invoke-direct {v14, v15, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v13, v14}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v3, v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v11, -0x3f800000    # -4.0f

    invoke-virtual {v3, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v7, 0x428c0000    # 70.0f

    invoke-virtual {v3, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v3, v11, v12, v10}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v3, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, "FREE"

    invoke-direct {v1, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_8

    :cond_a
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "time-accelerator"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :goto_8
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "finish_crafting_now_button_hint"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v3, 0x3f0f5c29    # 0.56f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_9

    :cond_b
    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_9
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3fc00000    # -3.0f
        -0x3fc00000    # -3.0f
        0x428c0000    # 70.0f
        0x43b08000    # 353.0f
        0x42860000    # 67.0f
        0x43af0000    # 350.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3fc00000    # -3.0f
        0x0
        0x0
        0x42880000    # 68.0f
        0x43af0000    # 350.0f
        0x428c0000    # 70.0f
        0x43b08000    # 353.0f
        -0x3fc00000    # -3.0f
    .end array-data

    :array_2
    .array-data 4
        0x40400000    # 3.0f
        0x0
        0x0
        0x42860000    # 67.0f
        0x43af0000    # 350.0f
        0x42800000    # 64.0f
        0x43ad8000    # 347.0f
        0x40000000    # 2.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x42820000    # 65.0f
        0x43ad8000    # 347.0f
        0x42860000    # 67.0f
        0x43af0000    # 350.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x42800000    # 64.0f
        0x43ad8000    # 347.0f
        0x42740000    # 61.0f
        0x43ac0000    # 344.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_5
    .array-data 4
        0x40800000    # 4.0f
        0x41e00000    # 28.0f
        0x40400000    # 3.0f
        0x42800000    # 64.0f
        0x43ad8000    # 347.0f
        0x42740000    # 61.0f
        0x43ad8000    # 347.0f
        0x421c0000    # 39.0f
    .end array-data

    :array_6
    .array-data 4
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x40c00000    # 6.0f
        0x42780000    # 62.0f
        0x43ac0000    # 344.0f
        0x42800000    # 64.0f
        0x43ad8000    # 347.0f
        0x40400000    # 3.0f
    .end array-data

    :array_7
    .array-data 4
        0x40400000    # 3.0f
        0x41e00000    # 28.0f
        0x40c00000    # 6.0f
        0x42780000    # 62.0f
        0x43ac0000    # 344.0f
        0x42800000    # 64.0f
        0x43ad8000    # 347.0f
        0x42200000    # 40.0f
    .end array-data

    :array_8
    .array-data 4
        0x40400000    # 3.0f
        0x0
        0x0
        0x428c0000    # 70.0f
        0x42fe0000    # 127.0f
        0x42880000    # 68.0f
        0x42f60000    # 123.0f
        0x40000000    # 2.0f
    .end array-data

    :array_9
    .array-data 4
        0x40400000    # 3.0f
        0x0
        0x0
        0x428c0000    # 70.0f
        0x42fe0000    # 127.0f
        0x42880000    # 68.0f
        0x42f60000    # 123.0f
        0x40000000    # 2.0f
    .end array-data

    :array_a
    .array-data 4
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x42880000    # 68.0f
        0x42fe0000    # 127.0f
        0x428c0000    # 70.0f
        0x42f80000    # 124.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x42880000    # 68.0f
        0x42fe0000    # 127.0f
        0x428c0000    # 70.0f
        0x42f80000    # 124.0f
        0x0
    .end array-data
.end method

.method public final R()V
    .locals 26

    move-object/from16 v8, p0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v0

    add-int/lit16 v0, v0, -0x438

    iget-object v1, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v1, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->G:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    int-to-float v10, v0

    const/high16 v0, 0x444d0000    # 820.0f

    add-float/2addr v0, v10

    const/high16 v1, 0x43ab0000    # 342.0f

    invoke-virtual {v9, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/4 v11, 0x0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v9, v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v2, 0x43ab0000    # 342.0f

    invoke-virtual {v12, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v12, v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->G:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    sget-object v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->CRAFTING:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const/16 v7, 0x1e

    const/high16 v6, 0x42d60000    # 107.0f

    const/4 v3, -0x1

    const/high16 v5, 0x42800000    # 64.0f

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v15, 0x43000000    # 128.0f

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v0, v2, :cond_2

    iget v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->P:I

    if-eq v0, v3, :cond_2

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v2, v0, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {v8, v3}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->M(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R()V

    const/16 v11, 0x1e

    const/16 v16, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v16

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "cancel_crafting_button"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-times"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$RED;->values:[Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$7;

    invoke-direct {v0, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$7;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const/16 v17, 0x0

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    const/high16 v11, 0x42000000    # 32.0f

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    move-object v6, v9

    const/16 v11, 0x1e

    move-object v7, v12

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;[Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "grab_crafted_items_button"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-backpack-arrow-down"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->values:[Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$8;

    invoke-direct {v4, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$8;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;[Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    :goto_1
    move-object/from16 v15, v16

    const/4 v0, 0x1

    const/high16 v12, 0x42800000    # 64.0f

    goto/16 :goto_18

    :cond_2
    const/16 v11, 0x1e

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I()Z

    move-result v0

    const/high16 v4, 0x42c00000    # 96.0f

    const/16 v5, 0x8

    const-string v7, ""

    const/high16 v6, 0x41c00000    # 24.0f

    if-eqz v0, :cond_12

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iget-object v1, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v1, v14

    :goto_2
    if-ltz v1, :cond_4

    iget-object v2, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-virtual {v2, v4, v14}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ne v2, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v1, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v1, v14

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v16

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v1, v1

    mul-float v1, v1, v6

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    const/4 v2, 0x0

    :goto_4
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_5

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v3, v3, v2

    const/high16 v4, 0x43040000    # 132.0f

    sub-float/2addr v4, v1

    int-to-float v5, v2

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x44310000    # 708.0f

    add-float/2addr v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "selected_items_count"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v1, 0x42d80000    # 108.0f

    const/high16 v2, 0x441e0000    # 632.0f

    add-float/2addr v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v1, 0x3e8f5c29    # 0.28f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "selected_items_count"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v1, 0x441ec000    # 635.0f

    add-float/2addr v1, v10

    const/high16 v5, 0x42d60000    # 107.0f

    invoke-virtual {v0, v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v1, 0x422c0000    # 43.0f

    const/high16 v2, 0x44160000    # 600.0f

    add-float/2addr v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x43800000    # 256.0f

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$9;

    invoke-direct {v3, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$9;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v3, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    sget-object v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_MAP_EDITOR:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-ne v0, v3, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "select_visible_items"

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v3, v4, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (A)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v0, 0x422c0000    # 43.0f

    const/high16 v4, 0x44060000    # 536.0f

    add-float/2addr v4, v10

    invoke-virtual {v3, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v0, 0x43800000    # 256.0f

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v3, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$10;

    invoke-direct {v0, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$10;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_7
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_5
    iget-object v3, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_a

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    instance-of v4, v3, Lcom/prineside/tdi2/items/TileItem;

    if-eqz v4, :cond_8

    check-cast v3, Lcom/prineside/tdi2/items/TileItem;

    iget-object v3, v3, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->getPrestigeScore()D

    move-result-wide v3

    iget-object v5, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ItemStack;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v5

    move-object/from16 v18, v7

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v6

    :goto_6
    add-double/2addr v0, v3

    goto :goto_7

    :cond_8
    move-object/from16 v18, v7

    instance-of v4, v3, Lcom/prineside/tdi2/items/GateItem;

    if-eqz v4, :cond_9

    check-cast v3, Lcom/prineside/tdi2/items/GateItem;

    iget-object v3, v3, Lcom/prineside/tdi2/items/GateItem;->gate:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Gate;->getPrestigeScore()D

    move-result-wide v3

    iget-object v5, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ItemStack;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, v18

    const/high16 v6, 0x41c00000    # 24.0f

    goto :goto_5

    :cond_a
    move-object/from16 v18, v7

    const-wide v2, 0x406f400000000000L    # 250.0

    mul-double v0, v0, v2

    double-to-int v2, v0

    if-lt v2, v14, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "gv_title_PRESTIGE_MODE"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v13}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mP)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-crown"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->values:[Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    invoke-direct {v4, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    const/high16 v7, 0x42d60000    # 107.0f

    const/high16 v11, 0x41c00000    # 24.0f

    move-object v6, v9

    move-object/from16 v15, v18

    move-object v7, v12

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;[Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    goto :goto_8

    :cond_b
    move-object/from16 v15, v18

    const/high16 v11, 0x41c00000    # 24.0f

    :goto_8
    sget-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    :goto_9
    iget-object v1, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_d

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ItemStack;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Item;->canBeSold()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/prineside/tdi2/Item;->addSellItems(Lcom/badlogic/gdx/utils/Array;I)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    sget-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A0:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->compressStacksArray(Lcom/badlogic/gdx/utils/Array;)V

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_11

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "sell_button"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-dollar"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$RED;->values:[Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;

    invoke-direct {v4, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v6, v9

    move-object v7, v12

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;[Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v1, 0x0

    :goto_a
    sget-object v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A0:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_f

    iget-object v3, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v1

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    invoke-virtual {v5, v11, v13}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v3

    move-object/from16 v19, v12

    int-to-double v11, v3

    invoke-static {v11, v12, v13}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v3, 0x2

    if-ne v1, v3, :cond_e

    goto :goto_b

    :cond_e
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v12, v19

    const/high16 v11, 0x41c00000    # 24.0f

    goto :goto_a

    :cond_f
    move-object/from16 v19, v12

    :goto_b
    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_10

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    const-string v3, "+"

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_c

    :cond_10
    const/high16 v2, 0x41000000    # 8.0f

    :goto_c
    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_11
    move-object/from16 v15, v16

    const/4 v0, 0x0

    const/high16 v12, 0x42800000    # 64.0f

    const/4 v13, 0x1

    goto/16 :goto_18

    :cond_12
    move-object v15, v7

    move-object/from16 v19, v12

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v11

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-ne v0, v2, :cond_19

    iget v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->P:I

    if-ne v0, v3, :cond_18

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    invoke-virtual {v0, v11}, Lcom/prineside/tdi2/managers/ItemManager;->getCraftRecipes(Lcom/prineside/tdi2/Item;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v2, 0x0

    :goto_d
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_18

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/CraftRecipe;

    aget-object v3, v3, v2

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v7, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    new-instance v12, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;

    invoke-direct {v12, v8, v3}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/CraftRecipe;)V

    invoke-direct {v6, v15, v7, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance v7, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v12, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-direct {v12, v1, v4}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v7, v12}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v22, 0x0

    const/high16 v23, 0x41200000    # 10.0f

    const/high16 v24, 0x43a40000    # 328.0f

    const/high16 v25, 0x42f00000    # 120.0f

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v25}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v4, v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v7, 0x43a38000    # 327.0f

    const/high16 v12, 0x42ae0000    # 87.0f

    invoke-virtual {v4, v7, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v7, 0x3e0f5c29    # 0.14f

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v12, v12, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v4, v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v7, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v12, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v14, v5, [F

    fill-array-data v14, :array_1

    invoke-direct {v12, v1, v14}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v7, v12}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v1, v4, v7, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x43a40000    # 328.0f

    const/high16 v7, 0x43020000    # 130.0f

    invoke-virtual {v1, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x41b80000    # 23.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-virtual {v1, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x43910000    # 290.0f

    const/high16 v7, 0x42c00000    # 96.0f

    invoke-virtual {v1, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v4, 0x0

    :goto_e
    iget-object v6, v3, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v12, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v12, :cond_16

    int-to-float v12, v4

    mul-float v12, v12, v7

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    aget-object v6, v6, v4

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/high16 v16, 0x41800000    # 16.0f

    add-float v7, v12, v16

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v14, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x42800000    # 64.0f

    invoke-virtual {v14, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v6}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getExampleItems()[Lcom/prineside/tdi2/Item;

    move-result-object v5

    array-length v7, v5

    move-object/from16 v16, v0

    const/4 v0, 0x1

    if-ne v7, v0, :cond_13

    aget-object v5, v5, v13

    const/high16 v7, 0x42800000    # 64.0f

    invoke-virtual {v5, v7, v0}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    move-object/from16 v22, v11

    const/high16 v5, 0x42800000    # 64.0f

    goto :goto_10

    :cond_13
    const/high16 v7, 0x42800000    # 64.0f

    new-instance v13, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v13}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    array-length v0, v5

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v0, :cond_14

    move/from16 v23, v0

    aget-object v0, v5, v7

    move-object/from16 v24, v5

    move-object/from16 v22, v11

    const/high16 v5, 0x42800000    # 64.0f

    const/4 v11, 0x1

    invoke-virtual {v0, v5, v11}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v11, v22

    move/from16 v0, v23

    move-object/from16 v5, v24

    goto :goto_f

    :cond_14
    move-object/from16 v22, v11

    const/high16 v5, 0x42800000    # 64.0f

    const/4 v11, 0x1

    new-array v0, v11, [I

    const/4 v7, 0x0

    aput v7, v0, v7

    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-static {v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v7

    new-instance v11, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;

    invoke-direct {v11, v8, v0, v13, v14}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;[ILcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    invoke-static {v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_10
    invoke-virtual {v6}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getCountWithGVs()I

    move-result v0

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x15

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v6, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v7, 0x42900000    # 72.0f

    add-float/2addr v7, v12

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v11, v7, v11

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v6, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v6, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x15

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v6, v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v6, v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    if-eqz v4, :cond_15

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "icon-plus"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {v0, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x41400000    # 12.0f

    sub-float/2addr v12, v6

    const/high16 v6, 0x42100000    # 36.0f

    invoke-virtual {v0, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v11, v22

    const/16 v5, 0x8

    const/high16 v7, 0x42c00000    # 96.0f

    const/4 v13, 0x0

    goto/16 :goto_e

    :cond_16
    move-object/from16 v16, v0

    move-object/from16 v22, v11

    const/high16 v5, 0x42800000    # 64.0f

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<@icon-clock> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/prineside/tdi2/CraftRecipe;->getTimeWithGVs()F

    move-result v6

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(IZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x18

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x42b00000    # 88.0f

    const/high16 v6, 0x42500000    # 52.0f

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x18

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v4, 0x42580000    # 54.0f

    invoke-virtual {v3, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v0, 0x43480000    # 200.0f

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_17
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v1, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v6, 0x8

    new-array v7, v6, [F

    fill-array-data v7, :array_2

    invoke-direct {v3, v4, v7}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v1, v3}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v11, v19

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43a30000    # 326.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42fa0000    # 125.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v11, v22

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v4, 0x42c00000    # 96.0f

    const/16 v5, 0x8

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_18
    move-object/from16 v22, v11

    const/high16 v12, 0x42800000    # 64.0f

    goto/16 :goto_17

    :cond_19
    move-object/from16 v22, v11

    move-object/from16 v11, v19

    const/high16 v5, 0x42800000    # 64.0f

    sget-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Item;->canBeSold()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Item;->addSellItems(Lcom/badlogic/gdx/utils/Array;)V

    :cond_1a
    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    sget-object v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A0:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_1c

    iget-object v3, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v3

    if-le v3, v1, :cond_1b

    iget-object v1, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ItemStack;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1c
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "sell_button"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-dollar"

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$RED;->values:[Lcom/badlogic/gdx/graphics/Color;

    new-instance v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;

    invoke-direct {v6, v8, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;I)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    const/high16 v12, 0x42800000    # 64.0f

    move-object v5, v7

    move-object v6, v9

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;[Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v7, 0x0

    :goto_12
    sget-object v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A0:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v2, :cond_1e

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v7

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v4

    const/high16 v5, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v2, 0x2

    if-ne v7, v2, :cond_1d

    goto :goto_13

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_1e
    :goto_13
    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1f

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    const-string v3, "+"

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_14

    :cond_1f
    const/high16 v2, 0x41000000    # 8.0f

    :goto_14
    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto :goto_15

    :cond_20
    const/high16 v12, 0x42800000    # 64.0f

    :goto_15
    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->CASE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v0, v1, :cond_21

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/items/CaseItem;

    iget-boolean v0, v0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "decrypt_pack_button"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-lock-unlocked"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->values:[Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$16;

    invoke-direct {v4, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$16;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v6, v9

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;[Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    :cond_21
    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->canBeUnpacked()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    new-instance v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$17;

    invoke-direct {v0, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$17;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    move-object v5, v0

    goto :goto_16

    :cond_22
    const/4 v5, 0x0

    :goto_16
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "open_pack_button"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-eye"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->values:[Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$18;

    invoke-direct {v4, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$18;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    move-object/from16 v0, p0

    move-object v6, v9

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;[Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    :cond_23
    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v0, v1, :cond_24

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "lucky_shot"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-lucky-wheel"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->values:[Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$19;

    invoke-direct {v4, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$19;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v6, v9

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;[Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    :cond_24
    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    instance-of v0, v0, Lcom/prineside/tdi2/Item$UsableItem;

    if-eqz v0, :cond_25

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Item$UsableItem;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "use_item_button"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-check"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->values:[Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20;

    invoke-direct {v4, v8, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/Item$UsableItem;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v6, v9

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;[Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    :cond_25
    :goto_17
    move-object/from16 v15, v22

    const/4 v0, 0x1

    const/4 v13, 0x0

    goto :goto_18

    :cond_26
    const/high16 v12, 0x42800000    # 64.0f

    const/4 v0, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_18
    if-eqz v15, :cond_2a

    if-nez v13, :cond_27

    const/high16 v0, 0x43000000    # 128.0f

    const/4 v1, 0x1

    invoke-virtual {v15, v0, v1}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    const/high16 v0, 0x442d0000    # 692.0f

    add-float/2addr v0, v10

    const/high16 v1, 0x42d60000    # 107.0f

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_19

    :cond_27
    const/high16 v1, 0x42d60000    # 107.0f

    :goto_19
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    if-eqz v0, :cond_28

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-edit"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v2, 0x436b0000    # 235.0f

    const/high16 v3, 0x44450000    # 788.0f

    add-float/2addr v3, v10

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$21;

    invoke-direct {v2, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$21;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v2, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_28
    const/high16 v0, 0x43960000    # 300.0f

    if-nez v13, :cond_29

    invoke-virtual {v15}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v15}, Lcom/prineside/tdi2/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v4, 0x42d80000    # 108.0f

    const/high16 v5, 0x441e0000    # 632.0f

    add-float/2addr v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x43000000    # 128.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v4, 0x3e8f5c29    # 0.28f

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v4, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v15}, Lcom/prineside/tdi2/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v4, 0x441ec000    # 635.0f

    add-float/2addr v4, v10

    invoke-virtual {v3, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x43000000    # 128.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityName(Lcom/prineside/tdi2/enums/RarityType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v2, 0x44194000    # 613.0f

    add-float/2addr v2, v10

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v2, 0x43000000    # 128.0f

    invoke-virtual {v3, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v1, 0x3f0f5c29    # 0.56f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v15}, Lcom/prineside/tdi2/Item;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v2, 0x41a80000    # 21.0f

    const v3, 0x4405c000    # 535.0f

    add-float/2addr v3, v10

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v0, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v2, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_29
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v15, v1, v0}, Lcom/prineside/tdi2/Item;->fillWithInfo(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;F)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    const/high16 v1, 0x41a80000    # 21.0f

    const/high16 v3, 0x42f80000    # 124.0f

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x43be0000    # 380.0f

    add-float/2addr v10, v1

    invoke-virtual {v2, v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_1a

    :cond_2a
    if-eqz v0, :cond_2b

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "inventory_no_item_selected_hint"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v1, 0x438d0000    # 282.0f

    const/high16 v2, 0x44570000    # 860.0f

    add-float/2addr v10, v2

    invoke-virtual {v0, v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2b
    :goto_1a
    const/16 v0, 0x2329

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    return-void

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x0
        0x0
        0x42f00000    # 120.0f
        0x43a40000    # 328.0f
        0x42ea0000    # 117.0f
        0x43a18000    # 323.0f
        0x40400000    # 3.0f
    .end array-data

    :array_1
    .array-data 4
        0x41600000    # 14.0f
        0x0
        0x40c00000    # 6.0f
        0x42ae0000    # 87.0f
        0x43a38000    # 327.0f
        0x42aa0000    # 85.0f
        0x43a00000    # 320.0f
        0x41300000    # 11.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x41500000    # 13.0f
        0x41980000    # 19.0f
        0x41500000    # 13.0f
        0x41980000    # 19.0f
        0x41500000    # 13.0f
    .end array-data
.end method

.method public final S()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->getSelectedCount()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/Item;->addSellItems(Lcom/badlogic/gdx/utils/Array;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A0:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o0:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v0:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    mul-int v2, v2, v1

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final T()V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v2, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    const-string v3, "TIME_CHAR_MINUTE"

    const-string v4, "TIME_CHAR_SECOND"

    const-string v5, "TIME_CHAR_HOUR"

    const v6, 0x3e8f5c29    # 0.28f

    const/high16 v7, 0x45610000    # 3600.0f

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-string v10, "!!!"

    const/16 v11, 0x21

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x42700000    # 60.0f

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v2, :cond_5

    iget v1, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    cmpl-float v1, v1, v8

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v1, v1, v14

    if-eq v1, v11, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iput v9, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p0:I

    :cond_0
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_1
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v2, v2, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    cmpl-float v16, v2, v7

    if-lez v16, :cond_2

    div-float/2addr v2, v13

    div-float/2addr v2, v13

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    mul-int/lit8 v2, v2, 0x3c

    :goto_1
    mul-int/lit8 v2, v2, 0x3c

    goto :goto_2

    :cond_2
    cmpl-float v7, v2, v13

    if-lez v7, :cond_3

    div-float/2addr v2, v13

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v8, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_3
    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v8, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_2
    iget v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p0:I

    if-eq v2, v7, :cond_4

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iput v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p0:I

    :cond_4
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_3

    :cond_6
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getEncryptedCasesCount()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v1, v1, v14

    if-eq v1, v11, :cond_7

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iput v9, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p0:I

    :cond_7
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v12, v12, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_3
    const/4 v1, 0x0

    :goto_4
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v7, Lcom/prineside/tdi2/enums/ItemType;->CASE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v2

    const/4 v7, 0x0

    :goto_5
    iget v8, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_a

    iget-object v8, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ItemStack;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/CaseItem;

    iget-boolean v8, v8, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    if-nez v8, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v7, v2, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v7, :cond_10

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getTotalCraftingTimeLeft()F

    move-result v2

    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-nez v6, :cond_c

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v1, v1, v14

    if-eq v1, v11, :cond_b

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iput v9, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q0:I

    :cond_b
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_9

    :cond_c
    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/high16 v7, 0x45610000    # 3600.0f

    cmpl-float v7, v2, v7

    if-lez v7, :cond_d

    div-float/2addr v2, v13

    div-float/2addr v2, v13

    float-to-int v2, v2

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    mul-int/lit8 v2, v2, 0x3c

    :goto_7
    mul-int/lit8 v2, v2, 0x3c

    goto :goto_8

    :cond_d
    cmpl-float v5, v2, v13

    if-lez v5, :cond_e

    div-float/2addr v2, v13

    float-to-int v2, v2

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_7

    :cond_e
    float-to-int v2, v2

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_8
    iget v3, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q0:I

    if-eq v2, v3, :cond_f

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iput v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q0:I

    :cond_f
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v15, v1

    :goto_9
    move v1, v15

    goto :goto_a

    :cond_10
    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_a

    :cond_11
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v12, v12, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_a
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->B:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public final U()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getVisualScrollY()F

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->h0:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->button:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    iget v6, v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->distanceY:F

    sub-float/2addr v6, v0

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v7

    sub-float/2addr v7, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v4, v4, v6

    add-float v6, v7, v4

    cmpl-float v6, v6, v1

    if-lez v6, :cond_0

    sub-float v7, v1, v4

    :cond_0
    iget-object v1, v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->button:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sub-float v3, v7, v4

    invoke-virtual {v1, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->h0:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;

    aget-object v0, v0, v4

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->button:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->button:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->button:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    add-float/2addr v5, v0

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final V()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->CASE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v3, v2, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v2, v2, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    float-to-int v2, v2

    invoke-static {v2}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v2, v2, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/CaseItem;

    iget-boolean v3, v3, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_4

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/items/CaseItem;

    iget-boolean v2, v2, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getTotalCraftingTimeLeft()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_5
    return-void
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public hide(Z)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    const-string v1, "InventoryOverlay"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$41;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$41;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyHideOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->i0:Z

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->N(Z)V

    return-void
.end method

.method public postRender(F)V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->i0:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getVisualScrollY()F

    move-result v1

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->U()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getVisualScrollY()F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->A:F

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v2, 0x1d

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L()V

    :cond_1
    iget-boolean v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->i0:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->V()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v4, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    const-string v5, ""

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v1, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    float-to-int v1, v1

    invoke-static {v1}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v1, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v4, v1, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getTotalCraftingTimeLeft()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    sget-object v4, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->PACKS:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_15

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->X:Lcom/prineside/tdi2/ui/actors/ItemCell;

    if-eqz v4, :cond_15

    iget v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->V:I

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v8, v7, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v1, v8, :cond_5

    iput v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->V:I

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->U:Lcom/prineside/tdi2/Item;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    const/4 v9, 0x2

    const v10, 0x3f0f5c29    # 0.56f

    if-eq v8, v7, :cond_8

    invoke-virtual {v4, v7, v5}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/Item;I)V

    if-eqz v7, :cond_6

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7}, Lcom/prineside/tdi2/items/CaseItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/items/CaseItem;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->f0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v8

    const/4 v11, 0x3

    new-array v11, v11, [F

    iget v12, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v12, v11, v5

    iget v12, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v12, v11, v6

    iget v12, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v12, v11, v9

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "inventory_decrypting_no_item_title"

    invoke-virtual {v4, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v3, v3, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_7
    iput-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->U:Lcom/prineside/tdi2/Item;

    const/4 v1, 0x1

    :cond_8
    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->U:Lcom/prineside/tdi2/Item;

    if-eqz v4, :cond_9

    iget v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->W:F

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v7, v7, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_9

    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_18

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v4, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    if-eqz v4, :cond_f

    iget v1, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    invoke-virtual {v4}, Lcom/prineside/tdi2/items/CaseItem;->getDecryptionTime()F

    move-result v4

    div-float/2addr v1, v4

    sub-float v1, v3, v1

    const v4, 0x44038000    # 526.0f

    mul-float v1, v1, v4

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v4, v4, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    cmpl-float v7, v4, v2

    if-nez v7, :cond_a

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->e0:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->X:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setNotificationBubbleEnabled(Z)V

    goto/16 :goto_7

    :cond_a
    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    float-to-int v4, v4

    invoke-static {v4, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(IZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->X:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setNotificationBubbleEnabled(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v12, 0x41d00000    # 26.0f

    const/high16 v13, 0x41c80000    # 25.0f

    const/high16 v14, 0x42b40000    # 90.0f

    const/high16 v15, 0x41980000    # 19.0f

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const-string v7, "FREE"

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_4

    :cond_b
    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "time-accelerator"

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    const/high16 v13, 0x41d00000    # 26.0f

    const/high16 v14, 0x41700000    # 15.0f

    const/high16 v15, 0x42200000    # 40.0f

    const/high16 v16, 0x42200000    # 40.0f

    invoke-virtual/range {v11 .. v16}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v18, 0x42980000    # 76.0f

    const/high16 v19, 0x41c80000    # 25.0f

    const/high16 v20, 0x42200000    # 40.0f

    const/high16 v21, 0x41980000    # 19.0f

    const/16 v22, 0x8

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v22}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v8, v7, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/ProgressManager;->getAcceleratorsRequiredToShortenTime(F)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(I)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :goto_4
    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->e0:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/PurchaseManager;->rewardingAdsAvailable()Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v7, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->CASE_DECRYPTION:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/managers/PurchaseManager;->getSecondsTillAdIsReady(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)I

    move-result v4

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    if-nez v4, :cond_c

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const-string v7, "-20:00"

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_5

    :cond_c
    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {v4}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_5

    :cond_d
    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_5
    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->f0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnWidth()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    const/high16 v8, 0x40e00000    # 7.0f

    div-float v8, v1, v8

    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v12, v8, v11

    if-gez v12, :cond_e

    const/high16 v8, 0x40000000    # 2.0f

    :cond_e
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getEmission()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    goto :goto_6

    :cond_f
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->e0:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getEncryptedCasesCount()I

    move-result v1

    if-lez v1, :cond_10

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->X:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setNotificationBubbleEnabled(Z)V

    :cond_10
    :goto_7
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getExtraDecryptingSlotsCount()I

    move-result v1

    const-string v4, "icon-research"

    const/high16 v7, 0x42400000    # 48.0f

    if-ge v1, v9, :cond_11

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v8, v3, v3, v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v8, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_8

    :cond_11
    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    iget v11, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v9, :cond_12

    goto :goto_8

    :cond_12
    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v8, v7, v5}, Lcom/prineside/tdi2/items/CaseItem;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_8
    if-ge v1, v6, :cond_13

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v3, v3, v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_a

    :cond_13
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_14

    goto :goto_a

    :cond_14
    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v1, v7, v5}, Lcom/prineside/tdi2/items/CaseItem;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_a

    :cond_15
    sget-object v4, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->CRAFTING:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    if-ne v1, v4, :cond_18

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getTotalCraftingTimeLeft()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x1f

    :goto_9
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_17

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->getTimeLeft()F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_16

    add-int/lit8 v1, v1, 0x1

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_17
    iget v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->S:I

    if-eq v1, v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Q()V

    iput v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->S:I

    :cond_18
    :goto_a
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r0:F

    add-float v1, v1, p1

    iput v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r0:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_19

    iput v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r0:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->T()V

    :cond_19
    return-void
.end method

.method public preRender(F)V
    .locals 0

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s0:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s0:Z

    :cond_0
    return-void
.end method

.method public rebuildLayoutIfRequired()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x438

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    int-to-float v1, v1

    const/high16 v4, 0x44570000    # 860.0f

    add-float/2addr v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v5, v5, v4

    const v6, 0x44158000    # 598.0f

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const v8, 0x44958000    # 1196.0f

    invoke-virtual {v7, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/16 v6, 0x48

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v7, 0x8

    new-array v9, v7, [F

    fill-array-data v9, :array_0

    invoke-direct {v2, v5, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v9, -0x3ed00000    # -11.0f

    invoke-virtual {v2, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v6, v7, [F

    const/4 v9, 0x0

    aput v9, v6, v3

    const/4 v10, 0x1

    aput v9, v6, v10

    const v11, 0x43a08000    # 321.0f

    const/4 v12, 0x2

    aput v11, v6, v12

    const v11, 0x44598000    # 870.0f

    add-float/2addr v11, v1

    const/4 v13, 0x3

    aput v11, v6, v13

    const v11, 0x43ad8000    # 347.0f

    const/4 v14, 0x4

    aput v11, v6, v14

    const v11, 0x4459c000    # 871.0f

    add-float/2addr v11, v1

    const/4 v15, 0x5

    aput v11, v6, v15

    const/high16 v16, 0x43a50000    # 330.0f

    const/16 v17, 0x6

    aput v16, v6, v17

    const/16 v16, 0x7

    const/high16 v18, 0x40e00000    # 7.0f

    aput v18, v6, v16

    invoke-direct {v2, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v5, 0x445a0000    # 872.0f

    const/high16 v6, -0x3e400000    # -24.0f

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-direct {v2, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->t:Lcom/prineside/tdi2/ui/actors/QuadActor;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x2f2f2fff

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v6, v7, [F

    aput v18, v6, v3

    const/high16 v19, 0x41300000    # 11.0f

    aput v19, v6, v10

    aput v9, v6, v12

    const v19, 0x44544000    # 849.0f

    add-float v19, v1, v19

    aput v19, v6, v13

    aput v8, v6, v14

    aput v4, v6, v15

    const v8, 0x44942000    # 1185.0f

    aput v8, v6, v17

    aput v9, v6, v16

    invoke-direct {v2, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v5, 0x44500000    # 832.0f

    add-float/2addr v5, v1

    const v6, 0x44578000    # 862.0f

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v2, v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, -0x3d5c0000    # -82.0f

    invoke-virtual {v2, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v6, 0x42a40000    # 82.0f

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/16 v6, 0x24

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v6, v7, [F

    const/high16 v8, 0x41700000    # 15.0f

    aput v8, v6, v3

    aput v9, v6, v10

    aput v9, v6, v12

    const v8, 0x44558000    # 854.0f

    add-float v19, v1, v8

    aput v19, v6, v13

    const/high16 v20, 0x41880000    # 17.0f

    aput v20, v6, v14

    aput v19, v6, v15

    const/high16 v19, 0x41b00000    # 22.0f

    aput v19, v6, v17

    aput v9, v6, v16

    invoke-direct {v2, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const v5, 0x44514000    # 837.0f

    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$3;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$3;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const-string v15, ""

    invoke-direct {v2, v15, v5, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "ui-inventory-toggle-button"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v20

    const/high16 v21, -0x3d380000    # -100.0f

    const/16 v22, 0x0

    const/high16 v23, 0x43540000    # 212.0f

    const/high16 v24, 0x42d20000    # 105.0f

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5, v6, v15, v14}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-times"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v20

    const/high16 v21, 0x41e00000    # 28.0f

    const/high16 v22, 0x41c80000    # 25.0f

    const/high16 v23, 0x42800000    # 64.0f

    const/high16 v24, 0x42800000    # 64.0f

    invoke-virtual/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v5, 0x441e4000    # 633.0f

    add-float/2addr v5, v1

    const v6, 0x44952000    # 1193.0f

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x42e00000    # 112.0f

    const/high16 v6, 0x42d20000    # 105.0f

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->G:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->G:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v5, 0x43ab0000    # 342.0f

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->G:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v14, 0x363636ff

    invoke-direct {v6, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v14, v7, [F

    const/high16 v15, 0x40c00000    # 6.0f

    aput v15, v14, v3

    aput v9, v14, v10

    aput v9, v14, v12

    const v19, 0x445b4000    # 877.0f

    add-float v19, v1, v19

    aput v19, v14, v13

    const/16 v20, 0x4

    aput v5, v14, v20

    const v20, 0x4458c000    # 867.0f

    add-float v1, v1, v20

    const/16 v20, 0x5

    aput v1, v14, v20

    const v1, 0x43a58000    # 331.0f

    aput v1, v14, v17

    aput v18, v14, v16

    invoke-direct {v2, v6, v14}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v1, -0x3f200000    # -7.0f

    invoke-virtual {v2, v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const/16 v14, -0xef

    invoke-direct {v6, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v5, v7, [F

    aput v15, v5, v3

    aput v9, v5, v10

    aput v9, v5, v12

    aput v19, v5, v13

    const/high16 v12, 0x41400000    # 12.0f

    const/4 v13, 0x4

    aput v12, v5, v13

    const/4 v12, 0x5

    aput v11, v5, v12

    const/high16 v11, 0x41000000    # 8.0f

    aput v11, v5, v17

    aput v9, v5, v16

    invoke-direct {v2, v6, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v2, v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    invoke-direct {v1, v2, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, 0x43ab0000    # 342.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, 0x42dc0000    # 110.0f

    invoke-virtual {v1, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-boolean v10, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->t0:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x41500000    # 13.0f
        0x0
        0x42200000    # 40.0f
        0x445a0000    # 872.0f
        0x42200000    # 40.0f
        0x44568000    # 858.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x42dc0000    # 110.0f
        0x41880000    # 17.0f
        0x43070000    # 135.0f
        0x41880000    # 17.0f
        0x42ee0000    # 119.0f
        0x40800000    # 4.0f
    .end array-data

    :array_2
    .array-data 4
        0x41400000    # 12.0f
        0x40800000    # 4.0f
        0x0
        0x41200000    # 10.0f
        0x43ab0000    # 342.0f
        0x0
        0x43ab0000    # 342.0f
        0x0
    .end array-data
.end method

.method public requireLayoutRebuild()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->t0:Z

    return-void
.end method

.method public setSelectedItem(Lcom/prineside/tdi2/ItemStack;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ui/actors/ItemCell;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setSelected(Z)V

    :cond_0
    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    :cond_1
    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ui/actors/ItemCell;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setSelected(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R()V

    return-void
.end method

.method public show()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->i0:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->rebuildLayoutIfRequired()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->N(Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget v2, v2, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    sub-int/2addr v2, v0

    new-instance v0, Lcom/prineside/tdi2/ui/shared/h;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/shared/h;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const-string v3, "InventoryOverlay"

    invoke-virtual {v1, v3, v2, v0}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyShowOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollY()F

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update(F)V

    return-void
.end method

.method public update(F)V
    .locals 37

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->J()V

    sget-object v2, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->U:Lcom/prineside/tdi2/Item;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->W:F

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v3

    add-int/lit16 v3, v3, -0x438

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->E()V

    sget-object v4, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$42;->a:[I

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->j0:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/high16 v6, 0x41c00000    # 24.0f

    const v9, 0x2f2f2fff

    const/high16 v12, 0x44500000    # 832.0f

    const v13, 0x44578000    # 862.0f

    const/high16 v14, 0x41000000    # 8.0f

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, 0x42400000    # 48.0f

    const/4 v7, 0x6

    const/4 v8, 0x1

    const/4 v15, 0x0

    if-eq v4, v8, :cond_16

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const-string v5, "Inventory itemsScroll"

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    int-to-float v3, v3

    add-float v8, v3, v12

    invoke-virtual {v5, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "gradient-top"

    invoke-virtual {v8, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v5, v13, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v6, 0x444a4000    # 809.0f

    add-float/2addr v6, v3

    invoke-virtual {v5, v15, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "gradient-bottom"

    invoke-virtual {v8, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v8, 0x42c00000    # 96.0f

    invoke-virtual {v5, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v15, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x41800000    # 16.0f

    :goto_0
    iget v12, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v12, :cond_3

    iget-object v12, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v12, [Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;

    aget-object v12, v12, v6

    const/high16 v13, 0x41f00000    # 30.0f

    add-float/2addr v13, v9

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getIconAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    new-instance v7, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    new-instance v15, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$39;

    invoke-direct {v15, v0, v13}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$39;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;F)V

    invoke-virtual {v12}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v21

    sget-object v22, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v23

    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v20, v15

    invoke-direct/range {v18 .. v23}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v11, v11}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v7, v10, v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v20, 0x41980000    # 19.0f

    const/high16 v21, 0x40a00000    # 5.0f

    const/high16 v22, 0x42400000    # 48.0f

    const/high16 v23, 0x42400000    # 48.0f

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x0

    const v11, 0x3e8f5c29    # 0.28f

    invoke-direct {v15, v10, v10, v10, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setShadow(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFFLcom/badlogic/gdx/graphics/Color;)V

    const/high16 v2, 0x42a00000    # 80.0f

    const/high16 v10, 0x42800000    # 64.0f

    invoke-virtual {v7, v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;

    const/4 v10, 0x0

    invoke-direct {v2, v0, v10}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    iput v13, v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->distanceY:F

    iput-object v7, v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->button:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->h0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v12}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getTitle()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x1e

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v2, v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v12}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v7, 0x42500000    # 52.0f

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v7, 0x44400000    # 768.0f

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/high16 v2, 0x42700000    # 60.0f

    add-float/2addr v9, v2

    iget-object v2, v12, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v2, v2

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v2, v7

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v2

    const/4 v7, 0x0

    :cond_0
    :goto_1
    mul-int/lit8 v10, v2, 0x6

    if-ge v7, v10, :cond_2

    new-instance v10, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v10}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    rem-int/lit8 v11, v7, 0x6

    invoke-virtual {v10, v11, v8}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    iget-object v11, v12, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v13, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v13, :cond_1

    iget-object v11, v11, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v11, [Lcom/prineside/tdi2/ItemStack;

    aget-object v11, v11, v7

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v13, v11, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/ItemStack;)V

    new-instance v13, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;

    invoke-direct {v13, v0, v11, v10}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/ui/actors/ItemCell;)V

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_1
    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    rem-int/lit8 v11, v7, 0x6

    if-nez v11, :cond_0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto :goto_1

    :cond_2
    int-to-float v2, v2

    const/high16 v7, 0x430c0000    # 140.0f

    mul-float v2, v2, v7

    add-float/2addr v9, v2

    add-int/lit8 v6, v6, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v7, 0x6

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, 0x42400000    # 48.0f

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/high16 v2, 0x44500000    # 832.0f

    sub-float v12, v2, v9

    add-float/2addr v12, v3

    const/4 v2, 0x0

    cmpg-float v3, v12, v2

    if-gez v3, :cond_4

    const/4 v15, 0x0

    goto :goto_2

    :cond_4
    move v15, v12

    :goto_2
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x43000000    # 128.0f

    add-float/2addr v15, v3

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_12

    :cond_5
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const-string v5, "Inventory itemsScroll"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    int-to-float v3, v3

    const/high16 v5, 0x44500000    # 832.0f

    add-float v12, v3, v5

    invoke-virtual {v4, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "gradient-top"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v13, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v5, 0x444a4000    # 809.0f

    add-float/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "gradient-bottom"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-virtual {v4, v13, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v5, v4, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v5, :cond_7

    iget-object v4, v4, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    const/high16 v4, 0x41800000    # 16.0f

    goto/16 :goto_4

    :cond_7
    :goto_3
    const/high16 v4, 0x42380000    # 46.0f

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-clock"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    new-instance v9, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$29;

    invoke-direct {v9, v0, v4}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$29;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;F)V

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v6

    move-object v8, v5

    move-object v10, v15

    move-object v11, v13

    move-object v12, v15

    invoke-direct/range {v7 .. v12}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v7, 0x42400000    # 48.0f

    invoke-virtual {v6, v7, v7}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7, v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v9, 0x41980000    # 19.0f

    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v11, 0x42400000    # 48.0f

    const/high16 v12, 0x42400000    # 48.0f

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    invoke-direct {v8, v14, v14, v14, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v7, v6

    move-object v14, v8

    move-object v8, v5

    move-object v5, v13

    move-object v13, v14

    invoke-virtual/range {v7 .. v13}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setShadow(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFFLcom/badlogic/gdx/graphics/Color;)V

    const/high16 v7, 0x42a00000    # 80.0f

    const/high16 v8, 0x42800000    # 64.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    iput v4, v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->distanceY:F

    iput-object v6, v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->button:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->h0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "inventory_subcategory_decrypting"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x1e

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v6, 0x42500000    # 52.0f

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v6, 0x44400000    # 768.0f

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/4 v7, 0x6

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v6}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->X:Lcom/prineside/tdi2/ui/actors/ItemCell;

    const/4 v7, 0x1

    invoke-virtual {v6, v8, v7}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->X:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "item-cell-a-shape"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v7, 0x43090000    # 137.0f

    const/high16 v8, 0x42980000    # 76.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x42640000    # 57.0f

    const/high16 v8, 0x42800000    # 64.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v7, 0x3e0f5c29    # 0.14f

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "item-cell-a-shape"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v7, 0x430b0000    # 139.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x42640000    # 57.0f

    const/high16 v9, 0x42800000    # 64.0f

    invoke-virtual {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v7, 0x3e0f5c29    # 0.14f

    invoke-virtual {v6, v8, v8, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v7, 0x430e0000    # 142.0f

    const/high16 v8, 0x42a80000    # 84.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x42400000    # 48.0f

    invoke-virtual {v6, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$30;

    invoke-direct {v8, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$30;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x43100000    # 144.0f

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v7, 0x42400000    # 48.0f

    invoke-virtual {v6, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$31;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$31;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x1e

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v8, ""

    invoke-direct {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v8, 0x41b80000    # 23.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v7, 0x42c60000    # 99.0f

    const/high16 v8, 0x43630000    # 227.0f

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "blank"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v7, 0x3e0f5c29    # 0.14f

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v7, 0x42960000    # 75.0f

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v7, 0x44038000    # 526.0f

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "blank"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v7, 0x42960000    # 75.0f

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-direct {v6}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->e0:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/high16 v7, 0x42960000    # 75.0f

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->e0:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->e0:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->T:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->f0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->e0:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9, v9}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v7, 0x43960000    # 300.0f

    const/high16 v9, 0x41b80000    # 23.0f

    invoke-virtual {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v7, 0x43e10000    # 450.0f

    const/high16 v9, 0x42c60000    # 99.0f

    invoke-virtual {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "time_left"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v7, 0x3f0f5c29    # 0.56f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9, v9, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v10, ""

    invoke-direct {v6, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    new-instance v10, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$32;

    invoke-direct {v10, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$32;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const-string v11, "0"

    invoke-direct {v6, v11, v7, v10}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v10, 0x42800000    # 64.0f

    invoke-virtual {v6, v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "ui-inventory-decoding-small-button"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x43070000    # 135.0f

    const/high16 v15, 0x42800000    # 64.0f

    invoke-virtual/range {v10 .. v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v7, v10, v11, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    new-instance v14, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33;

    invoke-direct {v14, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    const-string v15, ""

    invoke-direct {v6, v15, v13, v14}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v13, 0x43070000    # 135.0f

    const/high16 v14, 0x42800000    # 64.0f

    invoke-virtual {v6, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v13, 0x441a8000    # 618.0f

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "rewarding-ad"

    invoke-virtual {v6, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v20

    const/high16 v21, 0x41800000    # 16.0f

    const/high16 v22, 0x41880000    # 17.0f

    const/high16 v23, 0x42000000    # 32.0f

    const/high16 v24, 0x42000000    # 32.0f

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v26, 0x42680000    # 58.0f

    const/high16 v27, 0x41c80000    # 25.0f

    const/high16 v28, 0x42200000    # 40.0f

    const/high16 v29, 0x41980000    # 19.0f

    const/16 v30, 0x8

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v30}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "ui-inventory-decoding-small-button"

    invoke-virtual {v6, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x43070000    # 135.0f

    const/high16 v24, 0x42800000    # 64.0f

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v13, v14, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v15, "open_pack_button"

    invoke-virtual {v12, v15}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v15

    new-instance v9, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$34;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$34;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    invoke-direct {v5, v12, v15, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v9, 0x43070000    # 135.0f

    const/high16 v12, 0x42800000    # 64.0f

    invoke-virtual {v5, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/16 v26, 0x0

    const/high16 v28, 0x43070000    # 135.0f

    const/16 v30, 0x1

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v30}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "ui-inventory-decoding-small-button"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/high16 v35, 0x43070000    # 135.0f

    const/high16 v36, 0x42800000    # 64.0f

    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v36}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v5, v7, v10, v11, v10}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "grab_decrypted_pack_button"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    new-instance v9, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$35;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$35;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    invoke-direct {v5, v7, v8, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x42800000    # 64.0f

    invoke-virtual {v5, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v7, 0x43bf0000    # 382.0f

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/16 v20, 0x0

    const/high16 v21, 0x41c80000    # 25.0f

    const/high16 v22, 0x43070000    # 135.0f

    const/high16 v23, 0x41980000    # 19.0f

    const/16 v24, 0x1

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "ui-inventory-decoding-small-button"

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x43070000    # 135.0f

    const/high16 v12, 0x42800000    # 64.0f

    invoke-virtual/range {v7 .. v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v5, v6, v13, v14, v13}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "open_now"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v6, 0x43ba8000    # 373.0f

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3f0f5c29    # 0.56f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v4, 0x43580000    # 216.0f

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_5
    iget v8, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v8, :cond_14

    iget-object v8, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;

    aget-object v8, v8, v6

    iget-object v9, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->subcategoryType:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    sget-object v10, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->P_ENCRYPTED:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    if-ne v9, v10, :cond_8

    iget-object v9, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v9, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v9, :cond_8

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object/from16 v16, v5

    goto/16 :goto_b

    :cond_8
    const/high16 v9, 0x41f00000    # 30.0f

    add-float/2addr v9, v4

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getIconAlias()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v26

    new-instance v11, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    new-instance v12, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$36;

    invoke-direct {v12, v0, v9}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$36;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;F)V

    invoke-virtual {v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v22

    sget-object v23, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v24

    move-object/from16 v19, v11

    move-object/from16 v20, v26

    move-object/from16 v21, v12

    invoke-direct/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v12, 0x42400000    # 48.0f

    invoke-virtual {v11, v12, v12}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v12, 0x41000000    # 8.0f

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v11, v13, v12}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v27, 0x41980000    # 19.0f

    const/high16 v28, 0x40a00000    # 5.0f

    const/high16 v29, 0x42400000    # 48.0f

    const/high16 v30, 0x42400000    # 48.0f

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    invoke-direct {v12, v14, v14, v14, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v25, v11

    move-object/from16 v31, v12

    invoke-virtual/range {v25 .. v31}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setShadow(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFFLcom/badlogic/gdx/graphics/Color;)V

    const/high16 v12, 0x42a00000    # 80.0f

    const/high16 v13, 0x42800000    # 64.0f

    invoke-virtual {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    iput v9, v12, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->distanceY:F

    iput-object v11, v12, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->button:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->h0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getTitle()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x1e

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v8}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v11, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->subcategoryType:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    if-ne v11, v10, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v12}, Lcom/prineside/tdi2/managers/ProgressManager;->getEncryptedCasesCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v12}, Lcom/prineside/tdi2/managers/ProgressManager;->getMaxEncryptedCasesInInventory()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v11, 0x42500000    # 52.0f

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v11, 0x44400000    # 768.0f

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v12, 0x41000000    # 8.0f

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/4 v12, 0x6

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/high16 v9, 0x42700000    # 60.0f

    add-float/2addr v4, v9

    iget-object v9, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->subcategoryType:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    if-ne v9, v10, :cond_e

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_6
    iget-object v12, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v13, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v13, :cond_c

    iget-object v12, v12, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v12, [Lcom/prineside/tdi2/ItemStack;

    aget-object v12, v12, v9

    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v14

    if-ge v13, v14, :cond_b

    new-instance v14, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v15

    const/4 v11, 0x1

    invoke-direct {v14, v15, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    new-instance v11, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v11}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    rem-int/lit8 v15, v10, 0x6

    move-object/from16 v16, v5

    div-int/lit8 v5, v10, 0x6

    invoke-virtual {v11, v15, v5}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v14, v11}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    const/4 v15, 0x0

    invoke-virtual {v11, v5, v15}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/Item;I)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$37;

    invoke-direct {v5, v0, v14}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$37;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    add-int/lit8 v10, v10, 0x1

    rem-int/lit8 v11, v10, 0x6

    if-nez v11, :cond_a

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v16

    const/high16 v11, 0x44400000    # 768.0f

    goto :goto_7

    :cond_b
    move-object/from16 v16, v5

    add-int/lit8 v9, v9, 0x1

    const/high16 v11, 0x44400000    # 768.0f

    goto :goto_6

    :cond_c
    move-object/from16 v16, v5

    :goto_8
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getMaxEncryptedCasesInInventory()I

    move-result v5

    if-ge v10, v5, :cond_d

    new-instance v5, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v5}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    rem-int/lit8 v8, v10, 0x6

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_d
    int-to-float v5, v10

    const/high16 v8, 0x40c00000    # 6.0f

    div-float/2addr v5, v8

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v5

    goto :goto_a

    :cond_e
    move-object/from16 v16, v5

    iget-object v5, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v5, v5

    const/high16 v9, 0x40c00000    # 6.0f

    div-float/2addr v5, v9

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v5

    const/4 v9, 0x0

    :cond_f
    :goto_9
    mul-int/lit8 v10, v5, 0x6

    if-ge v9, v10, :cond_12

    new-instance v10, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v10}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    rem-int/lit8 v11, v9, 0x6

    invoke-virtual {v10, v11, v7}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    iget-object v11, v8, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v12, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v12, :cond_11

    iget-object v11, v11, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v11, [Lcom/prineside/tdi2/ItemStack;

    aget-object v11, v11, v9

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v12, v11, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v11}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v12

    sget-object v13, Lcom/prineside/tdi2/enums/ItemType;->CASE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v12, v13, :cond_10

    invoke-virtual {v11}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v12

    check-cast v12, Lcom/prineside/tdi2/items/CaseItem;

    iget-boolean v12, v12, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    if-nez v12, :cond_10

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setNotificationBubbleEnabled(Z)V

    :cond_10
    new-instance v12, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$38;

    invoke-direct {v12, v0, v11}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$38;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_11
    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v11, v9, 0x6

    if-nez v11, :cond_f

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto :goto_9

    :cond_12
    :goto_a
    if-nez v5, :cond_13

    const/4 v5, 0x1

    :cond_13
    int-to-float v5, v5

    const/high16 v8, 0x430c0000    # 140.0f

    mul-float v5, v5, v8

    add-float/2addr v4, v5

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v16

    goto/16 :goto_5

    :cond_14
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/high16 v5, 0x44500000    # 832.0f

    sub-float v12, v5, v4

    const/4 v4, 0x0

    cmpg-float v5, v12, v4

    if-gez v5, :cond_15

    const/4 v15, 0x0

    goto :goto_c

    :cond_15
    move v15, v12

    :goto_c
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x43000000    # 128.0f

    add-float/2addr v15, v4

    add-float/2addr v15, v3

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_12

    :cond_16
    const/4 v4, 0x6

    const/4 v2, 0x3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/ProgressManager;->getCraftingQueueItem(I)Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    move-result-object v5

    if-nez v5, :cond_17

    const/4 v2, 0x0

    const/4 v7, 0x6

    goto :goto_d

    :cond_17
    const/4 v2, 0x1

    const/4 v7, 0x3

    :goto_d
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const-string v8, "Inventory itemsScroll"

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    if-eqz v2, :cond_18

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/high16 v8, 0x43ef0000    # 478.0f

    int-to-float v10, v3

    const/high16 v11, 0x44500000    # 832.0f

    add-float/2addr v10, v11

    invoke-virtual {v5, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    goto :goto_e

    :cond_18
    const/high16 v11, 0x44500000    # 832.0f

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    int-to-float v8, v3

    add-float/2addr v8, v11

    invoke-virtual {v5, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    :goto_e
    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "gradient-top"

    invoke-virtual {v8, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    if-eqz v2, :cond_19

    const/high16 v13, 0x43ef0000    # 478.0f

    :cond_19
    invoke-virtual {v5, v13, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v8, 0x444a4000    # 809.0f

    int-to-float v3, v3

    add-float/2addr v8, v3

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v8, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "gradient-bottom"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v10, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v9, 0x43ef0000    # 478.0f

    const/high16 v10, 0x42c00000    # 96.0f

    invoke-virtual {v5, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->F()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_f
    iget v11, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v11, :cond_1f

    iget-object v11, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v11, [Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;

    aget-object v11, v11, v9

    const/high16 v12, 0x41f00000    # 30.0f

    add-float/2addr v12, v8

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getIconAlias()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v26

    new-instance v13, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    new-instance v14, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$27;

    invoke-direct {v14, v0, v12}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$27;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;F)V

    invoke-virtual {v11}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v22

    sget-object v23, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v24

    move-object/from16 v19, v13

    move-object/from16 v20, v26

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v13, v14, v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v14, 0x41800000    # 16.0f

    const/high16 v15, 0x41000000    # 8.0f

    invoke-virtual {v13, v14, v15}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v27, 0x41980000    # 19.0f

    const/high16 v28, 0x40a00000    # 5.0f

    const/high16 v29, 0x42400000    # 48.0f

    const/high16 v30, 0x42400000    # 48.0f

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x0

    const v14, 0x3e8f5c29    # 0.28f

    invoke-direct {v15, v6, v6, v6, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v25, v13

    move-object/from16 v31, v15

    invoke-virtual/range {v25 .. v31}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setShadow(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFFLcom/badlogic/gdx/graphics/Color;)V

    const/high16 v6, 0x42a00000    # 80.0f

    const/high16 v15, 0x42800000    # 64.0f

    invoke-virtual {v13, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;

    const/4 v14, 0x0

    invoke-direct {v6, v0, v14}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V

    iput v12, v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->distanceY:F

    iput-object v13, v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryButtonConfig;->button:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->h0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v11}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getTitle()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x1e

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v6, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v11}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v12, 0x42500000    # 52.0f

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v12, 0x43000000    # 128.0f

    int-to-float v13, v7

    mul-float v12, v12, v13

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v12, 0x41000000    # 8.0f

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/high16 v6, 0x42700000    # 60.0f

    add-float/2addr v8, v6

    iget-object v6, v11, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v6, v6

    div-float/2addr v6, v13

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v6

    move v13, v10

    const/4 v10, 0x0

    :goto_10
    mul-int v14, v6, v7

    if-ge v10, v14, :cond_1e

    new-instance v14, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v14}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    rem-int v12, v10, v7

    invoke-virtual {v14, v12, v13}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    iget-object v12, v11, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v15, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v10, v15, :cond_1c

    iget-object v12, v12, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v12, [Lcom/prineside/tdi2/ItemStack;

    aget-object v12, v12, v10

    iget-object v15, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v15, v12, v14}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v15

    move-object/from16 v17, v5

    const/4 v5, 0x0

    invoke-virtual {v14, v15, v5}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/Item;I)V

    iget-boolean v15, v12, Lcom/prineside/tdi2/ItemStack;->covered:Z

    if-eqz v15, :cond_1a

    const v15, 0x3ee147ae    # 0.44f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v14, v5, v5, v5, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_1a
    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    if-eqz v5, :cond_1b

    iget v5, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->P:I

    const/4 v15, -0x1

    if-ne v5, v15, :cond_1b

    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    iget-object v15, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v15}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setSelected(Z)V

    iput-object v12, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    :cond_1b
    new-instance v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$28;

    invoke-direct {v5, v0, v12}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$28;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_11

    :cond_1c
    move-object/from16 v17, v5

    :goto_11
    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    add-int/lit8 v10, v10, 0x1

    rem-int v12, v10, v7

    if-nez v12, :cond_1d

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_1d
    move-object/from16 v5, v17

    const/high16 v12, 0x41000000    # 8.0f

    const/high16 v15, 0x42800000    # 64.0f

    goto :goto_10

    :cond_1e
    move-object/from16 v17, v5

    int-to-float v5, v6

    const/high16 v6, 0x430c0000    # 140.0f

    mul-float v5, v5, v6

    add-float/2addr v8, v5

    add-int/lit8 v9, v9, 0x1

    move v10, v13

    move-object/from16 v5, v17

    const/high16 v6, 0x41c00000    # 24.0f

    goto/16 :goto_f

    :cond_1f
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/high16 v5, 0x44500000    # 832.0f

    add-float/2addr v3, v5

    sub-float v10, v3, v8

    const/4 v5, 0x0

    cmpg-float v6, v10, v5

    if-gez v6, :cond_20

    const/4 v10, 0x0

    :cond_20
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43000000    # 128.0f

    add-float/2addr v10, v5

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_21

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v4, 0x43af0000    # 350.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v3, 0x43ed8000    # 475.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42500000    # 52.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43af0000    # 350.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "crafting_queue"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42500000    # 52.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    const-string v6, "00:00:00"

    invoke-direct {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42500000    # 52.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x43af0000    # 350.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Q()V

    :cond_21
    :goto_12
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_22

    iget-boolean v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->g0:Z

    if-nez v2, :cond_22

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "too_many_items_sell_advise"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-trash-bin-dollar"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/enums/StaticSoundType;->WARNING:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->g0:Z

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->U()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->I()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v8, 0x0

    :goto_13
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n0:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v3, :cond_25

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v8

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->L:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ui/actors/ItemCell;

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setSelected(Z)V

    :cond_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_24
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m0:Lcom/prineside/tdi2/ItemStack;

    if-eqz v2, :cond_25

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->setSelectedItem(Lcom/prineside/tdi2/ItemStack;)V

    :cond_25
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->layout()V

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    if-eqz v2, :cond_26

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollY(F)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->updateVisualScroll()V

    :cond_26
    return-void
.end method
