.class public final Lr4/rx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/os/Bundle;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/os/Bundle;

.field public final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Date;

.field public h:Ljava/lang/String;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:Landroid/location/Location;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr4/rx;->a:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lr4/rx;->b:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr4/rx;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr4/rx;->d:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lr4/rx;->e:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr4/rx;->f:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/rx;->i:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lr4/rx;->j:I

    iput v0, p0, Lr4/rx;->n:I

    const v0, 0xea60

    iput v0, p0, Lr4/rx;->q:I

    return-void
.end method

.method public static synthetic e(Lr4/rx;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lr4/rx;->a:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic f(Lr4/rx;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lr4/rx;->b:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic g(Lr4/rx;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lr4/rx;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic h(Lr4/rx;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lr4/rx;->d:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic i(Lr4/rx;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lr4/rx;->e:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic j(Lr4/rx;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lr4/rx;->f:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic k(Lr4/rx;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lr4/rx;->g:Ljava/util/Date;

    return-object p0
.end method

.method public static synthetic l(Lr4/rx;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr4/rx;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic m(Lr4/rx;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lr4/rx;->i:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic n(Lr4/rx;)I
    .locals 0

    iget p0, p0, Lr4/rx;->j:I

    return p0
.end method

.method public static synthetic o(Lr4/rx;)Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lr4/rx;->k:Landroid/location/Location;

    return-object p0
.end method

.method public static synthetic p(Lr4/rx;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr4/rx;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic q(Lr4/rx;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr4/rx;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic r(Lr4/rx;)I
    .locals 0

    iget p0, p0, Lr4/rx;->n:I

    return p0
.end method

.method public static synthetic s(Lr4/rx;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/rx;->o:Z

    return p0
.end method

.method public static synthetic t(Lr4/rx;)Li3/a;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic u(Lr4/rx;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr4/rx;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic v(Lr4/rx;)I
    .locals 0

    iget p0, p0, Lr4/rx;->q:I

    return p0
.end method


# virtual methods
.method public final A(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lr4/rx;->g:Ljava/util/Date;

    return-void
.end method

.method public final a(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lr4/rx;->j:I

    return-void
.end method

.method public final b(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lr4/rx;->k:Landroid/location/Location;

    return-void
.end method

.method public final c(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lr4/rx;->n:I

    return-void
.end method

.method public final d(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lr4/rx;->o:Z

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/rx;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final x(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lr4/rx;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/rx;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lr4/rx;->d:Ljava/util/HashSet;

    const-string v0, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
