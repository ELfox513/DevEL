.class public Lr4/o11;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/g31;

.field public final b:Landroid/view/View;

.field public final c:Lr4/qo2;

.field public final d:Lr4/cs0;


# direct methods
.method public constructor <init>(Landroid/view/View;Lr4/cs0;Lr4/g31;Lr4/qo2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/o11;->b:Landroid/view/View;

    iput-object p2, p0, Lr4/o11;->d:Lr4/cs0;

    iput-object p3, p0, Lr4/o11;->a:Lr4/g31;

    iput-object p4, p0, Lr4/o11;->c:Lr4/qo2;

    return-void
.end method

.method public static final f(Landroid/content/Context;Lr4/im0;Lr4/no2;Lr4/hp2;)Lr4/ve1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr4/im0;",
            "Lr4/no2;",
            "Lr4/hp2;",
            ")",
            "Lr4/ve1<",
            "Lr4/y81;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/ve1;

    new-instance v1, Lr4/m11;

    invoke-direct {v1, p0, p1, p2, p3}, Lr4/m11;-><init>(Landroid/content/Context;Lr4/im0;Lr4/no2;Lr4/hp2;)V

    sget-object p0, Lr4/qm0;->f:Lr4/i83;

    invoke-direct {v0, v1, p0}, Lr4/ve1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static final g(Lr4/z21;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/z21;",
            ")",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/y81;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lr4/ve1;

    sget-object v1, Lr4/qm0;->f:Lr4/i83;

    invoke-direct {v0, p0, v1}, Lr4/ve1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lr4/x21;)Lr4/ve1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/x21;",
            ")",
            "Lr4/ve1<",
            "Lr4/y81;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/ve1;

    sget-object v1, Lr4/qm0;->e:Lr4/i83;

    invoke-direct {v0, p0, v1}, Lr4/ve1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lr4/cs0;
    .locals 1

    iget-object v0, p0, Lr4/o11;->d:Lr4/cs0;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lr4/o11;->b:Landroid/view/View;

    return-object v0
.end method

.method public final c()Lr4/g31;
    .locals 1

    iget-object v0, p0, Lr4/o11;->a:Lr4/g31;

    return-object v0
.end method

.method public final d()Lr4/qo2;
    .locals 1

    iget-object v0, p0, Lr4/o11;->c:Lr4/qo2;

    return-object v0
.end method

.method public e(Ljava/util/Set;)Lr4/w81;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/y81;",
            ">;>;)",
            "Lr4/w81;"
        }
    .end annotation

    new-instance v0, Lr4/w81;

    invoke-direct {v0, p1}, Lr4/w81;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
