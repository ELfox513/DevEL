.class public Lr6/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr6/n;


# instance fields
.field public final a:Lj5/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj5/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/j<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr6/k;->a:Lj5/j;

    return-void
.end method


# virtual methods
.method public a(Lt6/d;)Z
    .locals 1

    invoke-virtual {p1}, Lt6/d;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lt6/d;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lt6/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lr6/k;->a:Lj5/j;

    invoke-virtual {p1}, Lt6/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj5/j;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onException(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
