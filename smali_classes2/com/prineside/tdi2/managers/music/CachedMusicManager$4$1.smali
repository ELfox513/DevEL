.class Lcom/prineside/tdi2/managers/music/CachedMusicManager$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4$1;->a:Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4$1;->a:Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->A:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->a:Lcom/prineside/tdi2/ibxm/Module;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->l(Lcom/prineside/tdi2/ibxm/Module;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4$1;->a:Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    iget v0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->b:F

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/prineside/tdi2/managers/MusicManager;->setVolume(FFZ)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4$1;->a:Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    iget-object v2, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->b:F

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->m(Lcom/prineside/tdi2/managers/music/CachedMusicManager;Lcom/prineside/tdi2/ibxm/Module;F)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4$1;->a:Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->B:Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->showProgress(FLcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4$1;->a:Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->B:Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->hide(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4$1;->a:Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->B:Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4$1;->a:Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->e(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)V

    :cond_1
    return-void
.end method
