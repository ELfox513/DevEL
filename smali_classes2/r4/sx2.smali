.class public final Lr4/sx2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/sx2;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/sx2;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lr4/jy2;->C()Lr4/hy2;

    move-result-object v0

    iget-object v1, p0, Lr4/sx2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/hy2;->v(Ljava/lang/String;)Lr4/hy2;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lr4/hy2;->z(I)Lr4/hy2;

    invoke-static {}, Lr4/fy2;->C()Lr4/ey2;

    move-result-object v2

    invoke-virtual {v2, p1}, Lr4/ey2;->v(Ljava/lang/String;)Lr4/ey2;

    invoke-virtual {v2, v1}, Lr4/ey2;->x(I)Lr4/ey2;

    invoke-virtual {v0, v2}, Lr4/hy2;->x(Lr4/ey2;)Lr4/hy2;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/jy2;

    iget-object v0, p0, Lr4/sx2;->a:Landroid/content/Context;

    iget-object v1, p0, Lr4/sx2;->b:Landroid/os/Looper;

    new-instance v2, Lr4/tx2;

    invoke-direct {v2, v0, v1, p1}, Lr4/tx2;-><init>(Landroid/content/Context;Landroid/os/Looper;Lr4/jy2;)V

    invoke-virtual {v2}, Lr4/tx2;->a()V

    return-void
.end method
