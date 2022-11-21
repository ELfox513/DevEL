.class public Lcom/prineside/tdi2/screens/MoneyScreen;
.super Lcom/prineside/tdi2/Screen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;,
        Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;,
        Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;,
        Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;
    }
.end annotation


# static fields
.field public static p:[F

.field public static q:[F

.field public static final r:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public a:Lcom/badlogic/gdx/Screen;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public g:F

.field public final h:Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;

.field public final i:Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;

.field public j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public k:J

.field public l:J

.field public m:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/tdi2/screens/MoneyScreen;->p:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/prineside/tdi2/screens/MoneyScreen;->q:[F

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/screens/MoneyScreen;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x40a00000    # 5.0f
        0x0
        0x43210000    # 161.0f
        0x44138000    # 590.0f
        0x43260000    # 166.0f
        0x44138000    # 590.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x43260000    # 166.0f
        0x44138000    # 590.0f
        0x43210000    # 161.0f
        0x44138000    # 590.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/badlogic/gdx/Screen;)V
    .locals 16

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x64

    const-string v3, "MoneyScreen main"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x65

    const-string v3, "MoneyScreen loading overlay"

    const/4 v10, 0x1

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v0, Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;

    const/4 v11, 0x0

    invoke-direct {v0, v9, v11}, Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/screens/MoneyScreen$1;)V

    iput-object v0, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->h:Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;

    invoke-direct {v0, v9, v11}, Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/screens/MoneyScreen$1;)V

    iput-object v0, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->i:Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->m:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->n:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->SHOP_PURCHASE_BONUS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v12, v0, v1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPapersHourBasePrice()I

    move-result v13

    iget-object v14, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->m:Lcom/badlogic/gdx/utils/Array;

    new-instance v15, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/Config$ProductId;->PACK_TINY:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v3

    int-to-float v0, v13

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    const-string v2, "money-pack-tiny"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x15

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v14, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->m:Lcom/badlogic/gdx/utils/Array;

    new-instance v15, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/Config$ProductId;->PACK_SMALL:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v13, 0x3

    int-to-float v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    const-string v2, "money-pack-small"

    const/4 v6, 0x1

    const/16 v7, 0xa

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v14, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->m:Lcom/badlogic/gdx/utils/Array;

    new-instance v15, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/Config$ProductId;->PACK_MEDIUM:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v13, 0xa

    int-to-float v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    const-string v2, "money-pack-medium"

    const/4 v6, 0x3

    const/16 v7, 0x14

    const/16 v8, 0x18

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v14, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->m:Lcom/badlogic/gdx/utils/Array;

    new-instance v15, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/Config$ProductId;->PACK_LARGE:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v13, 0x19

    int-to-float v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    const v1, 0x3eb33333    # 0.35f

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    const-string v2, "money-pack-large"

    const/16 v6, 0xa

    const/16 v7, 0x23

    const/16 v8, 0x1e

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v14, v0

    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v2, v0, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/pay/Transaction;

    invoke-virtual {v0}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v3, Lcom/prineside/tdi2/Config$ProductId;->PACK_MEDIUM:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/pay/Transaction;

    invoke-virtual {v0}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v3, Lcom/prineside/tdi2/Config$ProductId;->PACK_LARGE:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/pay/Transaction;

    invoke-virtual {v0}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v3, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_LARGE:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v14, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v14, :cond_4

    iget-object v15, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->m:Lcom/badlogic/gdx/utils/Array;

    new-instance v8, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;

    sget-object v1, Lcom/prineside/tdi2/Config$ProductId;->PACK_HUGE:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v13, v13, 0x32

    int-to-float v0, v13

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    const/16 v6, 0x19

    const/16 v7, 0x32

    const/16 v13, 0x24

    const-string v2, "money-pack-huge"

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v11, v8

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    iget-object v8, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->n:Lcom/badlogic/gdx/utils/Array;

    new-instance v11, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_TINY:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v0, v0, v12

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x15

    const-string v2, "accelerator-pack-tiny"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v8, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->n:Lcom/badlogic/gdx/utils/Array;

    new-instance v11, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_SMALL:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x42700000    # 60.0f

    mul-float v0, v0, v12

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    const/high16 v0, 0x41100000    # 9.0f

    mul-float v0, v0, v12

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    const/16 v6, 0xf

    const/16 v7, 0x18

    const-string v2, "accelerator-pack-small"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v8, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->n:Lcom/badlogic/gdx/utils/Array;

    new-instance v11, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_MEDIUM:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x43480000    # 200.0f

    mul-float v0, v0, v12

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    const/high16 v0, 0x428c0000    # 70.0f

    mul-float v0, v0, v12

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    const/16 v6, 0x23

    const/16 v7, 0x1e

    const-string v2, "accelerator-pack-medium"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v8, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->n:Lcom/badlogic/gdx/utils/Array;

    new-instance v11, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_LARGE:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float v0, v0, v12

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float v0, v0, v12

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    const/16 v6, 0x32

    const/16 v7, 0x24

    const-string v2, "accelerator-pack-large"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    if-eqz v14, :cond_5

    iget-object v8, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->n:Lcom/badlogic/gdx/utils/Array;

    new-instance v11, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_HUGE:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v12, v12, v0

    invoke-static {v12}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    invoke-static {v12}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    const/16 v6, 0x64

    const/16 v7, 0x24

    const-string v2, "accelerator-pack-huge"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->continuePlayingMenuMusicTrack()V

    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->a:Lcom/badlogic/gdx/Screen;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager;->hideAllComponents()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager;->setAsInputHandler()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->resourcesAndMoney:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    invoke-virtual {v0, v10}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->inventoryOverlay:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {v0, v10}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->hide(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->screenTitle:Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "money_screen_title"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-money"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->backButton:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-virtual {v0, v10}, Lcom/prineside/tdi2/ui/shared/BackButton;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/BackButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/screens/MoneyScreen$1;

    invoke-direct {v1, v9}, Lcom/prineside/tdi2/screens/MoneyScreen$1;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/BackButton;->setClickHandler(Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/shared/BackButton;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v1, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->h:Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->addListener(Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, v9, Lcom/prineside/tdi2/screens/MoneyScreen;->i:Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->addListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MoneyScreen;->p(Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MoneyScreen;->o(Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/screens/MoneyScreen;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MoneyScreen;->n()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/MoneyScreen;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/screens/MoneyScreen;)J
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->k:J

    return-wide v0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/screens/MoneyScreen;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->k:J

    return-wide p1
.end method

.method public static synthetic g(Lcom/prineside/tdi2/screens/MoneyScreen;)J
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->l:J

    return-wide v0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/screens/MoneyScreen;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->l:J

    return-wide p1
.end method

.method public static synthetic i(Lcom/prineside/tdi2/screens/MoneyScreen;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MoneyScreen;->r()V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/screens/MoneyScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    return-object p0
.end method

.method private synthetic o(Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/MoneyScreen;->q(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic p(Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/MoneyScreen;->q(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->h:Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->removeListener(Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->i:Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->removeListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V

    return-void
.end method

.method public draw(F)V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "menu_background"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isEscButtonJustPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MoneyScreen;->n()V

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->g:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->g:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MoneyScreen;->s()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->g:F

    :cond_1
    return-void
.end method

.method public final k(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 7

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    invoke-direct {v6, p1, v0, p2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-virtual {v6, p1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelShadowEnabled(Z)V

    const/high16 p1, 0x43220000    # 162.0f

    const/high16 p2, 0x42b00000    # 88.0f

    invoke-virtual {v6, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "ui-money-screen-button"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43220000    # 162.0f

    const/high16 v5, 0x42b00000    # 88.0f

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "ui-money-screen-button-edge"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x421c0000    # 39.0f

    const/high16 v3, 0x431d0000    # 157.0f

    const/high16 v4, 0x41a80000    # 21.0f

    const/4 v5, 0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const p1, 0x43de8000    # 445.0f

    const/high16 p2, 0x41300000    # 11.0f

    invoke-virtual {v6, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    return-object v6
.end method

.method public final l(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/prineside/tdi2/screens/MoneyScreen;->m(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;F)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    return-object p1
.end method

.method public final m(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;F)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 16

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/16 v2, 0x8

    new-array v3, v2, [F

    if-eqz p1, :cond_0

    sget-object v4, Lcom/prineside/tdi2/screens/MoneyScreen;->p:[F

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/prineside/tdi2/screens/MoneyScreen;->q:[F

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 v4, 0x3

    aget v5, v3, v4

    add-float v5, v5, p3

    aput v5, v3, v4

    const/4 v5, 0x5

    aget v6, v3, v5

    add-float v6, v6, p3

    aput v6, v3, v5

    new-instance v6, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x292929ff

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-direct {v6, v7, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v3, 0x7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    const v11, 0x383838ff

    const/4 v12, 0x0

    if-eqz p1, :cond_1

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v15, v2, [F

    fill-array-data v15, :array_0

    invoke-direct {v13, v14, v15}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v14, 0x431c0000    # 156.0f

    add-float v14, p3, v14

    invoke-virtual {v13, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v15, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v2, v2, [F

    aput v12, v2, v1

    aput v12, v2, v10

    aput v12, v2, v9

    aput v14, v2, v4

    const/high16 v1, 0x40c00000    # 6.0f

    aput v1, v2, v8

    aput v14, v2, v5

    aput v6, v2, v7

    aput v12, v2, v3

    invoke-direct {v13, v15, v2}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v13, v12, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_1

    :cond_1
    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v15, v2, [F

    fill-array-data v15, :array_1

    invoke-direct {v13, v14, v15}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v14, 0x43200000    # 160.0f

    add-float v14, p3, v14

    invoke-virtual {v13, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v2, v2, [F

    aput v12, v2, v1

    aput v12, v2, v10

    aput v12, v2, v9

    const/high16 v1, 0x43250000    # 165.0f

    add-float v1, p3, v1

    aput v1, v2, v4

    const/high16 v1, 0x40a00000    # 5.0f

    aput v1, v2, v8

    const/high16 v1, 0x43240000    # 164.0f

    add-float v1, p3, v1

    aput v1, v2, v5

    aput v6, v2, v7

    aput v12, v2, v3

    invoke-direct {v13, v14, v2}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v13, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_1
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v2, 0x43000000    # 128.0f

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x41980000    # 19.0f

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, p3

    add-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x40c00000    # 6.0f
        0x44138000    # 590.0f
        0x41200000    # 10.0f
        0x44134000    # 589.0f
        0x41000000    # 8.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x40c00000    # 6.0f
        0x44138000    # 590.0f
        0x3f800000    # 1.0f
        0x44138000    # 590.0f
        0x0
    .end array-data
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MoneyScreen;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->a:Lcom/badlogic/gdx/Screen;

    instance-of v1, v0, Lcom/prineside/tdi2/screens/AboutScreen;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToAboutScreen()V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToLevelSelectScreen()V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToCustomMapSelectScreen()V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToResearchesScreen()V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;

    if-eqz v1, :cond_4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToSettingsScreen()V

    goto :goto_0

    :cond_4
    instance-of v0, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToStatisticsScreen()V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMainMenu()V

    :goto_0
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/pay/PurchaseManager;->purchase(Ljava/lang/String;)V

    return-void
.end method

.method public final r()V
    .locals 31

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollY()F

    move-result v0

    move v9, v0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoneyScreen"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager;->getRegularLayerWidth()F

    move-result v0

    iget-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-object v11, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43000000    # 128.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/screens/MoneyScreen;->p:[F

    invoke-direct {v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getLootBoostTimeLeft()F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_1

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x26371dff

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x1c2617ff

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x1e2918ff

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x283b1eff

    invoke-direct {v6, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/16 v4, 0x33

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "loot-token"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x43000000    # 128.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v15, 0x41800000    # 16.0f

    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {v1, v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Item$D;->LOOT_BOOST:Lcom/prineside/tdi2/items/LootBoostItem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/items/LootBoostItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x41b80000    # 23.0f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x42e00000    # 112.0f

    const/high16 v8, 0x431e0000    # 158.0f

    invoke-virtual {v1, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v17, Lcom/prineside/tdi2/Item$D;->LOOT_BOOST:Lcom/prineside/tdi2/items/LootBoostItem;

    invoke-virtual/range {v17 .. v17}, Lcom/prineside/tdi2/items/LootBoostItem;->getDescription()Ljava/lang/CharSequence;

    move-result-object v14

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v1, v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x43910000    # 290.0f

    const/high16 v14, 0x42a00000    # 80.0f

    invoke-virtual {v1, v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x24

    invoke-virtual {v5, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    const-string v14, ""

    invoke-direct {v1, v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v14, 0x10

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v5, 0x43d48000    # 425.0f

    const/high16 v14, 0x41c80000    # 25.0f

    invoke-virtual {v1, v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x43110000    # 145.0f

    const/high16 v14, 0x41e00000    # 28.0f

    invoke-virtual {v1, v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43260000    # 166.0f

    const v14, 0x44138000    # 590.0f

    invoke-virtual {v0, v14, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/prineside/tdi2/screens/MoneyScreen;->q:[F

    invoke-direct {v13, v2, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    if-lez v0, :cond_2

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x4e3115ff    # 7.4275219E8f

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v14, 0x2d1d0eff

    invoke-direct {v5, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x33210fff

    invoke-direct {v14, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x553516ff

    invoke-direct {v12, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v13, v2, v5, v14, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/16 v5, 0x33

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v13, v2}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "rarity-token"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v5, 0x43000000    # 128.0f

    const/high16 v6, 0x43000000    # 128.0f

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/items/RarityBoostItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x1e

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x41b80000    # 23.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x42e00000    # 112.0f

    invoke-virtual {v2, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/items/RarityBoostItem;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x15

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v2, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x43910000    # 290.0f

    const/high16 v12, 0x42a00000    # 80.0f

    invoke-virtual {v2, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "x"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x24

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v2, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 v6, 0x10

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v6, 0x43d48000    # 425.0f

    const/high16 v12, 0x41c80000    # 25.0f

    invoke-virtual {v2, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x43110000    # 145.0f

    const/high16 v12, 0x41e00000    # 28.0f

    invoke-virtual {v2, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    if-lez v0, :cond_3

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_3
    const v0, 0x3f0f5c29    # 0.56f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v6, v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_3
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43260000    # 166.0f

    const v2, 0x44138000    # 590.0f

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "shop_tokens_info"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v1, 0x3f0f5c29    # 0.56f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->isPurchasesEnabled()Z

    move-result v0

    const/16 v2, 0x18

    if-nez v0, :cond_4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "money-pack-double-gain"

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    const/high16 v6, 0x42000000    # 32.0f

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v0, v6}, Lcom/prineside/tdi2/screens/MoneyScreen;->m(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;F)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "double_gain_title"

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v12}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v12}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainPermanent()Z

    move-result v12

    if-nez v12, :cond_5

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v12}, Lcom/prineside/tdi2/managers/ProgressManager;->getTempDoubleGainDurationLeft()I

    move-result v12

    invoke-static {v12}, Lcom/prineside/tdi2/items/DoubleGainShardItem;->getAcceleratorsForDuration(I)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " +<@time-accelerator>"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x1e

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v1, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x41b80000    # 23.0f

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-virtual {v1, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x43100000    # 144.0f

    invoke-virtual {v1, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "double_gain_description"

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x15

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v1, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v6, 0x43898000    # 275.0f

    const/high16 v12, 0x42e00000    # 112.0f

    invoke-virtual {v1, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "double_gain_permanent_hint"

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v1, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v6, 0x43ea8000    # 469.0f

    const/high16 v12, 0x43150000    # 149.0f

    invoke-virtual {v1, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-virtual {v1, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainPermanent()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "enabled"

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x1e

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v1, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v6, 0x43d48000    # 425.0f

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-virtual {v1, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x43110000    # 145.0f

    const/high16 v12, 0x41e00000    # 28.0f

    invoke-virtual {v1, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->isPurchasesEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_DOUBLE_GAIN_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getDynamicSetting(Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v4, v1, Lcom/prineside/tdi2/managers/PurchaseManager;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    sget-object v6, Lcom/prineside/tdi2/Config$ProductId;->DOUBLE_GAIN:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/badlogic/gdx/pay/InformationFinder;->getInformation(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/pay/Information;->getLocalPricing()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/prineside/tdi2/screens/MoneyScreen$2;

    invoke-direct {v4, v7}, Lcom/prineside/tdi2/screens/MoneyScreen$2;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    invoke-virtual {v7, v1, v4}, Lcom/prineside/tdi2/screens/MoneyScreen;->k(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_7
    :goto_4
    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43460000    # 198.0f

    const v4, 0x44138000    # 590.0f

    invoke-virtual {v0, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_8
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->rewardingAdsAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "rewarding-ad"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    const/high16 v1, 0x42000000    # 32.0f

    const/4 v4, 0x1

    invoke-virtual {v7, v4, v0, v1}, Lcom/prineside/tdi2/screens/MoneyScreen;->m(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;F)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "rewarding_ads_title"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x1e

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x41b80000    # 23.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v1, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x43100000    # 144.0f

    invoke-virtual {v1, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "rewarding_ads_description"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v4, 0x43898000    # 275.0f

    const/high16 v5, 0x42e00000    # 112.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v6, Lcom/prineside/tdi2/enums/StatisticsType;->RVW:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v12

    double-to-int v1, v12

    add-int/2addr v1, v4

    invoke-virtual {v5, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getRegularRewardingAdItems(I)Lcom/prineside/tdi2/IssuedItems;

    move-result-object v1

    const/4 v4, 0x0

    :goto_5
    iget-object v5, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_a

    const/4 v6, 0x5

    if-ne v4, v6, :cond_9

    goto :goto_6

    :cond_9
    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ItemStack;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v12, 0x1

    invoke-virtual {v5, v6, v12}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    int-to-float v6, v4

    const/high16 v12, 0x42600000    # 56.0f

    mul-float v6, v6, v12

    add-float/2addr v6, v8

    const/high16 v12, 0x42280000    # 42.0f

    invoke-virtual {v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v12, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v12, v12, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v12, [Lcom/prineside/tdi2/ItemStack;

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v12

    int-to-double v12, v12

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x12

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v5, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v12, 0x41b00000    # 22.0f

    invoke-virtual {v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x42400000    # 48.0f

    invoke-virtual {v5, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v1, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v4, 0x43d48000    # 425.0f

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v4, 0x43110000    # 145.0f

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v4, 0x3f0f5c29    # 0.56f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v5, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "<@icon-triangle-right>"

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v4, Lcom/prineside/tdi2/screens/MoneyScreen$3;

    invoke-direct {v4, v7}, Lcom/prineside/tdi2/screens/MoneyScreen$3;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    invoke-virtual {v7, v1, v4}, Lcom/prineside/tdi2/screens/MoneyScreen;->k(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object v1

    iput-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v4, v5, v6, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43460000    # 198.0f

    const v4, 0x44138000    # 590.0f

    invoke-virtual {v0, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_b
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result v0

    const/16 v1, 0x8

    const v12, 0x3e8f5c29    # 0.28f

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v13, 0x42c00000    # 96.0f

    if-eqz v0, :cond_c

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainPermanent()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "temp_double_gain_active"

    invoke-virtual {v6, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    invoke-direct {v5, v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getTempDoubleGainDurationLeft()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->timePassed(IZZ)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    invoke-direct {v6, v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v6, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x0

    invoke-direct {v14, v3, v3, v3, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    invoke-direct {v6, v14, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v5, v6}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v3, 0x43ff0000    # 510.0f

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v3, -0x3f800000    # -4.0f

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_c
    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "lucky-shot"

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v7, v3, v0}, Lcom/prineside/tdi2/screens/MoneyScreen;->l(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "lucky_shot"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x1e

    invoke-virtual {v6, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v3, 0x41b80000    # 23.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v5, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-virtual {v5, v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "lucky-shot-token"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v5, 0x42400000    # 48.0f

    const/high16 v6, 0x42400000    # 48.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x42300000    # 44.0f

    invoke-virtual {v3, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    invoke-virtual {v6, v14}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x1e

    invoke-virtual {v6, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x42400000    # 48.0f

    const/high16 v6, 0x42400000    # 48.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x43540000    # 212.0f

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "<@icon-lucky-wheel> Show"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v5, Lcom/prineside/tdi2/screens/MoneyScreen$4;

    invoke-direct {v5, v7}, Lcom/prineside/tdi2/screens/MoneyScreen$4;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    invoke-virtual {v7, v3, v5}, Lcom/prineside/tdi2/screens/MoneyScreen;->k(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5, v6, v14, v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v3, 0x43260000    # 166.0f

    const v5, 0x44138000    # 590.0f

    invoke-virtual {v0, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->rewardingAdsAvailable()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "shop_ad_bars_title"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x24

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, 0x437e0000    # 254.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x41d80000    # 27.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "shop_ad_bars_description"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x43490000    # 201.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x43fa0000    # 500.0f

    const/high16 v6, 0x41d80000    # 27.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainPermanent()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_e

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "shop_ad_bars_hint_without_double_gain"

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v8, 0x423c0000    # 47.0f

    invoke-virtual {v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const v6, 0x4419c000    # 615.0f

    const/high16 v8, 0x433f0000    # 191.0f

    invoke-virtual {v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v6, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_8

    :cond_e
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "shop_ad_bars_hint_with_double_gain"

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v8, 0x423c0000    # 47.0f

    invoke-virtual {v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const v6, 0x44624000    # 905.0f

    const/high16 v8, 0x433f0000    # 191.0f

    invoke-virtual {v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v6, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_8
    new-instance v5, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    invoke-direct {v5, v6, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v8, 0x42de0000    # 111.0f

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v8, 0x44134000    # 589.0f

    invoke-virtual {v5, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x242424ff

    invoke-direct {v8, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v5, v5, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I

    int-to-float v5, v5

    const/high16 v8, 0x43fa0000    # 500.0f

    div-float/2addr v5, v8

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v13, v5, v8

    if-lez v13, :cond_f

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_f
    new-instance v8, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v13, v1, [F

    const/high16 v24, 0x40a00000    # 5.0f

    const/16 v19, 0x0

    aput v24, v13, v19

    const/16 v16, 0x0

    const/16 v21, 0x1

    aput v16, v13, v21

    const/16 v22, 0x2

    aput v16, v13, v22

    const/16 v24, 0x3

    aput v4, v13, v24

    const/16 v24, 0x4

    const/high16 v25, 0x44120000    # 584.0f

    mul-float v5, v5, v25

    aput v5, v13, v24

    const/16 v24, 0x5

    aput v4, v13, v24

    const/16 v24, 0x6

    const/high16 v25, 0x40a00000    # 5.0f

    add-float v5, v5, v25

    aput v5, v13, v24

    const/16 v24, 0x7

    const/4 v14, 0x0

    aput v14, v13, v24

    invoke-direct {v8, v6, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v13, 0x42de0000    # 111.0f

    invoke-virtual {v8, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v8, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v13, -0x2f88fb01

    invoke-direct {v5, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "shop-ad-bar-reflection"

    invoke-virtual {v8, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v8, 0x42de0000    # 111.0f

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v8, 0x44134000    # 589.0f

    invoke-virtual {v5, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v13, v13, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " / "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x1f4

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v5, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v5, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x43ee0000    # 476.0f

    const/high16 v13, 0x42da0000    # 109.0f

    invoke-virtual {v5, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v13, v13, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " / "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x1f4

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v5, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v5, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x43ed0000    # 474.0f

    const/high16 v13, 0x42de0000    # 111.0f

    invoke-virtual {v5, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v8, v1, [F

    fill-array-data v8, :array_2

    invoke-direct {v5, v6, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v8, 0x41f80000    # 31.0f

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v8, 0x44134000    # 589.0f

    invoke-virtual {v5, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x242424ff

    invoke-direct {v8, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v5, v5, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForLuckyShot:I

    int-to-float v5, v5

    const/high16 v8, 0x41a00000    # 20.0f

    div-float/2addr v5, v8

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v13, v5, v8

    if-lez v13, :cond_10

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_10
    new-instance v8, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v13, v1, [F

    const/high16 v14, 0x40a00000    # 5.0f

    const/16 v19, 0x0

    aput v14, v13, v19

    const/4 v14, 0x0

    const/16 v16, 0x1

    aput v14, v13, v16

    const/16 v16, 0x2

    aput v14, v13, v16

    const/4 v14, 0x3

    aput v4, v13, v14

    const/4 v14, 0x4

    const/high16 v24, 0x44120000    # 584.0f

    mul-float v5, v5, v24

    aput v5, v13, v14

    const/4 v14, 0x5

    aput v4, v13, v14

    const/4 v14, 0x6

    const/high16 v24, 0x40a00000    # 5.0f

    add-float v5, v5, v24

    aput v5, v13, v14

    const/4 v14, 0x7

    const/4 v15, 0x0

    aput v15, v13, v14

    invoke-direct {v8, v6, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v13, 0x41f80000    # 31.0f

    invoke-virtual {v8, v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v8, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v13, -0x6f6f6f01

    invoke-direct {v5, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "shop-ad-bar-reflection"

    invoke-virtual {v8, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v8, 0x41f80000    # 31.0f

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v8, 0x44134000    # 589.0f

    invoke-virtual {v5, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v13, v13, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForLuckyShot:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " / "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v5, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v5, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x43ee0000    # 476.0f

    const/high16 v13, 0x41e80000    # 29.0f

    invoke-virtual {v5, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v13, v13, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForLuckyShot:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " / "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v5, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v5, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x43ed0000    # 474.0f

    const/high16 v8, 0x41f80000    # 31.0f

    invoke-virtual {v5, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v4, 0x10

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v5, v1, [F

    fill-array-data v5, :array_3

    invoke-direct {v4, v6, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x3e0f5c29    # 0.14f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v5, v13, v13, v13, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, 0x41f80000    # 31.0f

    const/high16 v8, 0x433e0000    # 190.0f

    invoke-virtual {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x44580000    # 864.0f

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "double-gain-shard"

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v5, 0x441b8000    # 622.0f

    const/high16 v8, 0x42c60000    # 99.0f

    invoke-virtual {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v4, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    if-eqz v3, :cond_11

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v8, v8, v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_11
    const v8, 0x3e99999a    # 0.3f

    if-nez v3, :cond_12

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v13, v13, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I

    const/16 v14, 0x1f4

    if-lt v13, v14, :cond_12

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v14, v1, [F

    fill-array-data v14, :array_4

    invoke-direct {v13, v6, v14}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    const/high16 v1, 0x3f800000    # 1.0f

    const v15, 0x3f47ae14    # 0.78f

    invoke-virtual {v14, v1, v1, v1, v15}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    const v14, 0x44184000    # 609.0f

    const/high16 v12, 0x42b80000    # 92.0f

    invoke-virtual {v13, v14, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v12, 0x437d0000    # 253.0f

    const/high16 v14, 0x42980000    # 76.0f

    invoke-virtual {v13, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-static {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v12

    invoke-static {v15, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v13, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v14, 0x42c00000    # 96.0f

    invoke-direct {v1, v14, v12}, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;-><init>(FLcom/badlogic/gdx/graphics/Color;)V

    const v12, 0x44178000    # 606.0f

    const/high16 v15, 0x42a60000    # 83.0f

    invoke-virtual {v1, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/screens/MoneyScreen$5;

    invoke-direct {v1, v7}, Lcom/prineside/tdi2/screens/MoneyScreen$5;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    invoke-virtual {v13, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_12
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "double_gain_title"

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v12, 0x0

    aput-object v14, v13, v12

    const-string v12, "n_weeks"

    invoke-virtual {v1, v12, v13}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v4, v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v1, 0x43200000    # 160.0f

    const/high16 v12, 0x42800000    # 64.0f

    invoke-virtual {v4, v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v1, 0x442f8000    # 702.0f

    const/high16 v12, 0x42c60000    # 99.0f

    invoke-virtual {v4, v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    if-eqz v3, :cond_13

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    const v13, 0x3e8f5c29    # 0.28f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v12, v14, v14, v14, v13}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_13
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "lucky-shot-token"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v12, 0x441b8000    # 622.0f

    const/high16 v13, 0x41980000    # 19.0f

    invoke-virtual {v4, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v12, 0x42800000    # 64.0f

    invoke-virtual {v4, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    if-eqz v3, :cond_14

    const v12, 0x3e8f5c29    # 0.28f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v4, v13, v13, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_14
    if-nez v3, :cond_15

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v12, v12, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForLuckyShot:I

    const/16 v13, 0x14

    if-lt v12, v13, :cond_15

    new-instance v12, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v13, 0x8

    new-array v14, v13, [F

    fill-array-data v14, :array_5

    invoke-direct {v12, v6, v14}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    const v14, 0x3f47ae14    # 0.78f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v13, v15, v15, v15, v14}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    const v13, 0x44184000    # 609.0f

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v12, v13, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v2, 0x437d0000    # 253.0f

    const/high16 v13, 0x42980000    # 76.0f

    invoke-virtual {v12, v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-static {v15, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {v14, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v14, 0x42c00000    # 96.0f

    invoke-direct {v2, v14, v13}, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;-><init>(FLcom/badlogic/gdx/graphics/Color;)V

    const v13, 0x44178000    # 606.0f

    const/high16 v15, 0x40400000    # 3.0f

    invoke-virtual {v2, v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/screens/MoneyScreen$6;

    invoke-direct {v2, v7}, Lcom/prineside/tdi2/screens/MoneyScreen$6;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_15
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "lucky_shot"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nx2"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v4, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v2, 0x43200000    # 160.0f

    const/high16 v12, 0x42800000    # 64.0f

    invoke-virtual {v4, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v2, 0x442f8000    # 702.0f

    const/high16 v12, 0x41980000    # 19.0f

    invoke-virtual {v4, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v12, -0x27272701

    invoke-direct {v2, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    if-eqz v3, :cond_16

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const v12, 0x3e8f5c29    # 0.28f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v2, v13, v13, v13, v12}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_16
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "time-accelerator"

    invoke-virtual {v4, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v4, 0x44644000    # 913.0f

    const/high16 v12, 0x42c60000    # 99.0f

    invoke-virtual {v2, v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    if-nez v3, :cond_17

    const v4, 0x3e8f5c29    # 0.28f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v2, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_17
    if-eqz v3, :cond_18

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v4, v4, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I

    const/16 v12, 0x1f4

    if-lt v4, v12, :cond_18

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v12, 0x8

    new-array v13, v12, [F

    fill-array-data v13, :array_6

    invoke-direct {v4, v6, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    const v13, 0x3f47ae14    # 0.78f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v12, v14, v14, v14, v13}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    const v12, 0x44614000    # 901.0f

    const/high16 v15, 0x42b80000    # 92.0f

    invoke-virtual {v4, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v12, 0x437d0000    # 253.0f

    const/high16 v15, 0x42980000    # 76.0f

    invoke-virtual {v4, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-static {v14, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v12

    invoke-static {v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v12

    invoke-static {v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    sget-object v12, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v14, 0x42c00000    # 96.0f

    invoke-direct {v12, v14, v13}, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;-><init>(FLcom/badlogic/gdx/graphics/Color;)V

    const v13, 0x44604000    # 897.0f

    const/high16 v15, 0x42a60000    # 83.0f

    invoke-virtual {v12, v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v12, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/prineside/tdi2/screens/MoneyScreen$7;

    invoke-direct {v12, v7}, Lcom/prineside/tdi2/screens/MoneyScreen$7;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_18
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "item_title_ACCELERATOR"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nx200"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v4, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v2, 0x43200000    # 160.0f

    const/high16 v12, 0x42800000    # 64.0f

    invoke-virtual {v4, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v2, 0x44784000    # 993.0f

    const/high16 v12, 0x42c60000    # 99.0f

    invoke-virtual {v4, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    if-nez v3, :cond_19

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v2, 0x3e8f5c29    # 0.28f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v1, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_19
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "lucky-shot-token"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v2, 0x44644000    # 913.0f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    if-nez v3, :cond_1a

    const v2, 0x3e8f5c29    # 0.28f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_1a
    if-eqz v3, :cond_1b

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v2, v2, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForLuckyShot:I

    const/16 v4, 0x14

    if-lt v2, v4, :cond_1b

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_7

    invoke-direct {v2, v6, v4}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const v6, 0x3f47ae14    # 0.78f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v4, v12, v12, v12, v6}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    const v4, 0x44614000    # 901.0f

    const/high16 v13, 0x41400000    # 12.0f

    invoke-virtual {v2, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x437d0000    # 253.0f

    const/high16 v13, 0x42980000    # 76.0f

    invoke-virtual {v2, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-static {v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    invoke-static {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v8, 0x42c00000    # 96.0f

    invoke-direct {v4, v8, v6}, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;-><init>(FLcom/badlogic/gdx/graphics/Color;)V

    const v6, 0x44604000    # 897.0f

    const/high16 v12, 0x40400000    # 3.0f

    invoke-virtual {v4, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/screens/MoneyScreen$8;

    invoke-direct {v4, v7}, Lcom/prineside/tdi2/screens/MoneyScreen$8;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_1b
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "lucky_shot"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nx5"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x18

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v1, 0x43200000    # 160.0f

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v2, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v1, 0x44784000    # 993.0f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v2, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v4, -0x27272701

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    if-nez v3, :cond_1c

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v3, 0x3e8f5c29    # 0.28f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1c
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x44960000    # 1200.0f

    const v2, 0x438e8000    # 285.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v5, 0x41a00000    # 20.0f

    goto :goto_9

    :cond_1d
    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :goto_9
    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/4 v8, 0x4

    new-array v12, v8, [Lcom/prineside/tdi2/enums/CaseType;

    sget-object v0, Lcom/prineside/tdi2/enums/CaseType;->BLUE:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v1, 0x0

    aput-object v0, v12, v1

    sget-object v0, Lcom/prineside/tdi2/enums/CaseType;->PURPLE:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v1, 0x1

    aput-object v0, v12, v1

    sget-object v0, Lcom/prineside/tdi2/enums/CaseType;->ORANGE:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v1, 0x2

    aput-object v0, v12, v1

    const/4 v0, 0x3

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->CYAN:Lcom/prineside/tdi2/enums/CaseType;

    aput-object v1, v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_a
    if-ge v13, v8, :cond_2e

    aget-object v15, v12, v13

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v15, v1, v1}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v6

    if-eqz v14, :cond_1f

    const/4 v0, 0x3

    if-ne v14, v0, :cond_1e

    goto :goto_b

    :cond_1e
    const/4 v0, 0x0

    goto :goto_c

    :cond_1f
    :goto_b
    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v6}, Lcom/prineside/tdi2/items/CaseItem;->getIconDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/prineside/tdi2/screens/MoneyScreen;->l(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v4

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6}, Lcom/prineside/tdi2/items/CaseItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v1, 0x41b80000    # 23.0f

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v1, 0x42e00000    # 112.0f

    const/high16 v2, 0x431e0000    # 158.0f

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/items/CaseItem;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v1, 0x42380000    # 46.0f

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v6}, Lcom/prineside/tdi2/items/CaseItem;->getItemRarityChances()[I

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_d
    if-ge v5, v3, :cond_21

    move/from16 v23, v3

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v26

    aget v26, v1, v26

    if-lez v26, :cond_20

    move-object/from16 v26, v2

    int-to-float v2, v8

    const/high16 v27, 0x42380000    # 46.0f

    mul-float v2, v2, v27

    move-object/from16 v27, v12

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move/from16 v28, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v29

    move-object/from16 v30, v11

    aget v11, v1, v29

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v29, v1

    const/16 v1, 0x15

    invoke-virtual {v11, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v12, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v1, 0x421c0000    # 39.0f

    invoke-virtual {v12, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x42000000    # 32.0f

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v12, v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/UiManager;->itemCellRarityCoats:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    rem-int/lit8 v11, v8, 0x2

    aget-object v9, v9, v11

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v9, v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v2, 0x42000000    # 32.0f

    const/high16 v3, 0x42100000    # 36.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_20
    move-object/from16 v29, v1

    move-object/from16 v26, v2

    move/from16 v28, v9

    move-object/from16 v30, v11

    move-object/from16 v27, v12

    :goto_e
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v23

    move-object/from16 v2, v26

    move-object/from16 v12, v27

    move/from16 v9, v28

    move-object/from16 v1, v29

    move-object/from16 v11, v30

    goto/16 :goto_d

    :cond_21
    move/from16 v28, v9

    move-object/from16 v30, v11

    move-object/from16 v27, v12

    int-to-float v1, v8

    const/high16 v2, 0x42380000    # 46.0f

    mul-float v1, v1, v2

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    const-string v5, "%"

    invoke-direct {v2, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v3, 0x421c0000    # 39.0f

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x42000000    # 32.0f

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/prineside/tdi2/items/CaseItem;->getItemCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x15

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x42000000    # 32.0f

    const/high16 v3, 0x42100000    # 36.0f

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v6}, Lcom/prineside/tdi2/items/CaseItem;->getGuaranteedItemType()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "guaranteed"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": [#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/items/CaseItem;->getGuaranteedItemType()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/items/CaseItem;->getGuaranteedItemType()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityName(Lcom/prineside/tdi2/enums/RarityType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[] x1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x15

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v1, 0x41b00000    # 22.0f

    const/high16 v9, 0x431e0000    # 158.0f

    invoke-virtual {v0, v9, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v0, v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_f

    :cond_22
    const/high16 v5, 0x42c80000    # 100.0f

    const/16 v8, 0x15

    const/high16 v9, 0x431e0000    # 158.0f

    :goto_f
    invoke-virtual {v6}, Lcom/prineside/tdi2/items/CaseItem;->getCasePriceInKeys()I

    move-result v11

    if-lez v11, :cond_25

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_CASE_KEY:Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;

    invoke-virtual {v0, v15}, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;)Lcom/prineside/tdi2/items/CaseKeyItem;

    move-result-object v12

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0, v12}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v3

    const/4 v0, 0x0

    div-int v1, v3, v11

    const/4 v2, 0x1

    if-lt v1, v2, :cond_23

    new-instance v17, Lcom/prineside/tdi2/screens/MoneyScreen$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move v2, v3

    move v8, v3

    const/16 v18, 0x1e

    move v3, v11

    move-object v9, v4

    move-object v4, v12

    move/from16 v23, v13

    const/high16 v13, 0x41a00000    # 20.0f

    const/high16 v20, 0x42c80000    # 100.0f

    move-object v5, v6

    move-object v13, v6

    move/from16 v18, v14

    const/16 v14, 0x1e

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/prineside/tdi2/screens/MoneyScreen$10;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;IILcom/prineside/tdi2/items/CaseKeyItem;Lcom/prineside/tdi2/items/CaseItem;Lcom/prineside/tdi2/enums/CaseType;)V

    goto :goto_10

    :cond_23
    move v8, v3

    move-object v9, v4

    move/from16 v23, v13

    move/from16 v18, v14

    const/16 v14, 0x1e

    const/high16 v20, 0x42c80000    # 100.0f

    move-object v13, v6

    :goto_10
    new-instance v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<@icon-key> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/screens/MoneyScreen$11;

    invoke-direct {v3, v7, v12, v13, v15}, Lcom/prineside/tdi2/screens/MoneyScreen$11;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/items/CaseKeyItem;Lcom/prineside/tdi2/items/CaseItem;Lcom/prineside/tdi2/enums/CaseType;)V

    invoke-direct {v6, v1, v2, v3, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelShadowEnabled(Z)V

    const/high16 v0, 0x43220000    # 162.0f

    const/high16 v1, 0x429c0000    # 78.0f

    invoke-virtual {v6, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "ui-money-screen-button-small-top"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43220000    # 162.0f

    const/high16 v0, 0x429c0000    # 78.0f

    move-object v1, v6

    move-object v12, v6

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    if-ge v8, v11, :cond_24

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :cond_24
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "ui-money-screen-button-small-top-edge"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x43220000    # 162.0f

    const/high16 v2, 0x429c0000    # 78.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x42080000    # 34.0f

    const/high16 v4, 0x431d0000    # 157.0f

    const/high16 v5, 0x41a80000    # 21.0f

    const/4 v6, 0x1

    move-object v1, v12

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v0, 0x43de8000    # 445.0f

    const/high16 v1, 0x429a0000    # 77.0f

    invoke-virtual {v12, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_11

    :cond_25
    move-object v9, v4

    move/from16 v23, v13

    move/from16 v18, v14

    const/16 v14, 0x1e

    const/high16 v20, 0x42c80000    # 100.0f

    move-object v13, v6

    :goto_11
    invoke-virtual {v13}, Lcom/prineside/tdi2/items/CaseItem;->getCasePriceInPapers()I

    move-result v8

    invoke-virtual {v13}, Lcom/prineside/tdi2/items/CaseItem;->getCasePriceInAccelerators()I

    move-result v11

    if-gtz v11, :cond_26

    if-lez v8, :cond_2c

    :cond_26
    const/16 v0, 0x32

    if-lez v8, :cond_27

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<@icon-money> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v8

    invoke-static {v3, v4}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v2

    div-int/2addr v2, v8

    goto :goto_12

    :cond_27
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<@time-accelerator> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getAccelerators()I

    move-result v2

    div-int/2addr v2, v11

    :goto_12
    move-object v12, v1

    if-lez v8, :cond_28

    move v4, v8

    goto :goto_13

    :cond_28
    move v4, v11

    :goto_13
    invoke-static {v2, v0}, Ljava/lang/StrictMath;->min(II)I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt v3, v1, :cond_29

    new-instance v17, Lcom/prineside/tdi2/screens/MoneyScreen$12;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move v2, v8

    move-object v5, v13

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/prineside/tdi2/screens/MoneyScreen$12;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;IIILcom/prineside/tdi2/items/CaseItem;Lcom/prineside/tdi2/enums/CaseType;)V

    :cond_29
    new-instance v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/screens/MoneyScreen$13;

    invoke-direct {v2, v7, v13, v15}, Lcom/prineside/tdi2/screens/MoneyScreen$13;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/items/CaseItem;Lcom/prineside/tdi2/enums/CaseType;)V

    invoke-direct {v6, v12, v1, v2, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelShadowEnabled(Z)V

    const/high16 v0, 0x43220000    # 162.0f

    const/high16 v1, 0x42940000    # 74.0f

    invoke-virtual {v6, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "ui-money-screen-button-small-bottom"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43220000    # 162.0f

    const/high16 v0, 0x42940000    # 74.0f

    move-object v1, v6

    move-object v12, v6

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getAccelerators()I

    move-result v0

    if-lt v0, v11, :cond_2a

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v0

    if-ge v0, v8, :cond_2b

    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :cond_2b
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "ui-money-screen-button-small-bottom-edge"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x43220000    # 162.0f

    const/high16 v2, 0x42940000    # 74.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x42000000    # 32.0f

    const/high16 v4, 0x431d0000    # 157.0f

    const/high16 v5, 0x41a80000    # 21.0f

    const/4 v6, 0x1

    move-object v1, v12

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v0, 0x43de8000    # 445.0f

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v12, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2c
    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43260000    # 166.0f

    const v2, 0x44138000    # 590.0f

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    rem-int/lit8 v2, v18, 0x2

    if-nez v2, :cond_2d

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_14

    :cond_2d
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :goto_14
    add-int/lit8 v0, v18, 0x1

    add-int/lit8 v13, v23, 0x1

    move v14, v0

    move-object/from16 v12, v27

    move/from16 v9, v28

    move-object/from16 v11, v30

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v8, 0x4

    goto/16 :goto_a

    :cond_2e
    move/from16 v28, v9

    move-object/from16 v30, v11

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42380000    # 46.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->isPurchasesEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_GREEN_PAPER_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getDynamicSetting(Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->m:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    const/4 v12, 0x0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v2

    iget v3, v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->c:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->d:I

    add-int/2addr v2, v3

    const v3, 0x3b9ac9ff

    if-le v2, v3, :cond_2f

    goto :goto_15

    :cond_2f
    if-eqz v12, :cond_31

    const/4 v2, 0x3

    if-eq v12, v2, :cond_31

    const/4 v2, 0x4

    if-ne v12, v2, :cond_30

    goto :goto_16

    :cond_30
    const/4 v2, 0x0

    goto :goto_17

    :cond_31
    :goto_16
    const/4 v2, 0x1

    :goto_17
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v4, v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lcom/prineside/tdi2/screens/MoneyScreen;->l(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "item-cell-a-shape"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v4, 0x3e8f5c29    # 0.28f

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v4, 0x42d40000    # 106.0f

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x431c0000    # 156.0f

    const/high16 v5, 0x41e80000    # 29.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-money"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v3, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x432c0000    # 172.0f

    const/high16 v6, 0x427c0000    # 63.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v5, v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->c:I

    int-to-double v5, v5

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x15

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v5, 0x431c0000    # 156.0f

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v3, v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->f:I

    if-lez v3, :cond_33

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "item-cell-b-shape"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v5, 0x3e8f5c29    # 0.28f

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v5, 0x42d40000    # 106.0f

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x437c0000    # 252.0f

    const/high16 v6, 0x41e80000    # 29.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-money"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x43860000    # 268.0f

    const/high16 v5, 0x427c0000    # 63.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v4, v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->d:I

    int-to-double v4, v4

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, 0x437c0000    # 252.0f

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-plus"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x43710000    # 241.0f

    const/high16 v6, 0x42900000    # 72.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v3, v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->e:I

    if-lez v3, :cond_32

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "item-cell-a-shape"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v5, 0x3e8f5c29    # 0.28f

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v5, 0x42d40000    # 106.0f

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x43ae0000    # 348.0f

    const/high16 v6, 0x41e80000    # 29.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "rarity-token"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v3, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x43b60000    # 364.0f

    const/high16 v6, 0x427c0000    # 63.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v5, v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->e:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, 0x43ae0000    # 348.0f

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-plus"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v5, 0x43a88000    # 337.0f

    const/high16 v6, 0x42900000    # 72.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_32
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget v9, v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->g:I

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v4, 0x42a40000    # 82.0f

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v4, 0x43f50000    # 490.0f

    const/high16 v5, 0x42ea0000    # 117.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_33
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/PurchaseManager;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    iget-object v4, v1, Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/pay/InformationFinder;->getInformation(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Information;->getLocalPricing()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/prineside/tdi2/screens/e0;

    invoke-direct {v4, v7, v1}, Lcom/prineside/tdi2/screens/e0;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;)V

    invoke-virtual {v7, v3, v4}, Lcom/prineside/tdi2/screens/MoneyScreen;->k(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x43260000    # 166.0f

    const v3, 0x44138000    # 590.0f

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    rem-int/lit8 v3, v12, 0x2

    if-nez v3, :cond_34

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_18

    :cond_34
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :goto_18
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_15

    :cond_35
    const/16 v8, 0x15

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42380000    # 46.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto :goto_19

    :cond_36
    const/16 v8, 0x15

    :goto_19
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->isPurchasesEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getAccelerators()I

    move-result v0

    const v1, 0x1dcd6500

    if-ge v0, v1, :cond_3c

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_ACCELERATOR_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getDynamicSetting(Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->n:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    const/4 v12, 0x0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;

    if-eqz v12, :cond_38

    const/4 v2, 0x3

    if-eq v12, v2, :cond_38

    const/4 v2, 0x4

    if-ne v12, v2, :cond_37

    goto :goto_1b

    :cond_37
    const/4 v2, 0x0

    goto :goto_1c

    :cond_38
    :goto_1b
    const/4 v2, 0x1

    :goto_1c
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v4, v1, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lcom/prineside/tdi2/screens/MoneyScreen;->l(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "item-cell-a-shape"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v4, 0x3e8f5c29    # 0.28f

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v4, 0x42d40000    # 106.0f

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x431c0000    # 156.0f

    const/high16 v5, 0x41e80000    # 29.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "time-accelerator"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x432c0000    # 172.0f

    const/high16 v5, 0x427c0000    # 63.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v4, v1, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;->c:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v4, 0x431c0000    # 156.0f

    const/high16 v5, 0x42300000    # 44.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v3, v1, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;->e:I

    if-lez v3, :cond_39

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "item-cell-b-shape"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v4, 0x3e8f5c29    # 0.28f

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v6, 0x42d40000    # 106.0f

    const/high16 v9, 0x42c00000    # 96.0f

    invoke-virtual {v3, v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x437c0000    # 252.0f

    const/high16 v9, 0x41e80000    # 29.0f

    invoke-virtual {v3, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "time-accelerator"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v6, 0x42800000    # 64.0f

    invoke-virtual {v3, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x43860000    # 268.0f

    const/high16 v9, 0x427c0000    # 63.0f

    invoke-virtual {v3, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v6, v1, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;->d:I

    int-to-long v13, v6

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v3, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v11, 0x437c0000    # 252.0f

    const/high16 v13, 0x42300000    # 44.0f

    invoke-virtual {v3, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v13, 0x42c00000    # 96.0f

    invoke-virtual {v3, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-plus"

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v3, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-virtual {v3, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v14, 0x43710000    # 241.0f

    const/high16 v15, 0x42900000    # 72.0f

    invoke-virtual {v3, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;->e:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget v4, v1, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;->f:I

    invoke-virtual {v15, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v3, v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v4, 0x42a40000    # 82.0f

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-virtual {v3, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v9, 0x43f50000    # 490.0f

    const/high16 v14, 0x42ea0000    # 117.0f

    invoke-virtual {v3, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_1d

    :cond_39
    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v13, 0x42c00000    # 96.0f

    :goto_1d
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/PurchaseManager;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    iget-object v9, v1, Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;->a:Ljava/lang/String;

    invoke-interface {v3, v9}, Lcom/badlogic/gdx/pay/InformationFinder;->getInformation(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Information;->getLocalPricing()Ljava/lang/String;

    move-result-object v3

    const-string v9, "MoneyScreen"

    invoke-static {v9, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/prineside/tdi2/screens/f0;

    invoke-direct {v9, v7, v1}, Lcom/prineside/tdi2/screens/f0;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/screens/MoneyScreen$AcceleratorPackConfig;)V

    invoke-virtual {v7, v3, v9}, Lcom/prineside/tdi2/screens/MoneyScreen;->k(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x43260000    # 166.0f

    const v3, 0x44138000    # 590.0f

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    rem-int/lit8 v9, v12, 0x2

    if-nez v9, :cond_3a

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_1e

    :cond_3a
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :goto_1e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1a

    :cond_3b
    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/MoneyScreen;->s()V

    invoke-virtual/range {v30 .. v30}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->layout()V

    move/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollY(F)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->updateVisualScroll()V

    iget-object v0, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v0, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/utils/InputVoid;

    invoke-direct {v1}, Lcom/prineside/tdi2/utils/InputVoid;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v0, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "blank"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const v3, 0x3f47ae14    # 0.78f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "loading-icon"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v4

    invoke-static {v1, v2, v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    const/high16 v1, 0x42800000    # 64.0f

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v1, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43000000    # 128.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v0, v7, Lcom/prineside/tdi2/screens/MoneyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x40800000    # 4.0f
        0x41200000    # 10.0f
        0x42b80000    # 92.0f
        0x43fa0000    # 500.0f
        0x42c00000    # 96.0f
        0x43ff0000    # 510.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x0
        0x0
        0x42200000    # 40.0f
        0x44120000    # 584.0f
        0x42200000    # 40.0f
        0x44134000    # 589.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x40a00000    # 5.0f
        0x0
        0x0
        0x42200000    # 40.0f
        0x44120000    # 584.0f
        0x42200000    # 40.0f
        0x44134000    # 589.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x41c80000    # 25.0f
        0x433e0000    # 190.0f
        0x41f80000    # 31.0f
        0x433d0000    # 189.0f
        0x40c00000    # 6.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x41000000    # 8.0f
        0x0
        0x0
        0x42980000    # 76.0f
        0x437d0000    # 253.0f
        0x42940000    # 74.0f
        0x43740000    # 244.0f
        0x40000000    # 2.0f
    .end array-data

    :array_5
    .array-data 4
        0x41000000    # 8.0f
        0x0
        0x0
        0x42980000    # 76.0f
        0x437d0000    # 253.0f
        0x42940000    # 74.0f
        0x43740000    # 244.0f
        0x40000000    # 2.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x41000000    # 8.0f
        0x42980000    # 76.0f
        0x43730000    # 243.0f
        0x42940000    # 74.0f
        0x437d0000    # 253.0f
        0x40000000    # 2.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x41000000    # 8.0f
        0x42980000    # 76.0f
        0x43730000    # 243.0f
        0x42940000    # 74.0f
        0x437d0000    # 253.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public resize(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Screen;->resize(II)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MoneyScreen;->r()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getLootBoostTimeLeft()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(IZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getLootBoostTimeLeft()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v1, 0x3f0f5c29    # 0.56f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->rewardingAdsAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->REGULAR:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->canShowRewardingAd(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getSecondsTillAdIsReady(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v0}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_3
    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainPermanent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getTempDoubleGainDurationLeft()I

    move-result v0

    invoke-static {v0, v2, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->timePassed(IZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method
