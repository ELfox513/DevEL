.class Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/actors/ItemCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GcListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/ItemCell;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/ItemCell;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/actors/ItemCell;Lcom/prineside/tdi2/ui/actors/ItemCell$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;-><init>(Lcom/prineside/tdi2/ui/actors/ItemCell;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->s(Lcom/prineside/tdi2/ui/actors/ItemCell;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/actors/ItemCell;->t(Lcom/prineside/tdi2/ui/actors/ItemCell;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2bc

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->u(Lcom/prineside/tdi2/ui/actors/ItemCell;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->v(Lcom/prineside/tdi2/ui/actors/ItemCell;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
