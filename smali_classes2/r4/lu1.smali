.class public final synthetic Lr4/lu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/pu1;

.field public final b:Lr4/vm0;


# direct methods
.method public constructor <init>(Lr4/pu1;Lr4/vm0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lu1;->a:Lr4/pu1;

    iput-object p2, p0, Lr4/lu1;->b:Lr4/vm0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/lu1;->b:Lr4/vm0;

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    invoke-virtual {v1}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v1

    invoke-interface {v1}, Lb3/y1;->p()Lr4/hl0;

    move-result-object v1

    invoke-virtual {v1}, Lr4/hl0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method
