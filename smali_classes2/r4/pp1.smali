.class public final Lr4/pp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ge0;


# instance fields
.field public final synthetic a:Lr4/qp1;


# direct methods
.method public constructor <init>(Lr4/qp1;)V
    .locals 0

    iput-object p1, p0, Lr4/pp1;->a:Lr4/qp1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lr4/pp1;->a:Lr4/qp1;

    invoke-static {v0}, Lr4/qp1;->a(Lr4/qp1;)Lr4/r81;

    move-result-object v0

    invoke-virtual {v0}, Lr4/r81;->zza()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/pp1;->a:Lr4/qp1;

    invoke-static {v0}, Lr4/qp1;->b(Lr4/qp1;)Lr4/bc1;

    move-result-object v0

    invoke-virtual {v0}, Lr4/bc1;->zza()V

    return-void
.end method

.method public final c(IIII)V
    .locals 0

    iget-object p1, p0, Lr4/pp1;->a:Lr4/qp1;

    invoke-static {p1}, Lr4/qp1;->a(Lr4/qp1;)Lr4/r81;

    move-result-object p1

    invoke-virtual {p1}, Lr4/r81;->b()V

    return-void
.end method
