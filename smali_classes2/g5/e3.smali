.class public Lg5/e3;
.super Lg5/v5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lg5/b5;)V
    .locals 0

    invoke-direct {p0, p1}, Lg5/v5;-><init>(Lg5/b5;)V

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    return-void
.end method
