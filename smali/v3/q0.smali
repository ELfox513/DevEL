.class public final Lv3/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lv3/t0;


# direct methods
.method public constructor <init>(Lv3/t0;)V
    .locals 0

    iput-object p1, p0, Lv3/q0;->a:Lv3/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lv3/q0;->a:Lv3/t0;

    invoke-static {v0}, Lv3/t0;->e3(Lv3/t0;)Lv3/s0;

    move-result-object v0

    new-instance v1, Lt3/b;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lt3/b;-><init>(I)V

    invoke-interface {v0, v1}, Lv3/s0;->c(Lt3/b;)V

    return-void
.end method
