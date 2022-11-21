.class public final Lr4/kj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc4/f;

.field public final b:Lr4/ij0;


# direct methods
.method public constructor <init>(Lc4/f;Lr4/ij0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/kj0;->a:Lc4/f;

    iput-object p2, p0, Lr4/kj0;->b:Lr4/ij0;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lr4/kj0;
    .locals 0

    invoke-static {p0}, Lr4/jk0;->d(Landroid/content/Context;)Lr4/jk0;

    move-result-object p0

    invoke-virtual {p0}, Lr4/jk0;->b()Lr4/kj0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object v0, p0, Lr4/kj0;->b:Lr4/ij0;

    iget-object v1, p0, Lr4/kj0;->a:Lc4/f;

    invoke-interface {v1}, Lc4/f;->a()J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lr4/ij0;->a(IJ)V

    return-void
.end method

.method public final c(Lr4/sy;)V
    .locals 3

    iget-object p1, p0, Lr4/kj0;->b:Lr4/ij0;

    iget-object v0, p0, Lr4/kj0;->a:Lc4/f;

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Lr4/ij0;->a(IJ)V

    return-void
.end method

.method public final d(IJ)V
    .locals 1

    iget-object v0, p0, Lr4/kj0;->b:Lr4/ij0;

    invoke-virtual {v0, p1, p2, p3}, Lr4/ij0;->a(IJ)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lr4/kj0;->b:Lr4/ij0;

    invoke-virtual {v0}, Lr4/ij0;->b()V

    return-void
.end method
