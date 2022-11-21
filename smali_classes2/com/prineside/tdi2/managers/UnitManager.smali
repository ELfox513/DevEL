.class public Lcom/prineside/tdi2/managers/UnitManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/UnitManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/UnitManager$Factories;,
        Lcom/prineside/tdi2/managers/UnitManager$Serializer;
    }
.end annotation


# instance fields
.field public final F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

.field public final a:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/Unit$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UnitManager;->a:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v1, Lcom/prineside/tdi2/managers/UnitManager$Factories;

    invoke-direct {v1}, Lcom/prineside/tdi2/managers/UnitManager$Factories;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    sget-object v2, Lcom/prineside/tdi2/Game;->r:Lcom/prineside/tdi2/Registry;

    const-string v3, "UnitType"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Registry;->getCategory(Ljava/lang/String;)Lcom/prineside/tdi2/Registry$EnumCategory;

    move-result-object v2

    const-string v3, "SNOWBALL"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Registry$EnumCategory;->getId(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/prineside/tdi2/managers/UnitManager;->registerFactory(ILcom/prineside/tdi2/Unit$Factory;)Lcom/prineside/tdi2/Unit$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;

    iput-object v3, v1, Lcom/prineside/tdi2/managers/UnitManager$Factories;->SNOWBALL:Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;

    const-string v3, "BALL_LIGHTNING"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Registry$EnumCategory;->getId(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/prineside/tdi2/managers/UnitManager;->registerFactory(ILcom/prineside/tdi2/Unit$Factory;)Lcom/prineside/tdi2/Unit$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;

    iput-object v3, v1, Lcom/prineside/tdi2/managers/UnitManager$Factories;->BALL_LIGHTNING:Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;

    const-string v3, "DISORIENTED"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Registry$EnumCategory;->getId(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/units/DisorientedUnit$DisorientedUnitFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/units/DisorientedUnit$DisorientedUnitFactory;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/prineside/tdi2/managers/UnitManager;->registerFactory(ILcom/prineside/tdi2/Unit$Factory;)Lcom/prineside/tdi2/Unit$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/units/DisorientedUnit$DisorientedUnitFactory;

    iput-object v3, v1, Lcom/prineside/tdi2/managers/UnitManager$Factories;->DISORIENTED:Lcom/prineside/tdi2/units/DisorientedUnit$DisorientedUnitFactory;

    const-string v3, "MICROGUN"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Registry$EnumCategory;->getId(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/prineside/tdi2/managers/UnitManager;->registerFactory(ILcom/prineside/tdi2/Unit$Factory;)Lcom/prineside/tdi2/Unit$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;

    iput-object v3, v1, Lcom/prineside/tdi2/managers/UnitManager$Factories;->MICROGUN:Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;

    const-string v3, "MINE"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Registry$EnumCategory;->getId(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/prineside/tdi2/managers/UnitManager;->registerFactory(ILcom/prineside/tdi2/Unit$Factory;)Lcom/prineside/tdi2/Unit$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;

    iput-object v3, v1, Lcom/prineside/tdi2/managers/UnitManager$Factories;->MINE:Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    invoke-virtual {v2}, Lcom/prineside/tdi2/Registry$EnumCategory;->values()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not all unit factories were created "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Registry$EnumCategory;->values()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getFactory(I)Lcom/prineside/tdi2/Unit$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/prineside/tdi2/Unit$Factory<",
            "+",
            "Lcom/prineside/tdi2/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UnitManager;->a:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Unit$Factory;

    return-object p1
.end method

.method public registerFactory(ILcom/prineside/tdi2/Unit$Factory;)Lcom/prineside/tdi2/Unit$Factory;
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UnitManager;->a:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/UnitManager;->b:Z

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/prineside/tdi2/Unit$Factory;->setup()V

    :cond_0
    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "factory is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setup()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UnitManager;->a:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->values()Lcom/badlogic/gdx/utils/IntMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Unit$Factory;

    invoke-interface {v1}, Lcom/prineside/tdi2/Unit$Factory;->setup()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/UnitManager;->b:Z

    return-void
.end method

.method public unregisterFactory(I)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UnitManager;->a:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Unit$Factory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregistered factory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnitManager"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
