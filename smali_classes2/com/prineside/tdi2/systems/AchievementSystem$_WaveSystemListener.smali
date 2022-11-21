.class public Lcom/prineside/tdi2/systems/AchievementSystem$_WaveSystemListener;
.super Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/AchievementSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_WaveSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_WaveSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/AchievementSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/AchievementSystem$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getConstantId()I
    .locals 1

    const/16 v0, 0x3aa2

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_WaveSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public waveCompleted(Lcom/prineside/tdi2/Wave;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->REACH_HIGH_WAVE_ONE_GAME:Lcom/prineside/tdi2/enums/AchievementType;

    iget p1, p1, Lcom/prineside/tdi2/Wave;->waveNumber:I

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_WaveSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
