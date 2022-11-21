.class public final Lt4/p;
.super Lu3/e;
.source "SourceFile"

# interfaces
.implements Lm3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/e<",
        "Lu3/a$d$c;",
        ">;",
        "Lm3/b;"
    }
.end annotation


# static fields
.field public static final m:Lu3/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$g<",
            "Lt4/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "Lt4/d;",
            "Lu3/a$d$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "Lu3/a$d$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final k:Landroid/content/Context;

.field public final l:Lt3/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lu3/a$g;

    invoke-direct {v0}, Lu3/a$g;-><init>()V

    sput-object v0, Lt4/p;->m:Lu3/a$g;

    new-instance v1, Lt4/n;

    invoke-direct {v1}, Lt4/n;-><init>()V

    sput-object v1, Lt4/p;->n:Lu3/a$a;

    new-instance v2, Lu3/a;

    const-string v3, "AppSet.API"

    invoke-direct {v2, v3, v1, v0}, Lu3/a;-><init>(Ljava/lang/String;Lu3/a$a;Lu3/a$g;)V

    sput-object v2, Lt4/p;->o:Lu3/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lt3/h;)V
    .locals 3

    sget-object v0, Lt4/p;->o:Lu3/a;

    sget-object v1, Lu3/a$d;->o:Lu3/a$d$c;

    sget-object v2, Lu3/e$a;->c:Lu3/e$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lu3/e;-><init>(Landroid/content/Context;Lu3/a;Lu3/a$d;Lu3/e$a;)V

    iput-object p1, p0, Lt4/p;->k:Landroid/content/Context;

    iput-object p2, p0, Lt4/p;->l:Lt3/h;

    return-void
.end method


# virtual methods
.method public final a()Lj5/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Lm3/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt4/p;->l:Lt3/h;

    iget-object v1, p0, Lt4/p;->k:Landroid/content/Context;

    const v2, 0xcaf1200

    invoke-virtual {v0, v1, v2}, Lt3/h;->h(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lv3/q;->a()Lv3/q$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lt3/d;

    sget-object v2, Lm3/h;->a:Lt3/d;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lv3/q$a;->d([Lt3/d;)Lv3/q$a;

    move-result-object v0

    new-instance v1, Lt4/m;

    invoke-direct {v1, p0}, Lt4/m;-><init>(Lt4/p;)V

    invoke-virtual {v0, v1}, Lv3/q$a;->b(Lv3/m;)Lv3/q$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lv3/q$a;->c(Z)Lv3/q$a;

    move-result-object v0

    const/16 v1, 0x6bd1

    invoke-virtual {v0, v1}, Lv3/q$a;->e(I)Lv3/q$a;

    move-result-object v0

    invoke-virtual {v0}, Lv3/q$a;->a()Lv3/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu3/e;->j(Lv3/q;)Lj5/i;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lu3/b;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v0, v1}, Lu3/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {v0}, Lj5/l;->c(Ljava/lang/Exception;)Lj5/i;

    move-result-object v0

    return-object v0
.end method
