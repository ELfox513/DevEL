.class public final synthetic Lr4/ba2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/ca2;

.field public final b:Lr4/lt;


# direct methods
.method public constructor <init>(Lr4/ca2;Lr4/lt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ba2;->a:Lr4/ca2;

    iput-object p2, p0, Lr4/ba2;->b:Lr4/lt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/ba2;->a:Lr4/ca2;

    iget-object v1, p0, Lr4/ba2;->b:Lr4/lt;

    iget-object v0, v0, Lr4/ca2;->c:Lr4/da2;

    invoke-static {v0}, Lr4/da2;->d(Lr4/da2;)Lr4/q92;

    move-result-object v0

    invoke-virtual {v0}, Lr4/q92;->e()Lr4/m71;

    move-result-object v0

    invoke-interface {v0, v1}, Lr4/m71;->B(Lr4/lt;)V

    return-void
.end method
