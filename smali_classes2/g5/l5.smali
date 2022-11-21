.class public final Lg5/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/pa;

.field public final synthetic b:Lg5/u5;


# direct methods
.method public constructor <init>(Lg5/u5;Lg5/pa;)V
    .locals 0

    iput-object p1, p0, Lg5/l5;->b:Lg5/u5;

    iput-object p2, p0, Lg5/l5;->a:Lg5/pa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg5/l5;->b:Lg5/u5;

    invoke-static {v0}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v0

    invoke-virtual {v0}, Lg5/ba;->a()V

    iget-object v0, p0, Lg5/l5;->b:Lg5/u5;

    invoke-static {v0}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v0

    iget-object v1, p0, Lg5/l5;->a:Lg5/pa;

    invoke-virtual {v0}, Lg5/ba;->P()Lg5/y4;

    move-result-object v2

    invoke-virtual {v2}, Lg5/v5;->c()V

    invoke-virtual {v0}, Lg5/ba;->b()V

    iget-object v2, v1, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {v2}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg5/ba;->R(Lg5/pa;)Lg5/g5;

    return-void
.end method
