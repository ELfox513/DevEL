.class public Lr4/m74;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final d:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public final i:Lr4/y33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/y33<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lr4/m74;->a:I

    iput v0, p0, Lr4/m74;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/m74;->c:Z

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v0

    iput-object v0, p0, Lr4/m74;->d:Lr4/o33;

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v0

    iput-object v0, p0, Lr4/m74;->e:Lr4/o33;

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v0

    iput-object v0, p0, Lr4/m74;->f:Lr4/o33;

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v0

    iput-object v0, p0, Lr4/m74;->g:Lr4/o33;

    const/4 v0, 0x0

    iput v0, p0, Lr4/m74;->h:I

    invoke-static {}, Lr4/y33;->o()Lr4/y33;

    move-result-object v0

    iput-object v0, p0, Lr4/m74;->i:Lr4/y33;

    return-void
.end method

.method public constructor <init>(Lr4/n84;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lr4/n84;->i:I

    iput v0, p0, Lr4/m74;->a:I

    iget v0, p1, Lr4/n84;->j:I

    iput v0, p0, Lr4/m74;->b:I

    iget-boolean v0, p1, Lr4/n84;->k:Z

    iput-boolean v0, p0, Lr4/m74;->c:Z

    iget-object v0, p1, Lr4/n84;->l:Lr4/o33;

    iput-object v0, p0, Lr4/m74;->d:Lr4/o33;

    iget-object v0, p1, Lr4/n84;->m:Lr4/o33;

    iput-object v0, p0, Lr4/m74;->e:Lr4/o33;

    iget-object v0, p1, Lr4/n84;->q:Lr4/o33;

    iput-object v0, p0, Lr4/m74;->f:Lr4/o33;

    iget-object v0, p1, Lr4/n84;->r:Lr4/o33;

    iput-object v0, p0, Lr4/m74;->g:Lr4/o33;

    iget v0, p1, Lr4/n84;->s:I

    iput v0, p0, Lr4/m74;->h:I

    iget-object p1, p1, Lr4/n84;->w:Lr4/y33;

    iput-object p1, p0, Lr4/m74;->i:Lr4/y33;

    return-void
.end method

.method public static synthetic a(Lr4/m74;)I
    .locals 0

    iget p0, p0, Lr4/m74;->a:I

    return p0
.end method

.method public static synthetic b(Lr4/m74;)I
    .locals 0

    iget p0, p0, Lr4/m74;->b:I

    return p0
.end method

.method public static synthetic c(Lr4/m74;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/m74;->c:Z

    return p0
.end method

.method public static synthetic d(Lr4/m74;)Lr4/o33;
    .locals 0

    iget-object p0, p0, Lr4/m74;->d:Lr4/o33;

    return-object p0
.end method

.method public static synthetic e(Lr4/m74;)Lr4/o33;
    .locals 0

    iget-object p0, p0, Lr4/m74;->e:Lr4/o33;

    return-object p0
.end method

.method public static synthetic f(Lr4/m74;)Lr4/o33;
    .locals 0

    iget-object p0, p0, Lr4/m74;->f:Lr4/o33;

    return-object p0
.end method

.method public static synthetic g(Lr4/m74;)Lr4/o33;
    .locals 0

    iget-object p0, p0, Lr4/m74;->g:Lr4/o33;

    return-object p0
.end method

.method public static synthetic h(Lr4/m74;)I
    .locals 0

    iget p0, p0, Lr4/m74;->h:I

    return p0
.end method

.method public static synthetic i(Lr4/m74;)Lr4/y33;
    .locals 0

    iget-object p0, p0, Lr4/m74;->i:Lr4/y33;

    return-object p0
.end method


# virtual methods
.method public j(IIZ)Lr4/m74;
    .locals 0

    iput p1, p0, Lr4/m74;->a:I

    iput p2, p0, Lr4/m74;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/m74;->c:Z

    return-object p0
.end method

.method public final k(Landroid/content/Context;)Lr4/m74;
    .locals 2

    sget v0, Lr4/lc;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    iput v0, p0, Lr4/m74;->h:I

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lr4/lc;->U(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/o33;->r(Ljava/lang/Object;)Lr4/o33;

    move-result-object p1

    iput-object p1, p0, Lr4/m74;->g:Lr4/o33;

    :cond_2
    :goto_0
    return-object p0
.end method
