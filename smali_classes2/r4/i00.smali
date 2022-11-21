.class public final Lr4/i00;
.super Lr4/j00;
.source "SourceFile"


# instance fields
.field public final a:Lz2/f;

.field public final b:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lz2/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lr4/j00;-><init>()V

    iput-object p1, p0, Lr4/i00;->a:Lz2/f;

    iput-object p2, p0, Lr4/i00;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/i00;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/i00;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/i00;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lr4/i00;->a:Lz2/f;

    invoke-interface {v0}, Lz2/f;->a()V

    return-void
.end method

.method public final c0(Lf4/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/i00;->a:Lz2/f;

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lz2/f;->c(Landroid/view/View;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lr4/i00;->a:Lz2/f;

    invoke-interface {v0}, Lz2/f;->b()V

    return-void
.end method
