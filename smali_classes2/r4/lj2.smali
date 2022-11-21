.class public final synthetic Lr4/lj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/mj2;

.field public final b:Lr4/lt;


# direct methods
.method public constructor <init>(Lr4/mj2;Lr4/lt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lj2;->a:Lr4/mj2;

    iput-object p2, p0, Lr4/lj2;->b:Lr4/lt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/lj2;->a:Lr4/mj2;

    iget-object v1, p0, Lr4/lj2;->b:Lr4/lt;

    iget-object v0, v0, Lr4/mj2;->c:Lr4/pj2;

    invoke-static {v0}, Lr4/pj2;->e(Lr4/pj2;)Lr4/fk2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr4/fk2;->B(Lr4/lt;)V

    return-void
.end method
