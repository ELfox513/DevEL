.class public abstract Lr4/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr4/v0;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lr4/za4;

.field public f:Ljava/lang/reflect/Method;

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/e2;->a:Ljava/lang/String;

    iput-object p1, p0, Lr4/e2;->b:Lr4/v0;

    iput-object p2, p0, Lr4/e2;->c:Ljava/lang/String;

    iput-object p3, p0, Lr4/e2;->d:Ljava/lang/String;

    iput-object p4, p0, Lr4/e2;->e:Lr4/za4;

    iput p5, p0, Lr4/e2;->g:I

    iput p6, p0, Lr4/e2;->h:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()Ljava/lang/Void;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lr4/e2;->b:Lr4/v0;

    iget-object v4, p0, Lr4/e2;->c:Ljava/lang/String;

    iget-object v5, p0, Lr4/e2;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lr4/v0;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lr4/e2;->a()V

    iget-object v3, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v3}, Lr4/v0;->j()Lr4/p;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v6, p0, Lr4/e2;->g:I

    const/high16 v3, -0x80000000

    if-eq v6, v3, :cond_1

    iget v5, p0, Lr4/e2;->h:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v7, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lr4/p;->c(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/e2;->b()Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
