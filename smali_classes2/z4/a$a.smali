.class public final Lz4/a$a;
.super Lz4/m0$a;
.source "SourceFile"

# interfaces
.implements Lz4/t1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz4/m0$a<",
        "Lz4/a;",
        "Lz4/a$a;",
        ">;",
        "Lz4/t1;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lz4/a;->z()Lz4/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lz4/m0$a;-><init>(Lz4/m0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lz4/b;)V
    .locals 0

    invoke-direct {p0}, Lz4/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(I)Lz4/a$a;
    .locals 1

    invoke-virtual {p0}, Lz4/m0$a;->o()V

    iget-object v0, p0, Lz4/m0$a;->b:Lz4/m0;

    check-cast v0, Lz4/a;

    invoke-static {v0, p1}, Lz4/a;->A(Lz4/a;I)V

    return-object p0
.end method

.method public final u(Ljava/lang/String;)Lz4/a$a;
    .locals 1

    invoke-virtual {p0}, Lz4/m0$a;->o()V

    iget-object v0, p0, Lz4/m0$a;->b:Lz4/m0;

    check-cast v0, Lz4/a;

    invoke-static {v0, p1}, Lz4/a;->x(Lz4/a;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v(J)Lz4/a$a;
    .locals 1

    invoke-virtual {p0}, Lz4/m0$a;->o()V

    iget-object v0, p0, Lz4/m0$a;->b:Lz4/m0;

    check-cast v0, Lz4/a;

    invoke-static {v0, p1, p2}, Lz4/a;->v(Lz4/a;J)V

    return-object p0
.end method

.method public final x(J)Lz4/a$a;
    .locals 1

    invoke-virtual {p0}, Lz4/m0$a;->o()V

    iget-object v0, p0, Lz4/m0$a;->b:Lz4/m0;

    check-cast v0, Lz4/a;

    invoke-static {v0, p1, p2}, Lz4/a;->B(Lz4/a;J)V

    return-object p0
.end method

.method public final z(I)Lz4/a$a;
    .locals 1

    invoke-virtual {p0}, Lz4/m0$a;->o()V

    iget-object p1, p0, Lz4/m0$a;->b:Lz4/m0;

    check-cast p1, Lz4/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lz4/a;->u(Lz4/a;I)V

    return-object p0
.end method
