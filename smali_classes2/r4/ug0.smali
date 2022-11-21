.class public final Lr4/ug0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lr4/tg0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lr4/wg0;


# direct methods
.method public constructor <init>(Lr4/wg0;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lr4/ug0;->b:Lr4/wg0;

    iput-object p2, p0, Lr4/ug0;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lr4/ug0;->b:Lr4/wg0;

    invoke-static {v0}, Lr4/wg0;->a(Lr4/wg0;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lr4/ug0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/vg0;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lr4/vg0;->a:J

    sget-object v3, Lr4/x00;->a:Lr4/u00;

    invoke-virtual {v3}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v3

    invoke-interface {v3}, Lc4/f;->a()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lr4/sg0;

    iget-object v2, p0, Lr4/ug0;->a:Landroid/content/Context;

    iget-object v0, v0, Lr4/vg0;->b:Lr4/tg0;

    invoke-direct {v1, v2, v0}, Lr4/sg0;-><init>(Landroid/content/Context;Lr4/tg0;)V

    invoke-virtual {v1}, Lr4/sg0;->a()Lr4/tg0;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lr4/sg0;

    iget-object v1, p0, Lr4/ug0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lr4/sg0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lr4/sg0;->a()Lr4/tg0;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lr4/ug0;->b:Lr4/wg0;

    invoke-static {v1}, Lr4/wg0;->a(Lr4/wg0;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lr4/ug0;->a:Landroid/content/Context;

    new-instance v3, Lr4/vg0;

    iget-object v4, p0, Lr4/ug0;->b:Lr4/wg0;

    invoke-direct {v3, v4, v0}, Lr4/vg0;-><init>(Lr4/wg0;Lr4/tg0;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
