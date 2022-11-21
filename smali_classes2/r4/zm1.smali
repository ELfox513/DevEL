.class public final Lr4/zm1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lr4/zz0;

.field public final c:Lr4/xe1;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lr4/zz0;Lr4/xe1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zm1;->a:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/zm1;->c:Lr4/xe1;

    iput-object p2, p0, Lr4/zm1;->b:Lr4/zz0;

    return-void
.end method


# virtual methods
.method public final a(Lr4/cs0;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/zm1;->c:Lr4/xe1;

    invoke-interface {p1}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/xe1;->T0(Landroid/view/View;)V

    iget-object v0, p0, Lr4/zm1;->c:Lr4/xe1;

    new-instance v1, Lr4/um1;

    invoke-direct {v1, p1}, Lr4/um1;-><init>(Lr4/cs0;)V

    iget-object v2, p0, Lr4/zm1;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lr4/zm1;->c:Lr4/xe1;

    new-instance v1, Lr4/vm1;

    invoke-direct {v1, p1}, Lr4/vm1;-><init>(Lr4/cs0;)V

    iget-object v2, p0, Lr4/zm1;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lr4/zm1;->c:Lr4/xe1;

    iget-object v1, p0, Lr4/zm1;->b:Lr4/zz0;

    iget-object v2, p0, Lr4/zm1;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lr4/zm1;->b:Lr4/zz0;

    invoke-virtual {v0, p1}, Lr4/zz0;->a(Lr4/cs0;)V

    new-instance v0, Lr4/xm1;

    invoke-direct {v0, p0}, Lr4/xm1;-><init>(Lr4/zm1;)V

    const-string v1, "/trackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    new-instance v0, Lr4/ym1;

    invoke-direct {v0, p0}, Lr4/ym1;-><init>(Lr4/zm1;)V

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method

.method public final synthetic b(Lr4/cs0;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lr4/zm1;->b:Lr4/zz0;

    invoke-virtual {p1}, Lr4/zz0;->b()V

    return-void
.end method

.method public final synthetic c(Lr4/cs0;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lr4/zm1;->b:Lr4/zz0;

    invoke-virtual {p1}, Lr4/zz0;->c()V

    return-void
.end method
