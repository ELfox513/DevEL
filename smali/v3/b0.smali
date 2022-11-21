.class public final Lv3/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c$e;


# instance fields
.field public final synthetic a:Lv3/c0;


# direct methods
.method public constructor <init>(Lv3/c0;)V
    .locals 0

    iput-object p1, p0, Lv3/b0;->a:Lv3/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final O0()V
    .locals 2

    iget-object v0, p0, Lv3/b0;->a:Lv3/c0;

    iget-object v0, v0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lv3/a0;

    invoke-direct {v1, p0}, Lv3/a0;-><init>(Lv3/b0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
