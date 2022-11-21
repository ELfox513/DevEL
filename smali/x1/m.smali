.class public final Lx1/m;
.super Lx1/x;
.source "SourceFile"


# instance fields
.field public d:Lx1/n;


# direct methods
.method public constructor <init>(Lx1/a0;)V
    .locals 2

    new-instance v0, Lx1/e0;

    invoke-virtual {p1}, Lx1/a0;->u()Ly1/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lx1/e0;-><init>(Ly1/c;)V

    invoke-direct {p0, v0, p1}, Lx1/x;-><init>(Lx1/e0;Lx1/a0;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lx1/m;->d:Lx1/n;

    return-void
.end method


# virtual methods
.method public getType()Ly1/c;
    .locals 1

    invoke-virtual {p0}, Lx1/x;->n()Lx1/e0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/e0;->x()Ly1/c;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "enum"

    return-object v0
.end method

.method public x()Lx1/n;
    .locals 3

    iget-object v0, p0, Lx1/m;->d:Lx1/n;

    if-nez v0, :cond_0

    new-instance v0, Lx1/n;

    invoke-virtual {p0}, Lx1/x;->n()Lx1/e0;

    move-result-object v1

    invoke-virtual {p0}, Lx1/x;->u()Lx1/a0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lx1/n;-><init>(Lx1/e0;Lx1/a0;)V

    iput-object v0, p0, Lx1/m;->d:Lx1/n;

    :cond_0
    iget-object v0, p0, Lx1/m;->d:Lx1/n;

    return-object v0
.end method
