.class public Lu3/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lv3/o;

.field public b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu3/e$a;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lu3/e$a$a;->a:Lv3/o;

    if-nez v0, :cond_0

    new-instance v0, Lv3/a;

    invoke-direct {v0}, Lv3/a;-><init>()V

    iput-object v0, p0, Lu3/e$a$a;->a:Lv3/o;

    :cond_0
    iget-object v0, p0, Lu3/e$a$a;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lu3/e$a$a;->b:Landroid/os/Looper;

    :cond_1
    new-instance v0, Lu3/e$a;

    iget-object v1, p0, Lu3/e$a$a;->a:Lv3/o;

    iget-object v2, p0, Lu3/e$a$a;->b:Landroid/os/Looper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lu3/e$a;-><init>(Lv3/o;Landroid/accounts/Account;Landroid/os/Looper;Lu3/p;)V

    return-object v0
.end method

.method public b(Landroid/os/Looper;)Lu3/e$a$a;
    .locals 1
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "Looper must not be null."

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lu3/e$a$a;->b:Landroid/os/Looper;

    return-object p0
.end method

.method public c(Lv3/o;)Lu3/e$a$a;
    .locals 1
    .param p1    # Lv3/o;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "StatusExceptionMapper must not be null."

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lu3/e$a$a;->a:Lv3/o;

    return-object p0
.end method
