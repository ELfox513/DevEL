.class Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;
.super Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/SoundSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_TowerSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/SoundSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/SoundSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/SoundSystem;Lcom/prineside/tdi2/systems/SoundSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;)V

    return-void
.end method


# virtual methods
.method public towerAbilityChanged(Lcom/prineside/tdi2/Tower;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->UPGRADE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    :cond_0
    return-void
.end method

.method public towerBuilt(Lcom/prineside/tdi2/Tower;I)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUILDING_BUILT:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method

.method public towerUpgraded(Lcom/prineside/tdi2/Tower;I)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->UPGRADE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method
