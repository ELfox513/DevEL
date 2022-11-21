.class Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DarkOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/shared/DarkOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DarkOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;->o:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;->o:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->b(Lcom/prineside/tdi2/ui/shared/DarkOverlay;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_0

    const-string p1, "DarkOverlay"

    const-string p2, "no callers"

    invoke-static {p1, p2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;->o:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->b(Lcom/prineside/tdi2/ui/shared/DarkOverlay;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;->o:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->b(Lcom/prineside/tdi2/ui/shared/DarkOverlay;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    iget-object p2, p1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->onClick:Ljava/lang/Runnable;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;->o:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-static {p2, p3}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->d(Lcom/prineside/tdi2/ui/shared/DarkOverlay;Z)Z

    iget-object p2, p1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->onClick:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;->o:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->c(Lcom/prineside/tdi2/ui/shared/DarkOverlay;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;->o:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;->o:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-static {p1, p3}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->d(Lcom/prineside/tdi2/ui/shared/DarkOverlay;Z)Z

    :goto_0
    return-void
.end method
