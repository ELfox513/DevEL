.class public final synthetic Lt4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/m;


# instance fields
.field public final synthetic a:Lt4/p;


# direct methods
.method public synthetic constructor <init>(Lt4/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4/m;->a:Lt4/p;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lt4/m;->a:Lt4/p;

    check-cast p1, Lt4/d;

    check-cast p2, Lj5/j;

    invoke-virtual {p1}, Lx3/c;->B()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lt4/g;

    new-instance v1, Lm3/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lm3/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lt4/o;

    invoke-direct {v2, v0, p2}, Lt4/o;-><init>(Lt4/p;Lj5/j;)V

    invoke-virtual {p1, v1, v2}, Lt4/g;->t0(Lm3/d;Lt4/f;)V

    return-void
.end method
