.class public Lv3/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lu3/a$b;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lv3/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/m<",
            "TA;",
            "Lj5/j<",
            "TResultT;>;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:[Lt3/d;

.field public d:I


# direct methods
.method public synthetic constructor <init>(Lv3/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv3/q$a;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lv3/q$a;->d:I

    return-void
.end method

.method public static synthetic f(Lv3/q$a;)Lv3/m;
    .locals 0

    iget-object p0, p0, Lv3/q$a;->a:Lv3/m;

    return-object p0
.end method


# virtual methods
.method public a()Lv3/q;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/q<",
            "TA;TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Lv3/q$a;->a:Lv3/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, Lx3/q;->b(ZLjava/lang/Object;)V

    new-instance v0, Lv3/v0;

    iget-object v1, p0, Lv3/q$a;->c:[Lt3/d;

    iget-boolean v2, p0, Lv3/q$a;->b:Z

    iget v3, p0, Lv3/q$a;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Lv3/v0;-><init>(Lv3/q$a;[Lt3/d;ZI)V

    return-object v0
.end method

.method public b(Lv3/m;)Lv3/q$a;
    .locals 0
    .param p1    # Lv3/m;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/m<",
            "TA;",
            "Lj5/j<",
            "TResultT;>;>;)",
            "Lv3/q$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput-object p1, p0, Lv3/q$a;->a:Lv3/m;

    return-object p0
.end method

.method public c(Z)Lv3/q$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lv3/q$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lv3/q$a;->b:Z

    return-object p0
.end method

.method public varargs d([Lt3/d;)Lv3/q$a;
    .locals 0
    .param p1    # [Lt3/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lt3/d;",
            ")",
            "Lv3/q$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput-object p1, p0, Lv3/q$a;->c:[Lt3/d;

    return-object p0
.end method

.method public e(I)Lv3/q$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lv3/q$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput p1, p0, Lv3/q$a;->d:I

    return-object p0
.end method
