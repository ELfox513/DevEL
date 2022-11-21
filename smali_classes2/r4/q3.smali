.class public final Lr4/q3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/m7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/j7;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/m7;

    invoke-direct {v0, p1, p2}, Lr4/m7;-><init>(Landroid/content/Context;Lr4/j7;)V

    iput-object v0, p0, Lr4/q3;->a:Lr4/m7;

    return-void
.end method


# virtual methods
.method public final a(Lr4/aw3;)Lr4/q3;
    .locals 1

    iget-object v0, p0, Lr4/q3;->a:Lr4/m7;

    invoke-virtual {v0, p1}, Lr4/m7;->l(Lr4/aw3;)Lr4/m7;

    return-object p0
.end method

.method public final b(Lr4/h5;)Lr4/q3;
    .locals 1

    iget-object v0, p0, Lr4/q3;->a:Lr4/m7;

    invoke-virtual {v0, p1}, Lr4/m7;->m(Lr4/h5;)Lr4/m7;

    return-object p0
.end method

.method public final c()Lr4/q7;
    .locals 1

    iget-object v0, p0, Lr4/q3;->a:Lr4/m7;

    invoke-virtual {v0}, Lr4/m7;->n()Lr4/q7;

    move-result-object v0

    return-object v0
.end method
