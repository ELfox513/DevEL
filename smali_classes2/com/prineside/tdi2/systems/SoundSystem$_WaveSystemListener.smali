.class Lcom/prineside/tdi2/systems/SoundSystem$_WaveSystemListener;
.super Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/SoundSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_WaveSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/SoundSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/SoundSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/SoundSystem$_WaveSystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/SoundSystem;Lcom/prineside/tdi2/systems/SoundSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/SoundSystem$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;)V

    return-void
.end method


# virtual methods
.method public statusChanged(Lcom/prineside/tdi2/systems/WaveSystem$Status;)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/SoundSystem$_WaveSystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/SoundSystem;->updateMusicPlayback()V

    :cond_0
    return-void
.end method
