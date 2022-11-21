.class public Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;
.super Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/StatisticsSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_Game_StateSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/StatisticsSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public gameOver()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/StatisticsSystem;->c(Lcom/prineside/tdi2/systems/StatisticsSystem;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->addFrame(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x7bdc12

    return v0
.end method

.method public moneyChanged(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result p2

    if-le p2, p1, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, p2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->CG:Lcom/prineside/tdi2/enums/StatisticsType;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result p2

    sub-int/2addr p2, p1

    int-to-double p1, p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_0
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public resourcesChanged(Lcom/prineside/tdi2/enums/ResourceType;IZ)V
    .locals 3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p3, p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result p3

    if-le p3, p2, :cond_0

    iget-object p3, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p3, p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result p3

    sub-int/2addr p3, p2

    iget-object p2, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->RG:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v1, p3

    invoke-virtual {p2, v0, v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {p3, p1}, Lcom/prineside/tdi2/managers/ResourceManager;->getGainedCountStatistic(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object p1

    invoke-virtual {p2, p1, v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_0
    return-void
.end method

.method public scoreChanged(JZLcom/prineside/tdi2/enums/StatisticsType;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/GameStateSystem;->getScore()J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/GameStateSystem;->getScore()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->SG:Lcom/prineside/tdi2/enums/StatisticsType;

    long-to-double v0, v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {p1, p4, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
