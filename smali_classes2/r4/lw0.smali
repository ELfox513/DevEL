.class public final Lr4/lw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/q;


# instance fields
.field public final a:Lr4/ow0;

.field public b:Lr4/u61;

.field public c:Lh3/k0;


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Lr4/fw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lw0;->a:Lr4/ow0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/u61;)Lh3/q;
    .locals 0

    iput-object p1, p0, Lr4/lw0;->b:Lr4/u61;

    return-object p0
.end method

.method public final bridge synthetic c(Lh3/k0;)Lh3/q;
    .locals 0

    iput-object p1, p0, Lr4/lw0;->c:Lh3/k0;

    return-object p0
.end method

.method public final zza()Lh3/r;
    .locals 12

    iget-object v0, p0, Lr4/lw0;->b:Lr4/u61;

    const-class v1, Lr4/u61;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lr4/lw0;->c:Lh3/k0;

    const-class v1, Lh3/k0;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lr4/mw0;

    iget-object v3, p0, Lr4/lw0;->a:Lr4/ow0;

    iget-object v4, p0, Lr4/lw0;->c:Lh3/k0;

    new-instance v5, Lr4/o41;

    invoke-direct {v5}, Lr4/o41;-><init>()V

    new-instance v6, Lr4/ys1;

    invoke-direct {v6}, Lr4/ys1;-><init>()V

    iget-object v7, p0, Lr4/lw0;->b:Lr4/u61;

    new-instance v8, Lr4/kq2;

    invoke-direct {v8}, Lr4/kq2;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lr4/mw0;-><init>(Lr4/ow0;Lh3/k0;Lr4/o41;Lr4/ys1;Lr4/u61;Lr4/kq2;Lr4/gm2;Lr4/gl2;Lr4/fw0;)V

    return-object v0
.end method
