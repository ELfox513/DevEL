.class public final synthetic Lr4/ub2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dg2;


# instance fields
.field public final a:Lr4/vb2;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lr4/vb2;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ub2;->a:Lr4/vb2;

    iput-object p2, p0, Lr4/ub2;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lr4/ub2;->a:Lr4/vb2;

    iget-object v1, p0, Lr4/ub2;->b:Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lr4/vb2;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
