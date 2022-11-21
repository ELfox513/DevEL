.class Lcom/prineside/tdi2/systems/SoundSystem$_GameStateSystemListener;
.super Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/SoundSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_GameStateSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/SoundSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/SoundSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/SoundSystem$_GameStateSystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/SoundSystem;Lcom/prineside/tdi2/systems/SoundSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/SoundSystem$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;)V

    return-void
.end method


# virtual methods
.method public gamePaused()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem$_GameStateSystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/SoundSystem;->updateMusicPlayback()V

    return-void
.end method

.method public gameResumed()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem$_GameStateSystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/SoundSystem;->updateMusicPlayback()V

    return-void
.end method
