.class public final Lr4/iz0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr4/na0;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lr4/oz0;

.field public final e:Lr4/u50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u50<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/u50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u50<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr4/na0;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/fz0;

    invoke-direct {v0, p0}, Lr4/fz0;-><init>(Lr4/iz0;)V

    iput-object v0, p0, Lr4/iz0;->e:Lr4/u50;

    new-instance v0, Lr4/hz0;

    invoke-direct {v0, p0}, Lr4/hz0;-><init>(Lr4/iz0;)V

    iput-object v0, p0, Lr4/iz0;->f:Lr4/u50;

    iput-object p1, p0, Lr4/iz0;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/iz0;->b:Lr4/na0;

    iput-object p3, p0, Lr4/iz0;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lr4/iz0;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lr4/iz0;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic b(Lr4/iz0;)Lr4/oz0;
    .locals 0

    iget-object p0, p0, Lr4/iz0;->d:Lr4/oz0;

    return-object p0
.end method

.method public static synthetic g(Lr4/iz0;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "hashCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lr4/iz0;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final c(Lr4/oz0;)V
    .locals 3

    iget-object v0, p0, Lr4/iz0;->b:Lr4/na0;

    iget-object v1, p0, Lr4/iz0;->e:Lr4/u50;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lr4/na0;->b(Ljava/lang/String;Lr4/u50;)V

    iget-object v0, p0, Lr4/iz0;->b:Lr4/na0;

    iget-object v1, p0, Lr4/iz0;->f:Lr4/u50;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lr4/na0;->b(Ljava/lang/String;Lr4/u50;)V

    iput-object p1, p0, Lr4/iz0;->d:Lr4/oz0;

    return-void
.end method

.method public final d(Lr4/cs0;)V
    .locals 2

    iget-object v0, p0, Lr4/iz0;->e:Lr4/u50;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    iget-object v0, p0, Lr4/iz0;->f:Lr4/u50;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method

.method public final e(Lr4/cs0;)V
    .locals 2

    iget-object v0, p0, Lr4/iz0;->e:Lr4/u50;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->v0(Ljava/lang/String;Lr4/u50;)V

    iget-object v0, p0, Lr4/iz0;->f:Lr4/u50;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->v0(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lr4/iz0;->b:Lr4/na0;

    iget-object v1, p0, Lr4/iz0;->e:Lr4/u50;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lr4/na0;->c(Ljava/lang/String;Lr4/u50;)V

    iget-object v0, p0, Lr4/iz0;->b:Lr4/na0;

    iget-object v1, p0, Lr4/iz0;->f:Lr4/u50;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lr4/na0;->c(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method
