.class public final synthetic Lz3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/m;


# instance fields
.field public final a:Lx3/u;


# direct methods
.method public constructor <init>(Lx3/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz3/b;->a:Lx3/u;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lz3/b;->a:Lx3/u;

    check-cast p1, Lz3/e;

    check-cast p2, Lj5/j;

    sget-object v1, Lz3/d;->k:Lu3/a$g;

    invoke-virtual {p1}, Lx3/c;->B()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lz3/a;

    invoke-virtual {p1, v0}, Lz3/a;->L0(Lx3/u;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lj5/j;->c(Ljava/lang/Object;)V

    return-void
.end method
