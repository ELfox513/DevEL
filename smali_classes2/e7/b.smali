.class public final Le7/b;
.super Le7/e;
.source "SourceFile"


# instance fields
.field public final a:Lk7/g;


# direct methods
.method public constructor <init>(Lk7/g;)V
    .locals 0

    invoke-direct {p0}, Le7/e;-><init>()V

    iput-object p1, p0, Le7/b;->a:Lk7/g;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-object v0, p0, Le7/b;->a:Lk7/g;

    invoke-virtual {v0}, Lk7/g;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le7/b;->a:Lk7/g;

    invoke-virtual {v0}, Lk7/g;->a0()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Le7/b;->a:Lk7/g;

    invoke-virtual {v0}, Lk7/g;->Z()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Le7/b;->a:Lk7/g;

    invoke-virtual {v0}, Lk7/g;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le7/b;->a:Lk7/g;

    invoke-virtual {v0}, Lk7/g;->c0()Lk7/f;

    move-result-object v0

    invoke-virtual {v0}, Lk7/f;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
