.class public final Lr4/do1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lr4/fo1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lz2/a;

.field public final b:Lr4/os0;

.field public final c:Landroid/content/Context;

.field public final d:Lr4/ls1;

.field public final e:Lr4/xt2;

.field public final f:Lr4/c12;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lr4/u;

.field public final i:Lr4/im0;

.field public final j:Lr4/pu2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/u;Lr4/im0;Lz2/a;Lr4/os0;Lr4/c12;Lr4/pu2;Lr4/ls1;Lr4/xt2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/do1;->c:Landroid/content/Context;

    iput-object p2, p0, Lr4/do1;->g:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/do1;->h:Lr4/u;

    iput-object p4, p0, Lr4/do1;->i:Lr4/im0;

    iput-object p5, p0, Lr4/do1;->a:Lz2/a;

    iput-object p6, p0, Lr4/do1;->b:Lr4/os0;

    iput-object p7, p0, Lr4/do1;->f:Lr4/c12;

    iput-object p8, p0, Lr4/do1;->j:Lr4/pu2;

    iput-object p9, p0, Lr4/do1;->d:Lr4/ls1;

    iput-object p10, p0, Lr4/do1;->e:Lr4/xt2;

    return-void
.end method

.method public static synthetic a(Lr4/do1;)Lz2/a;
    .locals 0

    iget-object p0, p0, Lr4/do1;->a:Lz2/a;

    return-object p0
.end method

.method public static synthetic b(Lr4/do1;)Lr4/os0;
    .locals 0

    iget-object p0, p0, Lr4/do1;->b:Lr4/os0;

    return-object p0
.end method

.method public static synthetic c(Lr4/do1;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lr4/do1;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic d(Lr4/do1;)Lr4/ls1;
    .locals 0

    iget-object p0, p0, Lr4/do1;->d:Lr4/ls1;

    return-object p0
.end method

.method public static synthetic e(Lr4/do1;)Lr4/xt2;
    .locals 0

    iget-object p0, p0, Lr4/do1;->e:Lr4/xt2;

    return-object p0
.end method

.method public static synthetic f(Lr4/do1;)Lr4/c12;
    .locals 0

    iget-object p0, p0, Lr4/do1;->f:Lr4/c12;

    return-object p0
.end method

.method public static synthetic g(Lr4/do1;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lr4/do1;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic h(Lr4/do1;)Lr4/u;
    .locals 0

    iget-object p0, p0, Lr4/do1;->h:Lr4/u;

    return-object p0
.end method

.method public static synthetic i(Lr4/do1;)Lr4/im0;
    .locals 0

    iget-object p0, p0, Lr4/do1;->i:Lr4/im0;

    return-object p0
.end method

.method public static synthetic j(Lr4/do1;)Lr4/pu2;
    .locals 0

    iget-object p0, p0, Lr4/do1;->j:Lr4/pu2;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lr4/fo1;

    invoke-direct {v0, p0}, Lr4/fo1;-><init>(Lr4/do1;)V

    invoke-virtual {v0}, Lr4/fo1;->b()V

    return-object v0
.end method
