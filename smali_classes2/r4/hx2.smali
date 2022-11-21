.class public final Lr4/hx2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:I = 0x1


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lj5/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/i<",
            "Lr4/lz2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lj5/i;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lj5/i<",
            "Lr4/lz2;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/hx2;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/hx2;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/hx2;->c:Lj5/i;

    iput-boolean p4, p0, Lr4/hx2;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lr4/hx2;
    .locals 2

    new-instance v0, Lr4/ex2;

    invoke-direct {v0, p0, p2}, Lr4/ex2;-><init>(Landroid/content/Context;Z)V

    invoke-static {p1, v0}, Lj5/l;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lj5/i;

    move-result-object v0

    new-instance v1, Lr4/hx2;

    invoke-direct {v1, p0, p1, v0, p2}, Lr4/hx2;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lj5/i;Z)V

    return-object v1
.end method

.method public static g(I)V
    .locals 0

    sput p0, Lr4/hx2;->e:I

    return-void
.end method


# virtual methods
.method public final b(IJ)Lj5/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lj5/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Lr4/hx2;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final c(IJLjava/lang/Exception;)Lj5/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lr4/hx2;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final d(IJLjava/lang/String;Ljava/util/Map;)Lj5/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lj5/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lr4/hx2;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final e(ILjava/lang/String;)Lj5/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lr4/hx2;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final f(IJLjava/lang/String;)Lj5/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lr4/hx2;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lj5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-boolean p6, p0, Lr4/hx2;->d:Z

    if-nez p6, :cond_0

    iget-object p1, p0, Lr4/hx2;->c:Lj5/i;

    iget-object p2, p0, Lr4/hx2;->b:Ljava/util/concurrent/Executor;

    sget-object p3, Lr4/fx2;->a:Lj5/a;

    invoke-virtual {p1, p2, p3}, Lj5/i;->h(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lr4/oa4;->C()Lr4/ka4;

    move-result-object p6

    iget-object v0, p0, Lr4/hx2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lr4/ka4;->v(Ljava/lang/String;)Lr4/ka4;

    invoke-virtual {p6, p2, p3}, Lr4/ka4;->x(J)Lr4/ka4;

    sget p2, Lr4/hx2;->e:I

    invoke-virtual {p6, p2}, Lr4/ka4;->D(I)Lr4/ka4;

    if-eqz p4, :cond_1

    invoke-static {p4}, Lr4/n13;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Lr4/ka4;->z(Ljava/lang/String;)Lr4/ka4;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Lr4/ka4;->A(Ljava/lang/String;)Lr4/ka4;

    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual {p6, p7}, Lr4/ka4;->B(Ljava/lang/String;)Lr4/ka4;

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p6, p5}, Lr4/ka4;->C(Ljava/lang/String;)Lr4/ka4;

    :cond_3
    iget-object p2, p0, Lr4/hx2;->c:Lj5/i;

    iget-object p3, p0, Lr4/hx2;->b:Ljava/util/concurrent/Executor;

    new-instance p4, Lr4/gx2;

    invoke-direct {p4, p6, p1}, Lr4/gx2;-><init>(Lr4/ka4;I)V

    invoke-virtual {p2, p3, p4}, Lj5/i;->h(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
