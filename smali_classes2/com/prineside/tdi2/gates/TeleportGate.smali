.class public Lcom/prineside/tdi2/gates/TeleportGate;
.super Lcom/prineside/tdi2/Gate;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;
    }
.end annotation


# static fields
.field public static final INDEX_COLORS:[Lcom/badlogic/gdx/graphics/Color;

.field public static final INDEX_NAMES:[Ljava/lang/String;

.field public static final MAX_INDEX:I

.field public static final MAX_INDEX_FOR_LOOT:I = 0x10

.field public static final TAG:Ljava/lang/String; = "TeleportGate"


# instance fields
.field public index:I

.field public p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x39

    new-array v1, v0, [Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v15, 0xc

    aput-object v2, v1, v15

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v16, 0xd

    aput-object v2, v1, v16

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v17, 0xe

    aput-object v2, v1, v17

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v18, 0xf

    aput-object v2, v1, v18

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v19, 0x10

    aput-object v2, v1, v19

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v20, 0x11

    aput-object v2, v1, v20

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x12

    aput-object v2, v1, v21

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v22, 0x13

    aput-object v2, v1, v22

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v23, 0x14

    aput-object v2, v1, v23

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x15

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x16

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x17

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x18

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x19

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x1a

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x1b

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x1c

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x1d

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x1e

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x1f

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x20

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x21

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x22

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x23

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x24

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x25

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x26

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x27

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x28

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x29

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x2a

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x2b

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x2c

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x2d

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x2e

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x2f

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x30

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x31

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x32

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x33

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x34

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x35

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x36

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x37

    aput-object v2, v1, v24

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x38

    aput-object v2, v1, v24

    sput-object v1, Lcom/prineside/tdi2/gates/TeleportGate;->INDEX_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "RED"

    aput-object v2, v0, v3

    const-string v2, "PINK"

    aput-object v2, v0, v4

    const-string v2, "PURPLE"

    aput-object v2, v0, v5

    const-string v2, "DEEP_PURPLE"

    aput-object v2, v0, v6

    const-string v2, "INDIGO"

    aput-object v2, v0, v7

    const-string v2, "BLUE"

    aput-object v2, v0, v8

    const-string v2, "LIGHT_BLUE"

    aput-object v2, v0, v9

    const-string v2, "CYAN"

    aput-object v2, v0, v10

    const-string v2, "TEAL"

    aput-object v2, v0, v11

    const-string v2, "GREEN"

    aput-object v2, v0, v12

    const-string v2, "LIGHT_GREEN"

    aput-object v2, v0, v13

    const-string v2, "LIME"

    aput-object v2, v0, v14

    const-string v2, "YELLOW"

    aput-object v2, v0, v15

    const-string v2, "AMBER"

    aput-object v2, v0, v16

    const-string v2, "ORANGE"

    aput-object v2, v0, v17

    const-string v2, "DEEP_ORANGE"

    aput-object v2, v0, v18

    const-string v2, "BROWN"

    aput-object v2, v0, v19

    const-string v2, "GRAY"

    aput-object v2, v0, v20

    const-string v2, "BLUE_GRAY"

    aput-object v2, v0, v21

    const-string v2, "Dark RED"

    aput-object v2, v0, v22

    const-string v2, "Dark PINK"

    aput-object v2, v0, v23

    const/16 v2, 0x15

    const-string v3, "Dark PURPLE"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "Dark DEEP_PURPLE"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "Dark INDIGO"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "Dark BLUE"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "Dark LIGHT_BLUE"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "Dark CYAN"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "Dark TEAL"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "Dark GREEN"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "Dark LIGHT_GREEN"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "Dark LIME"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "Dark YELLOW"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "Dark AMBER"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "Dark ORANGE"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "Dark DEEP_ORANGE"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "Dark BROWN"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "Dark GRAY"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, "Dark BLUE_GRAY"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "Bright RED"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "Bright PINK"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "Bright PURPLE"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "Bright DEEP_PURPLE"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, "Bright INDIGO"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "Bright BLUE"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "Bright LIGHT_BLUE"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "Bright CYAN"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string v3, "Bright TEAL"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string v3, "Bright GREEN"

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const-string v3, "Bright LIGHT_GREEN"

    aput-object v3, v0, v2

    const/16 v2, 0x31

    const-string v3, "Bright LIME"

    aput-object v3, v0, v2

    const/16 v2, 0x32

    const-string v3, "Bright YELLOW"

    aput-object v3, v0, v2

    const/16 v2, 0x33

    const-string v3, "Bright AMBER"

    aput-object v3, v0, v2

    const/16 v2, 0x34

    const-string v3, "Bright ORANGE"

    aput-object v3, v0, v2

    const/16 v2, 0x35

    const-string v3, "Bright DEEP_ORANGE"

    aput-object v3, v0, v2

    const/16 v2, 0x36

    const-string v3, "Bright BROWN"

    aput-object v3, v0, v2

    const/16 v2, 0x37

    const-string v3, "Bright GRAY"

    aput-object v3, v0, v2

    const/16 v2, 0x38

    const-string v3, "Bright BLUE_GRAY"

    aput-object v3, v0, v2

    sput-object v0, Lcom/prineside/tdi2/gates/TeleportGate;->INDEX_NAMES:[Ljava/lang/String;

    array-length v0, v1

    sub-int/2addr v0, v4

    sput v0, Lcom/prineside/tdi2/gates/TeleportGate;->MAX_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/GateType;->TELEPORT:Lcom/prineside/tdi2/enums/GateType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Gate;-><init>(Lcom/prineside/tdi2/enums/GateType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/gates/TeleportGate$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/gates/TeleportGate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public cloneGate()Lcom/prineside/tdi2/Gate;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GateManager$Factories;->TELEPORT:Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->create()Lcom/prineside/tdi2/gates/TeleportGate;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/Gate;->setPosition(IILcom/prineside/tdi2/Gate$Side;)V

    iget v1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    iput v1, v0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    return-object v0
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Gate$Side;->BOTTOM:Lcom/prineside/tdi2/Gate$Side;

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/GateManager$Factories;->TELEPORT:Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;

    iget-object p1, p1, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object p1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    mul-int/lit16 p3, p3, 0x80

    add-int/lit8 p3, p3, 0x40

    int-to-float p2, p3

    mul-int/lit16 p4, p4, 0x80

    int-to-float p3, p4

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/GateManager$Factories;->TELEPORT:Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;

    iget-object p1, p1, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object p1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    mul-int/lit16 p3, p3, 0x80

    int-to-float p2, p3

    mul-int/lit16 p4, p4, 0x80

    add-int/lit8 p4, p4, 0x40

    int-to-float p3, p4

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object p2

    const/4 p4, 0x3

    new-array p4, p4, [F

    sget-object v0, Lcom/prineside/tdi2/gates/TeleportGate;->INDEX_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    aget-object v0, v0, v1

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v1, p4, p3

    const/4 p3, 0x1

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v1, p4, p3

    const/4 p3, 0x2

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v0, p4, p3

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/gates/TeleportGate;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_3
    :goto_2
    return-void
.end method

.method public drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;II)V
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/gates/TeleportGate;->INDEX_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    const/high16 v2, 0x41600000    # 14.0f

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GateManager$Factories;->TELEPORT:Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;

    iget-object v4, v0, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    mul-int/lit16 p2, p2, 0x80

    int-to-float p2, p2

    sub-float v5, p2, v2

    mul-int/lit16 p3, p3, 0x80

    int-to-float v6, p3

    const/high16 v7, 0x41e00000    # 28.0f

    const/high16 v8, 0x43000000    # 128.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GateManager$Factories;->TELEPORT:Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;

    iget-object v4, v0, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    mul-int/lit16 p2, p2, 0x80

    int-to-float v5, p2

    mul-int/lit16 p3, p3, 0x80

    int-to-float p2, p3

    sub-float v6, p2, v2

    const/high16 v7, 0x43000000    # 128.0f

    const/high16 v8, 0x41e00000    # 28.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_0
    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "item-gate-teleport-icon"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object p1, Lcom/prineside/tdi2/gates/TeleportGate;->INDEX_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-object p2
.end method

.method public getPrestigeScore()D
    .locals 2

    const-wide v0, 0x3fd3333333333333L    # 0.3

    return-wide v0
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->KIND:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    add-int/lit16 p1, p1, 0xbb8

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/gates/TeleportGate;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    add-int/2addr p1, v0

    return p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Gate;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Gate;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Gate;->sameAs(Lcom/prineside/tdi2/Gate;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/gates/TeleportGate;

    iget p1, p1, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    iget v0, p0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setUnregistered()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/gates/TeleportGate;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/gates/TeleportGate;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Gate;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget v0, p0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Gate;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return-void
.end method
