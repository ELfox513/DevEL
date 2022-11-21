.class Lcom/prineside/tdi2/systems/SoundSystem$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/SoundSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/systems/SoundSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/SoundSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/SoundSystem$1;->b:Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;-><init>(Lcom/prineside/tdi2/systems/SoundSystem$1;)V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/SoundSystem$1;->c()Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;

    move-result-object v0

    return-object v0
.end method
