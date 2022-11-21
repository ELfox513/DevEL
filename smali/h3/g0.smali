.class public final Lh3/g0;
.super Lr4/uk0;
.source "SourceFile"


# static fields
.field public static final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:Z

.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final G:Lr4/im0;

.field public H:Ljava/lang/String;

.field public final I:Ljava/lang/String;

.field public final a:Lr4/bu0;

.field public b:Landroid/content/Context;

.field public final d:Lr4/u;

.field public final k:Lr4/aq2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/aq2<",
            "Lr4/fo1;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lr4/i83;

.field public final q:Ljava/util/concurrent/ScheduledExecutorService;

.field public r:Lr4/qf0;

.field public s:Landroid/graphics/Point;

.field public t:Landroid/graphics/Point;

.field public final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lh3/m;

.field public final w:Lr4/ls1;

.field public final x:Lr4/xt2;

.field public final y:Lr4/pu2;

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "/aclk"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "/pcs/click"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lh3/g0;->J:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, ".doubleclick.net"

    aput-object v3, v2, v4

    const-string v6, ".googleadservices.com"

    aput-object v6, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lh3/g0;->K:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "/pagead/adview"

    aput-object v8, v7, v4

    const-string v8, "/pcs/view"

    aput-object v8, v7, v5

    const-string v8, "/pagead/conversion"

    aput-object v8, v7, v1

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lh3/g0;->L:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object v6, v2, v5

    const-string v3, ".googlesyndication.com"

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lh3/g0;->M:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lr4/bu0;Landroid/content/Context;Lr4/u;Lr4/aq2;Lr4/i83;Ljava/util/concurrent/ScheduledExecutorService;Lr4/ls1;Lr4/xt2;Lr4/pu2;Lr4/im0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bu0;",
            "Landroid/content/Context;",
            "Lr4/u;",
            "Lr4/aq2<",
            "Lr4/fo1;",
            ">;",
            "Lr4/i83;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lr4/ls1;",
            "Lr4/xt2;",
            "Lr4/pu2;",
            "Lr4/im0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/uk0;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lh3/g0;->s:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lh3/g0;->t:Landroid/graphics/Point;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lh3/g0;->u:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lh3/g0;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lh3/g0;->a:Lr4/bu0;

    iput-object p2, p0, Lh3/g0;->b:Landroid/content/Context;

    iput-object p3, p0, Lh3/g0;->d:Lr4/u;

    iput-object p4, p0, Lh3/g0;->k:Lr4/aq2;

    iput-object p5, p0, Lh3/g0;->p:Lr4/i83;

    iput-object p6, p0, Lh3/g0;->q:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lr4/bu0;->z()Lh3/m;

    move-result-object p1

    iput-object p1, p0, Lh3/g0;->v:Lh3/m;

    iput-object p7, p0, Lh3/g0;->w:Lr4/ls1;

    iput-object p8, p0, Lh3/g0;->x:Lr4/xt2;

    iput-object p9, p0, Lh3/g0;->y:Lr4/pu2;

    iput-object p10, p0, Lh3/g0;->G:Lr4/im0;

    sget-object p1, Lr4/rz;->r5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lh3/g0;->z:Z

    sget-object p1, Lr4/rz;->q5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lh3/g0;->A:Z

    sget-object p1, Lr4/rz;->s5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lh3/g0;->B:Z

    sget-object p1, Lr4/rz;->u5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lh3/g0;->C:Z

    sget-object p1, Lr4/rz;->t5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lh3/g0;->D:Ljava/lang/String;

    sget-object p1, Lr4/rz;->v5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lh3/g0;->E:Ljava/lang/String;

    sget-object p1, Lr4/rz;->w5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lh3/g0;->I:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A7(Lh3/g0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/g0;->E:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic B7(Lh3/g0;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lh3/g0;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic C7(Lh3/g0;)Lr4/im0;
    .locals 0

    iget-object p0, p0, Lh3/g0;->G:Lr4/im0;

    return-object p0
.end method

.method public static synthetic D7(Lh3/g0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/g0;->H:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic E7(Lh3/g0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lh3/g0;->H:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic F7(Lh3/g0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/g0;->I:Ljava/lang/String;

    return-object p0
.end method

.method public static G7(Landroid/net/Uri;)Z
    .locals 2

    sget-object v0, Lh3/g0;->L:Ljava/util/List;

    sget-object v1, Lh3/g0;->M:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lh3/g0;->n7(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic H7(Lh3/g0;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    const-string p0, "1"

    invoke-static {p1, p2, p0}, Lh3/g0;->r7(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I7(Lh3/g0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lr4/rz;->l5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lr4/rz;->i6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lh3/g0;->x:Lr4/xt2;

    invoke-static {p1}, Lr4/wt2;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-interface {p0, p1}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void

    :cond_1
    iget-object p0, p0, Lh3/g0;->w:Lr4/ls1;

    invoke-virtual {p0}, Lr4/ls1;->d()Lr4/ks1;

    move-result-object p0

    const-string v0, "action"

    invoke-virtual {p0, v0, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-virtual {p0, p2, p3}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-virtual {p0}, Lr4/ks1;->e()V

    return-void
.end method

.method public static final synthetic l7(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nas"

    invoke-static {p0, v0, p1}, Lh3/g0;->r7(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final synthetic m7(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Lh3/g0;->G7(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "nas"

    invoke-static {v1, v2, p1}, Lh3/g0;->r7(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static n7(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static final r7(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&adurl="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "?adurl="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    new-instance p0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s7(Lh3/g0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lh3/g0;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic t7(Lh3/g0;)Lh3/m;
    .locals 0

    iget-object p0, p0, Lh3/g0;->v:Lh3/m;

    return-object p0
.end method

.method public static synthetic u7(Lh3/g0;)Lr4/pu2;
    .locals 0

    iget-object p0, p0, Lh3/g0;->y:Lr4/pu2;

    return-object p0
.end method

.method public static synthetic v7(Lh3/g0;)Z
    .locals 0

    iget-boolean p0, p0, Lh3/g0;->z:Z

    return p0
.end method

.method public static synthetic w7(Lh3/g0;)Z
    .locals 0

    iget-boolean p0, p0, Lh3/g0;->A:Z

    return p0
.end method

.method public static synthetic x7(Lh3/g0;)Z
    .locals 0

    iget-boolean p0, p0, Lh3/g0;->B:Z

    return p0
.end method

.method public static synthetic y7(Lh3/g0;)Z
    .locals 0

    iget-boolean p0, p0, Lh3/g0;->C:Z

    return p0
.end method

.method public static synthetic z7(Lh3/g0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/g0;->D:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final synthetic J7([Lr4/fo1;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh3/g0;->k:Lr4/aq2;

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/aq2;->c(Lr4/h83;)V

    :cond_0
    return-void
.end method

.method public final V6(Lr4/qf0;)V
    .locals 1

    iput-object p1, p0, Lh3/g0;->r:Lr4/qf0;

    iget-object p1, p0, Lh3/g0;->k:Lr4/aq2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lr4/aq2;->a(I)V

    return-void
.end method

.method public final X3(Ljava/util/List;Lf4/a;Lr4/nf0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lf4/a;",
            "Lr4/nf0;",
            ")V"
        }
    .end annotation

    sget-object v0, Lr4/rz;->x5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string p1, "The updating URL feature is not enabled."

    invoke-interface {p3, p1}, Lr4/nf0;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lh3/g0;->p:Lr4/i83;

    new-instance v1, Lh3/s;

    invoke-direct {v1, p0, p1, p2}, Lh3/s;-><init>(Lh3/g0;Ljava/util/List;Lf4/a;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object p1

    invoke-virtual {p0}, Lh3/g0;->q7()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lh3/t;

    invoke-direct {p2, p0}, Lh3/t;-><init>(Lh3/g0;)V

    iget-object v0, p0, Lh3/g0;->p:Lr4/i83;

    invoke-static {p1, p2, v0}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "Asset view map is empty."

    invoke-static {p2}, Lr4/cm0;->e(Ljava/lang/String;)V

    :goto_0
    new-instance p2, Lh3/d0;

    invoke-direct {p2, p0, p3}, Lh3/d0;-><init>(Lh3/g0;Lr4/nf0;)V

    iget-object p3, p0, Lh3/g0;->a:Lr4/bu0;

    invoke-virtual {p3}, Lr4/bu0;->h()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final a0(Lf4/a;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    sget-object v0, Lr4/rz;->H6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const-string p1, "Not registering the webview because the Android API level is lower than Lollopop which has security risks on webviews."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lr4/rz;->I6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lh3/g0;->b:Landroid/content/Context;

    sget-object v0, Lt2/b;->a:Lt2/b;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lh3/g0;->o7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lr4/yt;Lr4/tt;)Lh3/r;

    move-result-object v0

    invoke-virtual {v0}, Lh3/r;->a()Lr4/h83;

    move-result-object v0

    new-instance v1, Lh3/f0;

    invoke-direct {v1, p0}, Lh3/f0;-><init>(Lh3/g0;)V

    iget-object v2, p0, Lh3/g0;->a:Lr4/bu0;

    invoke-virtual {v2}, Lr4/bu0;->h()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    :cond_2
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    if-nez p1, :cond_3

    const-string p1, "The webView cannot be null."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lh3/g0;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "This webview has already been registered."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lh3/g0;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh3/a;

    iget-object v1, p0, Lh3/g0;->d:Lr4/u;

    invoke-direct {v0, p1, v1}, Lh3/a;-><init>(Landroid/webkit/WebView;Lr4/u;)V

    const-string v1, "gmaSdk"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic g7([Lr4/fo1;Ljava/lang/String;Lr4/fo1;)Lr4/h83;
    .locals 5

    const/4 v0, 0x0

    aput-object p3, p1, v0

    iget-object p1, p0, Lh3/g0;->b:Landroid/content/Context;

    iget-object v0, p0, Lh3/g0;->r:Lr4/qf0;

    iget-object v1, v0, Lr4/qf0;->b:Ljava/util/Map;

    iget-object v0, v0, Lr4/qf0;->a:Landroid/view/View;

    invoke-static {p1, v1, v1, v0}, Lb3/f1;->e(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lh3/g0;->b:Landroid/content/Context;

    iget-object v1, p0, Lh3/g0;->r:Lr4/qf0;

    iget-object v1, v1, Lr4/qf0;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lb3/f1;->b(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lh3/g0;->r:Lr4/qf0;

    iget-object v1, v1, Lr4/qf0;->a:Landroid/view/View;

    invoke-static {v1}, Lb3/f1;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lh3/g0;->b:Landroid/content/Context;

    iget-object v3, p0, Lh3/g0;->r:Lr4/qf0;

    iget-object v3, v3, Lr4/qf0;->a:Landroid/view/View;

    invoke-static {v2, v3}, Lb3/f1;->d(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "asset_view_signal"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ad_view_signal"

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    iget-object v0, p0, Lh3/g0;->b:Landroid/content/Context;

    iget-object v1, p0, Lh3/g0;->t:Landroid/graphics/Point;

    iget-object v2, p0, Lh3/g0;->s:Landroid/graphics/Point;

    invoke-static {p1, v0, v1, v2}, Lb3/f1;->f(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "click_signal"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p3, p2, v3}, Lr4/fo1;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic h7(Landroid/net/Uri;)Lr4/h83;
    .locals 2

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    invoke-virtual {p0, v0}, Lh3/g0;->p7(Ljava/lang/String;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lh3/x;

    invoke-direct {v1, p0, p1}, Lh3/x;-><init>(Lh3/g0;Landroid/net/Uri;)V

    iget-object p1, p0, Lh3/g0;->p:Lr4/i83;

    invoke-static {v0, v1, p1}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final i3(Ljava/util/List;Lf4/a;Lr4/nf0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lf4/a;",
            "Lr4/nf0;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lr4/rz;->x5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "The updating URL feature is not enabled."

    invoke-interface {p3, p1}, Lr4/nf0;->s(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string p1, "There should be only 1 click URL."

    invoke-interface {p3, p1}, Lr4/nf0;->s(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sget-object v1, Lh3/g0;->J:Ljava/util/List;

    sget-object v2, Lh3/g0;->K:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lh3/g0;->n7(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Not a Google URL: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lr4/cm0;->f(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lr4/nf0;->c6(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    iget-object p1, p0, Lh3/g0;->p:Lr4/i83;

    new-instance v1, Lh3/u;

    invoke-direct {v1, p0, v0, p2}, Lh3/u;-><init>(Lh3/g0;Landroid/net/Uri;Lf4/a;)V

    invoke-interface {p1, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object p1

    invoke-virtual {p0}, Lh3/g0;->q7()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lh3/v;

    invoke-direct {p2, p0}, Lh3/v;-><init>(Lh3/g0;)V

    iget-object v0, p0, Lh3/g0;->p:Lr4/i83;

    invoke-static {p1, p2, v0}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p2, "Asset view map is empty."

    invoke-static {p2}, Lr4/cm0;->e(Ljava/lang/String;)V

    :goto_0
    new-instance p2, Lh3/e0;

    invoke-direct {p2, p0, p3}, Lh3/e0;-><init>(Lh3/g0;Lr4/nf0;)V

    iget-object p3, p0, Lh3/g0;->a:Lr4/bu0;

    invoke-virtual {p3}, Lr4/bu0;->h()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic i7(Landroid/net/Uri;Lf4/a;)Landroid/net/Uri;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lh3/g0;->d:Lr4/u;

    iget-object v1, p0, Lh3/g0;->b:Landroid/content/Context;

    invoke-static {p2}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lr4/u;->e(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lr4/v; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, ""

    invoke-static {v0, p2}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p2, "ms"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to append spam signals to click url."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic j7(Ljava/util/ArrayList;)Lr4/h83;
    .locals 2

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"

    invoke-virtual {p0, v0}, Lh3/g0;->p7(Ljava/lang/String;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lh3/w;

    invoke-direct {v1, p0, p1}, Lh3/w;-><init>(Lh3/g0;Ljava/util/List;)V

    iget-object p1, p0, Lh3/g0;->p:Lr4/i83;

    invoke-static {v0, v1, p1}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final k5(Lf4/a;Lr4/zk0;Lr4/sk0;)V
    .locals 6

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lh3/g0;->b:Landroid/content/Context;

    iget-object v2, p2, Lr4/zk0;->a:Ljava/lang/String;

    iget-object v3, p2, Lr4/zk0;->b:Ljava/lang/String;

    iget-object v4, p2, Lr4/zk0;->d:Lr4/yt;

    iget-object v5, p2, Lr4/zk0;->k:Lr4/tt;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lh3/g0;->o7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lr4/yt;Lr4/tt;)Lh3/r;

    move-result-object p1

    invoke-virtual {p1}, Lh3/r;->a()Lr4/h83;

    move-result-object p1

    new-instance p2, Lh3/c0;

    invoke-direct {p2, p0, p3}, Lh3/c0;-><init>(Lh3/g0;Lr4/sk0;)V

    iget-object p3, p0, Lh3/g0;->a:Lr4/bu0;

    invoke-virtual {p3}, Lr4/bu0;->h()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final synthetic k7(Ljava/util/List;Lf4/a;)Ljava/util/ArrayList;
    .locals 4

    iget-object v0, p0, Lh3/g0;->d:Lr4/u;

    invoke-virtual {v0}, Lr4/u;->b()Lr4/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh3/g0;->d:Lr4/u;

    invoke-virtual {v0}, Lr4/u;->b()Lr4/q;

    move-result-object v0

    iget-object v1, p0, Lh3/g0;->b:Landroid/content/Context;

    invoke-static {p2}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lr4/q;->d(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Lh3/g0;->G7(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not a Google URL: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr4/cm0;->f(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "ms"

    invoke-static {v1, v2, p2}, Lh3/g0;->r7(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Empty impression URLs result."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to get view signals."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final o7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lr4/yt;Lr4/tt;)Lh3/r;
    .locals 2

    iget-object v0, p0, Lh3/g0;->a:Lr4/bu0;

    invoke-virtual {v0}, Lr4/bu0;->x()Lh3/q;

    move-result-object v0

    new-instance v1, Lr4/s61;

    invoke-direct {v1}, Lr4/s61;-><init>()V

    invoke-virtual {v1, p1}, Lr4/s61;->e(Landroid/content/Context;)Lr4/s61;

    new-instance p1, Lr4/fp2;

    invoke-direct {p1}, Lr4/fp2;-><init>()V

    if-nez p2, :cond_0

    const-string p2, "adUnitId"

    :cond_0
    invoke-virtual {p1, p2}, Lr4/fp2;->L(Ljava/lang/String;)Lr4/fp2;

    if-nez p5, :cond_1

    new-instance p2, Lr4/ut;

    invoke-direct {p2}, Lr4/ut;-><init>()V

    invoke-virtual {p2}, Lr4/ut;->a()Lr4/tt;

    move-result-object p5

    :cond_1
    invoke-virtual {p1, p5}, Lr4/fp2;->G(Lr4/tt;)Lr4/fp2;

    if-nez p4, :cond_2

    new-instance p4, Lr4/yt;

    invoke-direct {p4}, Lr4/yt;-><init>()V

    :cond_2
    invoke-virtual {p1, p4}, Lr4/fp2;->I(Lr4/yt;)Lr4/fp2;

    invoke-virtual {p1}, Lr4/fp2;->l()Lr4/hp2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    invoke-virtual {v1}, Lr4/s61;->h()Lr4/u61;

    move-result-object p1

    invoke-interface {v0, p1}, Lh3/q;->b(Lr4/u61;)Lh3/q;

    new-instance p1, Lh3/i0;

    invoke-direct {p1}, Lh3/i0;-><init>()V

    invoke-virtual {p1, p3}, Lh3/i0;->b(Ljava/lang/String;)Lh3/i0;

    new-instance p2, Lh3/k0;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lh3/k0;-><init>(Lh3/i0;Lh3/j0;)V

    invoke-interface {v0, p2}, Lh3/q;->c(Lh3/k0;)Lh3/q;

    new-instance p1, Lr4/zc1;

    invoke-direct {p1}, Lr4/zc1;-><init>()V

    invoke-interface {v0}, Lh3/q;->zza()Lh3/r;

    move-result-object p1

    return-object p1
.end method

.method public final p7(Ljava/lang/String;)Lr4/h83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lr4/h83<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lr4/fo1;

    iget-object v1, p0, Lh3/g0;->k:Lr4/aq2;

    invoke-virtual {v1}, Lr4/aq2;->b()Lr4/h83;

    move-result-object v1

    new-instance v2, Lh3/a0;

    invoke-direct {v2, p0, v0, p1}, Lh3/a0;-><init>(Lh3/g0;[Lr4/fo1;Ljava/lang/String;)V

    iget-object p1, p0, Lh3/g0;->p:Lr4/i83;

    invoke-static {v1, v2, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    new-instance v1, Lh3/b0;

    invoke-direct {v1, p0, v0}, Lh3/b0;-><init>(Lh3/g0;[Lr4/fo1;)V

    iget-object v0, p0, Lh3/g0;->p:Lr4/i83;

    invoke-interface {p1, v1, v0}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {p1}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object p1

    sget-object v0, Lr4/rz;->y5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lh3/g0;->q:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v0, v1, v2, v3}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object p1

    check-cast p1, Lr4/o73;

    sget-object v0, Lh3/y;->a:Lr4/p03;

    iget-object v1, p0, Lh3/g0;->p:Lr4/i83;

    invoke-static {p1, v0, v1}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    const-class v0, Ljava/lang/Exception;

    sget-object v1, Lh3/z;->a:Lr4/p03;

    iget-object v2, p0, Lh3/g0;->p:Lr4/i83;

    invoke-static {p1, v0, v1, v2}, Lr4/y73;->f(Lr4/h83;Ljava/lang/Class;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final q7()Z
    .locals 1

    iget-object v0, p0, Lh3/g0;->r:Lr4/qf0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lr4/qf0;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf(Lf4/a;)V
    .locals 2

    sget-object v0, Lr4/rz;->x5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    iget-object v0, p0, Lh3/g0;->r:Lr4/qf0;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lr4/qf0;->a:Landroid/view/View;

    :goto_0
    invoke-static {p1, v0}, Lb3/f1;->h(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lh3/g0;->s:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lh3/g0;->s:Landroid/graphics/Point;

    iput-object v0, p0, Lh3/g0;->t:Landroid/graphics/Point;

    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v0, p0, Lh3/g0;->s:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lh3/g0;->d:Lr4/u;

    invoke-virtual {v0, p1}, Lr4/u;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method
