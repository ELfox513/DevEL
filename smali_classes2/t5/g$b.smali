.class public Lt5/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/g;->a(Lm5/c;Lr6/g;Lq6/a;Lq6/a;)Lt5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lx5/l;

.field public final synthetic c:Le6/d;


# direct methods
.method public constructor <init>(ZLx5/l;Le6/d;)V
    .locals 0

    iput-boolean p1, p0, Lt5/g$b;->a:Z

    iput-object p2, p0, Lt5/g$b;->b:Lx5/l;

    iput-object p3, p0, Lt5/g$b;->c:Le6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    iget-boolean v0, p0, Lt5/g$b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt5/g$b;->b:Lx5/l;

    iget-object v1, p0, Lt5/g$b;->c:Le6/d;

    invoke-virtual {v0, v1}, Lx5/l;->g(Le6/e;)Lj5/i;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt5/g$b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
